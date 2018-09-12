import unittest
import psycopg2
from sqam_util import *

class Testa1(unittest.TestCase):
    def setUp(self):
        director = Director()
        test_builder = TestBuilder()
        test_builder = test_builder.set_dbname('postgres').\
                            set_host('localhost').\
                            set_student('group_0061').\
                            set_pwd('westmall').\
                            set_schema('a2data.sql').\
                            set_user('ilirdema').\
                            set_query({'q1': 'q1.sql', 'q2': 'q2.sql', 'q3': 'q3.sql', 'q4': 'q4.sql', 'q5': 'q5.sql', 'q6': 'q6.sql', 'q7': 'q7.sql', 'q8': 'q8.sql', 'q9': 'q9.sql', 'q10': 'q10.sql'}).\
                            set_solution({'q1': 'q1sol.sql', 'q2': 'q2sol.sql', 'q3': 'q3sol.sql', 'q4': 'q4sol.sql', 'q5': 'q5sol.sql', 'q6': 'q6sol.sql', 'q7': 'q7sol.sql', 'q8': 'q8sol.sql', 'q9': 'q9sol.sql', 'q10': 'q10sol.sql'}).\
                            set_testdata({'q1': {'d1': 'a2data.sql'}, 'q2': {'d1': 'a2data.sql'}, 'q3': {'d1': 'a2data.sql'}, 'q4': {'d1': 'a2data.sql'}, 'q5': {'d1': 'a2data.sql'}, 'q6': {'d1': 'a2data.sql'}, 'q7': {'d1': 'a2data.sql'}, 'q8': {'d1': 'a2data.sql'}, 'q9': {'d1': 'a2data.sql'}, 'q10': {'d1': 'a2data.sql'}}).\
                            set_ddl('a2.ddl').\
                            set_assignmentName('a1')
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

    def test_q2_d1(self):
        query = self.testdata.get_query()['q2']
        soln = self.testdata.get_solution()['q2']
        qdata = self.testdata.get_testdata()['q2']['d1']
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

    def test_q3_d1(self):
        query = self.testdata.get_query()['q3']
        soln = self.testdata.get_solution()['q3']
        qdata = self.testdata.get_testdata()['q3']['d1']
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

    def test_q4_d1(self):
        query = self.testdata.get_query()['q4']
        soln = self.testdata.get_solution()['q4']
        qdata = self.testdata.get_testdata()['q4']['d1']
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

    def test_q5_d1(self):
        query = self.testdata.get_query()['q5']
        soln = self.testdata.get_solution()['q5']
        qdata = self.testdata.get_testdata()['q5']['d1']
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

    def test_q6_d1(self):
        query = self.testdata.get_query()['q6']
        soln = self.testdata.get_solution()['q6']
        qdata = self.testdata.get_testdata()['q6']['d1']
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

    def test_q7_d1(self):
        query = self.testdata.get_query()['q7']
        soln = self.testdata.get_solution()['q7']
        qdata = self.testdata.get_testdata()['q7']['d1']
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

    def test_q8_d1(self):
        query = self.testdata.get_query()['q8']
        soln = self.testdata.get_solution()['q8']
        qdata = self.testdata.get_testdata()['q8']['d1']
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

    def test_q9_d1(self):
        query = self.testdata.get_query()['q9']
        soln = self.testdata.get_solution()['q9']
        qdata = self.testdata.get_testdata()['q9']['d1']
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

    def test_q10_d1(self):
        query = self.testdata.get_query()['q10']
        soln = self.testdata.get_solution()['q10']
        qdata = self.testdata.get_testdata()['q10']['d1']
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

    def test_c1(self):
        cursor = self.testdata.get_cursor()
        values = get_check_constraint_code(cursor, 'product')
        self.assertTrue(('pid IS NOT NULL',) in values)

    def tearDown(self):
        self.testdata.get_cursor().close()
        self.testdata.get_connection().close()

if __name__ == '__main__':
    unittest.main()

