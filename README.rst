*********************
Xontrib Add Variable
*********************

Version number: 1.1.1

Author: `Erick Tucto`_

Overview
########

This package allow add new variable to ``$PROMPT_FIELDS`` and
create new aliases.

Installation / Usage
####################

1. To install use pip

.. code-block:: bash

    pip install xontrib-add-variable

2. Add on ``~/.xonshrc``

Now you can create new variables to $PROMPT on ``~/.xonsh/add_variable.xsh``,
also create new aliases, please see `Example`_ or my `wiki`_

.. code:: python
    :number-lines:

    xontrib load add_variable

Contributing
############

1. `Erick Tucto`_

Example
#######

1. On ``~/.xonsh/add_variable.xsh`` or ``~/.xonsh/add_variable.py``

.. code:: python
    :number-lines:

    from time import strftime
    from xontrib.add_variable.decorators import variable

    @variable
    def timeNow():
        return strftime('%H:%M:%S')

2. On ``~/.xonshrc``

.. code:: python
    :number-lines:

    xontrib load add_variable

    $RIGHT_PROMPT = '{timeNow}'

3. See image

|Terminal|

Credits
#######

This package was created with Cookiecutter_ and the xontrib_ template

.. |Terminal| image:: https://raw.githubusercontent.com/ErickTucto/xontrib-add-variable/master/docs/terminal.png
    :width: 600px
    :alt: terminal.png

.. _`Erick Tucto`: https://github.com/ErickTucto
.. _`issue#1`: https://github.com/ErickTucto/xontrib-add-variable/issues/1
.. _Cookiecutter: https://github.com/audreyr/cookiecutter
.. _xontrib: https://github.com/laerus/cookiecutter-xontrib
.. _wiki: https://github.com/ErickTucto/xontrib-add-variable/wiki