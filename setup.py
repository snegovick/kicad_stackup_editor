import os
from setuptools import setup

# Utility function to read the README file.
# Used for the long_description.  It's nice, because now 1) we have a top level
# README file and 2) it's easier to type in the README file than to put a raw
# string in below ...
def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(
    name = "kicad-stackup-editor",
    version = "1",
    author = "Konstantin Kirik (snegovick)",
    author_email = "snegovick@uprojects.org",
    description = ("Stackup editor for KiCAD EDA."),
    license = "MIT",
    keywords = "KiCAD, stackup, CAD",
    url = "http://snegovick.me",
    scripts=["kicad-stackup-editor"],
    long_description=read('README.md'),
    dependency_links = [],
    install_requires = ["cairo", "gi"],
    classifiers=[
        "Development Status :: 4 - Beta",
        "License :: OSI Approved :: MIT License",
        "Intended Audience :: Developers",
        "Intended Audience :: Manufacturing",
        "Operating System :: POSIX :: Linux",
        "Operating System :: MacOS :: MacOS X",
        "Programming Language :: Python",
        "Topic :: Scientific/Engineering :: Electronic Design Automation (EDA)"
    ],
)

