from setuptools import setup
from os.path import dirname, abspath, join

_here = abspath(dirname(__file__))
with open(join(_here, 'README.md'), encoding='utf-8') as f:
    long_description = '\n' + f.read()

setup(
    name='xontrib-add-variable',
    version='0.1.7',

    url='https://github.com/ErickTucto/xontrib-add-variable',
    description='This package allow add new variable.',
    long_description=long_description,
    long_description_content_type='text/markdown',

    license='MIT',

    author='Erick Tucto',
    author_email='erick.tucto@outlook.com',    

    packages=['xontrib'],
    package_dir={'xontrib': 'xontrib'},
    package_data={'xontrib': ['*.xsh']},
    platforms='any',
)
