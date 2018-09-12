#
# Author: Donald Kajo
# 
import json 
import pprint
import sys
import config
import logging
from UtilityFuncs import *

logger = logging.getLogger('JsonValidation')
logger.setLevel(logging.DEBUG)

fh = logging.FileHandler('JsonValidation.log')
fh.setLevel(logging.DEBUG)

formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')

fh.setFormatter(formatter)

#adding a fileHandler to the logger (the file handler has a specific formatter to format messages nicely)
logger.addHandler(fh)

try:
    with open(config.path_to_uam) as data_file:
        json_cfg = json.load(data_file)
except Exception:
    logger.error('FATAL ERROR: The path to uam is incorrectly set')
    sys.exit()

if (isValidFields(json_cfg)):
    if (isValidDatabaseType(json_cfg['databaseType'])):
        if (isValidPathtoUam(json_cfg['pathToUam'])):
            if(isValidTables(json_cfg['tables'])):
                if isValidAttributes(json_cfg['attributes']):
                    if isValidConstraints(json_cfg['constraints']):
                        if isValidIndexes(json_cfg['indexes']):
                            if isValidTriggers(json_cfg['triggers']):
                                if isValidPathQuestionsAndData(json_cfg['questions']):
                                    if isValidPathSolutions(json_cfg['solutions']):
                                        # TODO create the Object that loads these feilds
                                        # and pass that object to the code generator
                                        print("done...for now")
                                    else:
                                        logger.info("Paths to the solutions could not be found/were \
                                        improperly formatted")
                                        sys.exit(-10)
                                else:
                                    logger.info("Paths to the questions could not be found/were \
                                    improperly formatted")
                                    sys.exit(-9)
                            else:
                                logger.info("Triggers field was improperly formatted")
                                sys.exit(-8)
                        else:
                            logger.info("Indexes field was improperly formatted")
                            sys.exit(-7)
                    else:
                        logger.info("Constraints feild was improperly formatted")
                        sys.exit(-6)
                else:
                    logger.info("Attributes field was improperly formatted")
                    sys.exit(-5)
            else:
                logger.info("Tables field was improperly formatted")
                sys.exit(-4)
        else:
            logger.info("Path to UAM folder could not be found")
            sys.exit(-3)
    else:
        logger.info("Database type is not there/supported yet")
        sys.exit(-2)
else:
    logging.error('ERROR: The json config file does not have the correct feilds')
    sys.exit(-1)
