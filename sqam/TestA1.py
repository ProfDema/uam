import os
import unittest
import psycopg2
from sqam_util import *

class Testa1(unittest.TestCase):
    def setUp(self):
        student = os.getcwd().split('/')[-2]
        director = Director()
        test_builder = TestBuilder()
        test_builder = test_builder.set_dbname('postgres').\
                            set_host('localhost').\
                            set_pwd('westmall').\
                            set_schema('a2data.sql').\
                            set_user('ilirdema').\
                            set_query({'q1': 'q1.sql'}).\
                            set_solution({'q1': 'q1.sql'}).\
                            set_testdata({'q1': {'d1': 'a2data.sql'}}).\
                            set_ddl('a2.ddl').\
                            set_assignmentName('a1').\
                            set_student(student)
        director.set_builder(test_builder)
        self.testdata = director.get_test()
        load_sql(self.testdata.get_cursor(), self.testdata.get_ddl())

    def test_q1_d1(self):
        query = self.testdata.get_query()['q1']
        soln = self.testdata.get_solution()['q1']
        qdata = self.testdata.get_testdata()['q1']['d1']
        cursor = self.testdata.get_cursor()
        #
        # load testing data for the query
        #
        load_sql(cursor, qdata)
        #
        # run the standard solution
        #
        cursor = load_sql(cursor, soln)
        expected_result = cursor.fetchall()
        #
        # run the students solution
        #
        cursor = load_sql(cursor, query)
        actual_result = cursor.fetchall()
        self.assertEqual(sorted(expected_result), sorted(actual_result))

    def tearDown(self):
        self.testdata.get_cursor().close()
        self.testdata.get_connection().close()

if __name__ == '__main__':
    unittest.main()

