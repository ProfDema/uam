import unittest
import psycopg2

class Director:
    __builder = None

    def set_builder(self, builder):
        self.__builder = builder

    def get_test(self):
        test = TestData()
        dbname = self.__builder.get_dbname()
        test.set_dbname(dbname)
        host = self.__builder.get_host()
        test.set_host(host)
        user = self.__builder.get_user()
        test.set_user(user)
        pwd = self.__builder.get_pwd()
        test.set_pwd(pwd)
        submission = self.__builder.get_submission()
        test.set_submission(submission)
        tables = self.__builder.get_tables()
        test.set_tables(tables)
        attributes = self.__builder.get_attributes()
        test.set_attributes(attributes)
        constraints = self.__builder.get_constraints()
        test.set_constraints(constraints)
        indexes = self.__builder.get_indexes()
        test.set_indexes(indexes)
        triggers = self.__builder.get_triggers()
        test.set_triggers(triggers)
        schema = self.__builder.get_schema()
        test.set_schema(schema)
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
    def set_dbname(self, dbname):
        self.__dbname = dbname

    def set_host(self, host):
        self.__host = host

    def set_pwd(self, pwd):
        self.__pwd = pwd

    def set_user(self, user):
        self.__user = user

    def set_submission(self, submission):
        self.__submission = submission
    def get_submission(self):
        return self.__submission

    def set_tables(self, tables):
        self.__tables = tables
    def get_tables(self):
        return self.__tables

    def set_attributes(self, attributes):
        self.__attributes = attributes
    def get_attributes(self):
        return self.__attributes

    def set_constraints(self, constraints):
        self.__constraints = constraints
    def get_constraints(self):
        return self.__constraints

    def set_indexes(self, indexes):
        self.__indexes = indexes
    def get_indexes(self):
        return self.__indexes

    def set_triggers(self, triggers):
        self.__triggers = triggers
    def get_triggers(self):
        return self.__triggers

    def set_connection(self, connection):
        self.__connection = connection
    def get_connection(self):
        return self.__connection

    def set_cursor(self, cursor):
        self.__cursor = cursor
    def get_cursor(self):
        return self.__cursor

    def set_schema(self, schema):
        self.__schema = schema
    def get_schema(self):
        return self.__schema

class Builder:
    def get_dbname(self):
        pass

    def get_host(self):
        pass

    def get_pwd(self):
        pass

    def get_user(self):
        pass

    def get_tables(self):
        pass

    def get_attributes(self):
        pass

    def get_constraints(self):
        pass

    def get_indexes(self):
        pass

    def get_triggers(self):
        pass

    def get_submission(self):
        pass

    def get_schema(self):
        pass


class TestBuilder(Builder):
    def get_dbname(self):
        return self.dbname

    def set_dbname(self, dbname):
        self.dbname = dbname
        return self
      
    def get_host(self):
        return self.host

    def set_host(self, host):
        self.host = host
        return self

    def get_user(self):
        return self.user

    def set_user(self, user):
        self.user = user
        return self

    def get_pwd(self):
        return self.pwd

    def set_pwd(self, pwd):
        self.pwd = pwd
        return self 

    def get_submission(self):
        return self.submission

    def set_submission(self, submission):
        self.submission = submission
        return self 

    def get_tables(self):
        return self.tables

    def set_tables(self, tables):
        self.tables = tables 
        return self

    def get_attributes(self):
        return self.attributes

    def set_attributes(self, attributes):
        self.attributes = attributes 
        return self

    def get_constraints(self):
        return self.constraints

    def set_constraints(self, constraints):
        self.constraints = constraints
        return self

    def get_indexes(self):
        return self.indexes

    def set_indexes(self, indexes):
        self.indexes = indexes 
        return self

    def get_triggers(self):
        return self.triggers

    def set_triggers(self, triggers):
        self.triggers = triggers 
        return self

    def get_schema(self):
        return self.schema

    def set_schema(self, schema):
        self.schema = schema
        return self

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
                stmt = stmt.rstrip().lstrip()
                if stmt:
                    try:
                        cursor.execute(stmt)
                    except psycopg2.Error as e:
                        print(e.pgerror)
        return cursor

    def setUp(self):
        director = Director()
        test_builder = TestBuilder()
        test_builder = test_builder.set_dbname('postgres').\
                            set_host('localhost').\
                            set_pwd('westmall').\
                            set_user('ilirdema').\
                            set_submission('a1.ddl').\
                            set_tables({'Performs': [('BASE TABLE',)]}).\
                            set_attributes({'Performs': [{'vID': ['VARCHAR']},\
                                                    {'aID': ['VARCHAR']}]}).\
                            set_constraints({'Performs': {}}).\
                            set_schema('a1').\
                            set_indexes({}).\
                            set_triggers({})

        director.set_builder(test_builder)
        self.testdata = director.get_test()
        self.load_sql(self.testdata.get_cursor(), self.testdata.get_submission())

    def test_tables(self):
        cursor = self.testdata.get_cursor()
        tables = self.testdata.get_tables()
        for table in tables.keys():
            query = "SELECT table_type \
            FROM information_schema.tables \
            WHERE table_name = '{}'".format(table.lower()) 
            #
            # run query
            #
            cursor.execute(query)
            actual_result = cursor.fetchall()
            expected_result = tables[table]
            self.assertEqual(expected_result, actual_result)
        print("test finished")

    def tearDown(self):
        self.testdata.get_cursor().close()
        self.testdata.get_connection().close()
        print("teardown done")

if __name__ == '__main__':
    unittest.main()
