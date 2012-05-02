# -*- coding: utf-8 -*-

#from distutils.core import setup
from setuptools import setup, find_packages

setup(
    name = "cdbookmarks",
    version = "0.0.1",
    description = "Simple directory bookmark tool",
    author = "Jesús Espino",
    author_email = "jespinog@gmail.com",
    url = "https://github.com/jespino/cdbookmarks",
    scripts = ['cdbookmarks', 'cdb.sh'],
    license = "BSD",
    classifiers = [
        'Programming Language :: Python :: 2.7',
        'Development Status :: 4 - Beta',
        'Environment :: Console',
        'License :: OSI Approved :: BSD License',
        'Operating System :: Unix',
    ],
)
