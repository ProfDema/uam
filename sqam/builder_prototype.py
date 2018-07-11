import unittest

class Director:
    __builder = None

    def set_builder(self, builder):
        self.__builder = builder

    def get_test(self, test_name):
        test = TestA1(test_name)

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


        return test

class TestA1(unittest.TestCase):
    def __init__(self, test_name):
        super(TestA1, self).__init__(test_name)
        self.__schema = None

    def set_schema(self, schema):
        self.__schema = schema

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

    def set_query(self, query):
        self.__query = query

    def set_solution(self, solution):
        self.__solution = solution

    def test_0_0(self):
        self.assertEqual(1,1)

    def test_0_1(self):
        self.assertEqual(2,2)


class Builder:
    def get_schema(self):
        pass

class TestA1Builder(Builder):
    def get_schema(self):
        return 'schema.ddl'

    def get_dbname(self):
        return 'postgres'

    def get_host(self):
        return 'localhost'

    def get_user(self):
        return 'uam'

    def get_pwd(self):
        return '111111'

    def get_testdata(self):
        return 'testdata'

    def get_query(self):
        return 'query'

    def get_solution(self):
        return 'solution'

if __name__ == '__main__':
    suite = unittest.TestSuite()
    testBuilder = TestA1Builder()
    director = Director()
    director.set_builder(testBuilder)
    suite.addTest(director.get_test('test_0_0'))
    print(suite)
    unittest.TextTestRunner(verbosity=3).run(suite)