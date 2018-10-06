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
