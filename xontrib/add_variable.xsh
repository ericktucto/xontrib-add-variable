import sys
import os
from inspect import isfunction


__all__ = ()
__version__ = '0.1.0'

XONSH_DIR = os.path.expanduser("~") + "/.xonsh"


def import_module_add_variable():
    sys.path.append(XONSH_DIR)
    module = "add_variable"
    return __import__(module)


def add_methods_on_PROMPTFIELDS():
    add_variables = import_module_add_variable()
    for function in dir(add_variables):
        if isfunction(getattr(add_variables, function)):
            $PROMPT_FIELDS[function] = getattr(add_variables, function)


add_methods_on_PROMPTFIELDS()
