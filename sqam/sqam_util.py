import unittest
import psycopg2

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

class Director:
    __builder = None

    def set_builder(self, builder):
        self.__builder = builder

    def get_test(self):
        test = TestBuilder()
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
        student = self.__builder.get_student()
        test.set_student(student)
        aname = self.__builder.get_assignmentName()
        test.set_assignmentName(aname)
        ddl = self.__builder.get_ddl()
        test.set_ddl(ddl)
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
                stmt = 'create database {};'.format(student)
                try:
                    cursor.execute(stmt)
                except Exception as e:
                    print(str(e))
                stmt ='grant all privileges on database {} to {};'.format(student, user)
                try:
                    cursor.execute(stmt)
                except Exception as e:
                    print(str(e))
                try:
                    cursor.close()
                    connection.close()
                except Exception as e:
                    print(str(e))
                conn_template = "dbname='{}' user='{}' host='{}' password='{}'"
                conn_string = conn_template.format(student.lower(), user, host, pwd)
                try:
                    connection = psycopg2.connect(conn_string)
                    if connection:
                        connection.set_session(autocommit=True)
                        cursor = connection.cursor()
                    else:
                        cursor = None
                except Exception as e:
                    print(str(e))
                    connection, cursor = None, None
            else:
                cursor = None
        except psycopg2.DatabaseError:
            connection, cursor = None, None
        test.set_connection(connection)
        test.set_cursor(cursor)  
        stmt = "drop schema if exists {} cascade;create schema {};".format(aname,aname)
        cursor.execute(stmt) 
        return test


class TestBuilder:

    def get_schema(self):
        return self.schema

    def set_schema(self, schema):
        self.schema = schema
        return self

    def get_ddl(self):
        return self.ddl

    def set_ddl(self, ddl):
        self.ddl = ddl
        return self

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

    def get_testdata(self):
        return self.testdata

    def set_testdata(self, testdata):
        self.testdata = testdata 
        return self

    def get_query(self):
        return self.query

    def set_query(self, query):
        self.query = query
        return self

    def get_solution(self):
        return self.solution

    def set_solution(self, solution):
        self.solution = solution
        return self

    def get_connection(self):
        return self.connection

    def set_connection(self, connection):
        self.connection = connection

    def get_cursor(self):
        return self.cursor 

    def set_cursor(self, cursor):
        self.cursor = cursor

    def get_student(self):
        return self.student

    def set_student(self, student):
        self.student = student
        return self

    def get_assignmentName(self):
        return self.assignmentName

    def set_assignmentName(self, aname):
        self.assignmentName = aname
        return self