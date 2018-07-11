import unittest
import psycopg2

class Director:
    __builder = None

    def set_builder(self, builder):
        self.__builder = builder

    def get_test(self):
        test = TestData()
        schema = self.__builder.get_schema()
        test.set_schema(schema)
        dbname = self.__builder.get_dbname()
        test.set_dbname(dbname)
        host = self.__builder.get_host()
        test.set_host(host)
        user = self.__builder.get_user()
        test.set_user(user)
        pwd = self.__builder.get_pwd()
        test.set_pwd(pwd)
        testdata = self.__builder.get_testdata()
        test.set_testdata(testdata)
        query = self.__builder.get_query()
        test.set_query(query)
        solution = self.__builder.get_solution()
        test.set_solution(solution)
        #
        # connect to database
        #
        conn_template = "dbname='{}' user='{}' host='{}' password='{}'"
        conn_string = conn_template.format(dbname, user, host,pwd)
        try:
            connection = psycopg2.connect(conn_string)
            if connection:
                connection.set_session(autocommit=True)
                cursor = connection.cursor()
            else:
                cursor = None
        except psycopg2.DatabaseError:
            connection, cursor = None, None
        test.set_connection(connection)
        test.set_cursor(cursor)     

        return test

class TestData:
    def set_schema(self, schema):
        self.__schema = schema
    def get_schema(self):
        return self.__schema

    def set_dbname(self, dbname):
        self.__dbname = dbname

    def set_host(self, host):
        self.__host = host

    def set_pwd(self, pwd):
        self.__pwd = pwd

    def set_user(self, user):
        self.__user = user

    def set_testdata(self, testdata):
        self.__testdata = testdata
    def get_testdata(self):
        return self.__testdata

    def set_query(self, query):
        self.__query = query
    def get_query(self):
        return self.__query

    def set_solution(self, solution):
        self.__solution = solution
    def get_solution(self):
        return self.__solution

    def set_connection(self, connection):
        self.__connection = connection
    def get_connection(self):
        return self.__connection

    def set_cursor(self, cursor):
        self.__cursor = cursor
    def get_cursor(self):
        return self.__cursor

class Builder:
    def get_schema(self):
        pass

    def get_dbname(self):
        pass

    def get_host(self):
        pass

    def get_pwd(self):
        pass

    def get_user(self):
        pass

    def get_testdata(self):
        pass

    def get_query(self):
        pass

    def get_solution(self):
        pass

class TestA1Builder(Builder):
    def get_schema(self):
        return 'db/a1schema.ddl'

    def get_dbname(self):
        return 'postgres'

    def get_host(self):
        return 'localhost'

    def get_user(self):
        return 'ilirdema'

    def get_pwd(self):
        return 'westmall'

    def get_testdata(self):
        return {'q1': {'d1': 'db/a1q1d1.sql', 'd2': 'db/a1q1d2.sql'}}

    def get_query(self):
        return {'q1': 'db/q1.sql'}

    def get_solution(self):
        return {'q1': 'db/s1.sql'}


class TestA1(unittest.TestCase):

    @staticmethod
    def load_sql(cursor, sqlfile):
        '''
        @param cursor: postgres cursor
        @param schema: relative pathname to schema
        '''
        with open(sqlfile) as sql_file:
            sql_stmts = sql_file.read().replace('\n', ' ')
            for stmt in sql_stmts.split(';'):
                if stmt:
                    try:
                        cursor.execute(stmt)
                    except psycopg2.Error as e:
                        print(e.pgerror)
        return cursor

    def setUp(self):
        director = Director()
        director.set_builder(TestA1Builder())
        self.testdata = director.get_test()
        self.load_sql(self.testdata.get_cursor(), self.testdata.get_schema())

    def testq1d1(self):
        query = self.testdata.get_query()['q1']
        soln = self.testdata.get_solution()['q1']
        qdata = self.testdata.get_testdata()['q1']['d1']
        cursor = self.testdata.get_cursor()
        #
        # load testing data for the query
        #
        self.load_sql(cursor, qdata)
        #
        # run the standard solution
        #
        cursor = self.load_sql(cursor, soln)
        expected_result = cursor.fetchall()
        #
        # run students solution
        #
        cursor = self.load_sql(cursor, query)
        actual_result = cursor.fetchall()
        self.assertEqual(expected_result, actual_result)

    def tearDown(self):
        self.testdata.get_cursor().close()
        self.testdata.get_connection().close()

if __name__ == '__main__':
    unittest.main()
