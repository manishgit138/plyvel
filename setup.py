from setuptools import setup
from setuptools.extension import Extension

ext_modules = [
    Extension(
        'plyvel',
        ['plyvel.cpp'],
        libraries=['leveldb', 'snappy'])
]

setup(
    name='plyvel',
    version='0.1dev',
    author="Wouter Bolsterlee",
    author_email="uws@xs4all.nl",
    ext_modules=ext_modules,
)
