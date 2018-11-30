import sys
from os.path import expanduser, isfile
import importlib
from inspect import isfunction

__all__ = ()
__version__ = '1.2.0'

XONSH_DIR = expanduser("~") + "/.xonsh"


def import_module_add_variable():
    """
    Import and return ~/.xonsh/add_variable.xsh Module
    """
    sys.path.append(XONSH_DIR)
    return importlib.import_module('add_variable')


def data_add_variable():
    """
    Generate: Return all data of ~/.xonsh/add_variable.xsh Module
    """
    for data in dir(import_module_add_variable()):
        yield data


if __name__ == "xontrib.add_variable":
    # Generate: Filter each attribute and extract only the functions
    if (isfile(XONSH_DIR + '/add_variable.xsh')):
        [function for function in data_add_variable() if isfunction(function)]
    else:
        print("%s/add_variable.xsh doesn't exist, please create it." %
              XONSH_DIR)
