'''
SQL Auto Marker (preprocessor).
Author: Donald Kajo (2018), under supervision of Ilir Dema
'''

import unittest
import psycopg2
import functools
import operator
import sys
import argparse
import importlib
#import config
import os
# import config.py
# import json processor


class CodeGenerator:
    """
    CodeGenerator class is resposnible for Unit Test generation

    @param codegen: CodeGenBuilder object, encapsulates properties
                    needed to geenrate a Unit Test
    @param adata: assignment specific data
    """

    def __init__(self, codegen):
        self.__codegen = codegen

    def classSetup(self):
        codegen = self.__codegen
        self.code = [(0,"import unittest"),(0, "import psycopg2")]
        self.code.extend([(0, "from sqam_util import *\n")])
        self.code.extend([(0, "class Test{}(unittest.TestCase):".format(codegen.get_assignmentName())),\
            (1, "def setUp(self):"),\
            (2, "director = Director()"),\
            (2, "test_builder = TestBuilder()"),\
            (2, "test_builder = test_builder.set_dbname('{}').\\".format(codegen.get_dbname())),\
            (7, "set_host('{}').\\".format(codegen.get_host())),\
            (7, "set_student('{}').\\".format(codegen.get_student())),\
            (7, "set_pwd('{}').\\".format(codegen.get_pwd())),\
            (7, "set_schema('{}').\\".format(codegen.get_schemaName())),\
            (7, "set_user('{}').\\".format(codegen.get_user())),\
            (7, "set_query({}).\\".format(codegen.get_query())),\
            (7, "set_solution({}).\\".format(codegen.get_solutions())),\
            (7, "set_testdata({}).\\".format(codegen.get_testdata())),\
            (7, "set_ddl('{}').\\".format(codegen.get_ddl())),\
            (7, "set_assignmentName('{}')".format(codegen.get_assignmentName())),\
            (2, "director.set_builder(test_builder)"),\
            (2, "self.testdata = director.get_test()"),\
            (2, "load_sql(self.testdata.get_cursor(), self.testdata.get_ddl())\n")])

    def queryTests(self):
        codegen = self.__codegen
        for qry in codegen.get_query():
            for dta in codegen.get_testdata()[qry]:
                self.code.extend([(1, "def test_{}_{}(self):".format(qry, dta)),\
                (2, "query = self.testdata.get_query()['{}']".format(qry)),\
                (2, "soln = self.testdata.get_solution()['{}']".format(qry)),\
                (2, "qdata = self.testdata.get_testdata()['{}']['{}']".format(qry, dta)),\
                (2, "cursor = self.testdata.get_cursor()"),\
                (2, "#"),\
                (2, "# load testing data for the query"),\
                (2, "#"),\
                (2, "load_sql(cursor, qdata)"),\
                (2, "#"),\
                (2, "# run the standard solution"),\
                (2, "#"),\
                (2, "cursor = load_sql(cursor, soln)"),\
                (2, "expected_result = cursor.fetchall()"),\
                (2, "#"),\
                (2, "# run the students solution"),\
                (2, "#"),\
                (2, "cursor = load_sql(cursor, query)"),\
                (2, "actual_result = cursor.fetchall()"),\
                (2, "self.assertEqual(sorted(expected_result), sorted(actual_result))\n")])

    def dbobjectTests(self):
        db_constraints = self.__codegen.get_constraints()
        for key in db_constraints:
            typ, table, val = db_constraints[key]
            if typ == 'check': # the only implemented db object so far
                self.code.extend([(1, "def test_{}(self):".format(key)),\
                (2, "cursor = self.testdata.get_cursor()"),\
                (2, "values = get_check_constraint_code(cursor, '{}')".format(table)),\
                (2, "self.assertTrue(('{}',) in values)\n".format(val))])
            
    def finish(self):
        self.code.extend([(1, "def tearDown(self):"),\
            (2, "self.testdata.get_cursor().close()"),\
            (2, "self.testdata.get_connection().close()\n"),\
            (0, "if __name__ == '__main__':"),\
            (1, "unittest.main()\n")])

    def writeToFile(self):
        f = open("Test{}.py".format(self.__codegen.get_assignmentName()), 'w')
        for depth, line in self.code:
            f.write("    "*depth + line + "\n")
        f.close()

class CodeGenBuilder:
    """
    An implementation of Builder interface
    """

    def get_DatabaseType(self):
        return self.DatabaseType
    def set_DatabaseType(self, databasetype):
        self.DatabaseType = databasetype
        return self

    def get_pathToUAM(self):
        return self.pathToUAM
    def set_pathToUAM(self, path):
        self.pathToUAM = path
        return self

    def get_assignmentName(self):
        return self.assignmentName
    def set_assignmentName(self, aname):
        self.assignmentName = aname
        return self

    def get_schemaName(self):
        return self.schemaName
    def set_schemaName(self, schema):
        self.schemaName = schema
        return self

    def get_dbname(self):
        return self.dbname
    def set_dbname(self, dbname):
        self.dbname = dbname
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

    def get_query(self):
        return self.query
    def set_query(self, query):
        self.query = query
        return self

    def get_solutions(self):
        return self.solutions
    def set_solutions(self, solutions):
        self.solutions = solutions
        return self

    def get_testdata(self):
        return self.testdata
    def set_testdata(self, testdata):
        self.testdata = testdata
        return self

    def get_ExistingUnittests(self):
        return self.ExistingUnittests
    def set_ExistingUnittests(self, eut):
        self.ExistingUnittests = eut
        return self

    def get_student(self):
        return self.student 
    def set_student(self, student):
        self.student = student
        return self

    def get_ddl(self):
        return self.ddl 
    def set_ddl(self, ddl):
        self.ddl = ddl
        return self

if __name__ == "__main__":
    #
    # at this point instantiate a json object
    # all hardcoded values below will be read from json object
    # the ansatz for db objects is:
    # dict
    #    key=unique, teacher defined test ID
    #    value=list of tuples ('type', 'relation', 'value')
    #    (relation may be just empty string if not needed)
    #
    codegen = CodeGenBuilder()
    codegen.set_assignmentName('a1').\
        set_dbname('postgres').\
        set_DatabaseType('PostgreSQL').\
        set_host('localhost').\
        set_student('correct').\
        set_pwd('westmall').\
        set_user('ilirdema').\
        set_schemaName('a2data.sql').\
        set_query({'q1': 'q1.sql', 'q2': 'q2.sql', 'q3': 'q3.sql', 'q4': 'q4.sql', 'q5': 'q5.sql',\
                  'q6': 'q6.sql', 'q7': 'q7.sql', 'q8': 'q8.sql', 'q9': 'q9.sql', 'q10': 'q10.sql'}).\
        set_solutions({'q1': 'q1sol.sql', 'q2': 'q2sol.sql', 'q3': 'q3sol.sql', 'q4': 'q4sol.sql',\
                       'q5': 'q5sol.sql', 'q6': 'q6sol.sql', 'q7': 'q7sol.sql', 'q8': 'q8sol.sql',\
                      'q9': 'q9sol.sql', 'q10': 'q10sol.sql'\
                      }).\
        set_testdata({'q1': {'d1': 'a2data.sql'},\
                      'q2': {'d1': 'a2data.sql'},\
                      'q3': {'d1': 'a2data.sql'},\
                      'q4': {'d1': 'a2data.sql'},\
                      'q5': {'d1': 'a2data.sql'},\
                      'q6': {'d1': 'a2data.sql'},\
                      'q7': {'d1': 'a2data.sql'},\
                      'q8': {'d1': 'a2data.sql'},\
                      'q9': {'d1': 'a2data.sql'},\
                      'q10': {'d1': 'a2data.sql'},\
                      }).\
        set_constraints({'c1': ('check', 'product', 'pid IS NOT NULL')}).\
        set_ddl('a2.ddl').\
        set_student(os.getcwd().split('/')[-2])
    cg = CodeGenerator(codegen)
    cg.classSetup()
    cg.queryTests()
    cg.dbobjectTests()
    cg.finish()
    cg.writeToFile()
