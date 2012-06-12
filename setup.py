# -*- coding: utf-8 -*-

from setuptools import setup, find_packages

setup(
    name = "cdbookmarks",
    version = "0.0.2",
    description = "Simple directory bookmark tool",
    author = "Jesús Espino",
    author_email = "jespinog@gmail.com",
    url = "https://github.com/jespino/cdbookmarks",
    scripts = ['cdbookmarks', 'cdb.sh', 'cdb_completion.bash'],
    license = "BSD",
    classifiers = [
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3.0',
        'Programming Language :: Python :: 3.1',
        'Programming Language :: Python :: 3.2',
        'Development Status :: 4 - Beta',
        'Environment :: Console',
        'License :: OSI Approved :: BSD License',
        'Operating System :: Unix',
    ],
)
