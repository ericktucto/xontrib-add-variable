*********************
Xontrib Add Variable
*********************

Version number: 0.1.0

Author: `Erick Tucto`_

Overview
########

This package allow add new variable.

Installation / Usage
####################

1. To install use pip

.. code-block:: bash

    pip3 install xontrib-add-variable

2. Add on ``~/.xonshrc``

.. code:: python
    :number-lines:

    xontrib load add_variable

Contributing
############

TBD

Example
#######

1. On ``~/.xonsh/add_variable.xsh`` or ``~/.xonsh/add_variable.py``

.. code:: python
    :number-lines:

    from time import strftime

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
.. _Cookiecutter: https://github.com/audreyr/cookiecutter
.. _xontrib: https://github.com/laerus/cookiecutter-xontrib