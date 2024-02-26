# Cookiecutter Python data science

Other [cookiecutters](../README.md) in this repository.

## Usage

1. Install cookiecutter - find instructions [here](https://cookiecutter.readthedocs.io/en/2.5.0/installation.html#install-cookiecutter)
2. Start a Python data science project by
`cookiecutter https://github.com/reidhin/cookiecutter.git --directory="Python_data_science"`

## Description

This cookiecutter is inspired by [Cookiecutter Data Science](https://drivendata.github.io/cookiecutter-data-science/), but with some notable changes:
* This project structure is targeted towards using `conda` and conda environments;
* This project structure has a more elaborate README describing how to set up the project;
* This project contains an `.env_example` which should be included to tell your audience how to use the `.env` file.
* No options to connect to cloud storage options. Those change to often from project to project in my opinion.