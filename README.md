Xontrib Add Variable
===============================

version number: 0.1.0

author: [Erick Tucto]

Overview
--------

This package allow add new variable.

Installation / Usage
--------------------

To install use pip:

```bash
pip3 install xontrib-add-variable
```

Add on `~/.xonshrc`

```python
xontrib load add_variable
```

Contributing
------------

TBD

Example
-------

On `~/.xonsh/add_variables.xsh` or `~/.xonsh/add_variables.py`

```python
from time import strftime

def timeNow():
return strftime('%H:%M:%S')

```

On `~/.xonshrc`

```python
xontrib load add_variable

$RIGHT_PROMTP = '{timeNow}'
```

Credits
---------

This package was created with [Cookiecutter] and the [xontrib] template.

[Cookiecutter]: https://github.com/audreyr/cookiecutter
[xontrib]: https://github.com/laerus/cookiecutter-xontrib
[Erick Tucto]: https://github.com/ErickTucto