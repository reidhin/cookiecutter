# Cookiecutter Rshiny package

Other [cookiecutters](../README.md) in this repository.

## Usage

1. Install cookiecutter - find instructions [here](https://cookiecutter.readthedocs.io/en/2.5.0/installation.html#install-cookiecutter)
2. Start a Rshiny package by
`cookiecutter https://github.com/reidhin/cookiecutter.git --directory="Rshiny_package"`
3. Optionally initialise git using `usethis::use_git()`
4. It is recommended to add a license using `usethis::use_cc0_license()` and friends to overwrite `LICENSE.md`.
5. Add documentation using `devtools::document()`
6. Build README using `devtools::build_readme()`
7. The newly created package can be checked by using devtools: `devtools::check()`

## Description

This cookiecutter is inspired by devtools as pointed out in the [R packages](https://r-pkgs.org/) book.

css-file

