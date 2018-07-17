from setuptools import setup

setup(
    name='xontrib-add-variable',
    version='0.1.0',
    url='https://github.com/ErickTucto/xontrib-add-variable',
    license='MIT',
    author='Erick Tucto',
    author_email='erick.tucto@outlook.com',
    description='This package allw add new variable.',
    packages=['xontrib'],
    package_dir={'xontrib': 'xontrib'},
    package_data={'xontrib': ['*.xsh']},
    platforms='any',
)
