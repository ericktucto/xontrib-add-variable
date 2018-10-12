class alias():
    def __init__(self, name):
        if callable(name):
            aliases[name.__name__] = name
        else:
            self.name = name

    def __call__(self, func):
        aliases[self.name] = func


class variable():
    def __init__(self, name):
        if callable(name):
            $PROMPT_FIELDS[name.__name__] = name
        else:
            self.name = name

    def __call__(self, func):
        $PROMPT_FIELDS[func.__name__] = func
