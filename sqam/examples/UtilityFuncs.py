import json 
def nested_level_checker(level, dict):
    # TODO create a fuction that checks the level of 
    # layers in a nested dictionary
    pass
def isValidFields(json_cfg):
    json_keys = ["databasetype", "assignmetnname", "dbname","tables", "attributes", "constraints", "indexes", "triggers","user", "password", "questions", "solutions", "existingunittests"]
    return [x.lower() for x in json_cfg.keys()] == json_keys

def isValidDatabaseType(dbt):
    return dbt == 'PostGreSQL'
def isValidPathtoUam(path):
    # TODO implement the actual functionality later
    return True
def isValidTables(dicOfTables):
    # TODO implement the actual functionality later
    return True
def isValidAttributes(dictOfAttr):
    # TODO implement the actual functionality later
    return True
def isValidConstraints(dictOfConstraints):
    # TODO implement the actual functionality later
    return True
def isValidIndexes(dictOfIndexes):
    # TODO implement the actual functionality later
    return True
def isValidTriggers(dictOfTriggers):
    # TODO implement the actual functionality later
    return True
def isValidPathQuestionsAndData(dictOfQuestions):
    # TODO implement the actual functionality later
    return True
def isValidPathSolutions(dictOfSolutions):
    # TODO implement the actual functionality later
    return True
        