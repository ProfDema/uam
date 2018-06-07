'''
SQL automarker preprocessing
Generate unit tests to be processed by pam.py
'''

import argparse
import importlib
import sys

class QueryTester:
    '''Generates a unittest class with as many unit tests
    as data.sql files are listed in setup.txt
    '''

    def __init__(self):
        pass


class DDLTester:
    '''Generates a unit test class capable of testing
    DDL statements
    '''

    def __init__(self):
        pass


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description = 'SQL automarker.')
    parser.add_argument('uam', metavar='<uam>', type=str,
                       help='uam base folder')
    args = parser.parse_args()
    print(args.uam)
    uam = args.uam
    sys.path.insert(0, uam)
    conf = importlib.__import__('config')
    print(conf.timeout)
