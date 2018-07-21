import xonsh
import sys
import os


__all__ = ()
__version__ = '0.1.0'


def import_module_add_variable():
    xonsh_dir = os.path.expanduser("~")+"/.xonsh"
    sys.path.append(xonsh_dir)
    module = "add_variable"
    return __import__(module)


def add_methods_on_PROMPTFIELDS():
    add_variables = import_module_add_variable()
    exception = ['__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__']
    for function in dir(add_variables):
        if function in exception:
            continue
        $PROMPT_FIELDS[function] = getattr(add_variables, function)

add_methods_on_PROMPTFIELDS()