import sys
import os
from inspect import isfunction
import importlib

__all__ = ['variable', 'alias']
__version__ = '0.1.0'

XONSH_DIR = os.path.expanduser("~") + "/.xonsh"


def decorator(dec):
    def wrapper(func):
        g = dec(func)
        g.__decorator__ = dec.__name__
        return g
    wrapper.name = dec.__name__
    return wrapper


@decorator
def alias(func):
    aliases[func.__name__] = func
    return func


@decorator
def variable(func):
    $PROMPT_FIELDS[func.__name__] = func
    return func


def import_module_add_variable():
    sys.path.append(XONSH_DIR)
    return importlib.import_module('add_variable')


def run():
    add_variable = import_module_add_variable()
    for function in dir(add_variable):
        if isfunction(getattr(add_variable, function)):
            getattr(add_variable, function)

if __name__ == "xontrib.add_variable":
    run()
