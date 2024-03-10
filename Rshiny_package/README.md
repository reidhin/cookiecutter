# Cookiecutter Rshiny package

Other [cookiecutters](../README.md) in this repository.

## Usage

First, create the folder structure for an Rshiny package:

1. Install cookiecutter - find instructions [here](https://cookiecutter.readthedocs.io/en/2.5.0/installation.html#install-cookiecutter)
2. Start a Rshiny package by
`cookiecutter https://github.com/reidhin/cookiecutter.git --directory="Rshiny_package"`

Now the project can be opened in R-studio and the following commands can be executed:
1. The packages `devtools` and `usethis` need to be installed
2. Optionally initialise git using `usethis::use_git()`
3. It is recommended to add a license using `usethis::use_cc0_license()` or any of its friends to overwrite `LICENSE.md`. 
Options for the licenses are documented [here](https://www.r-project.org/Licenses/).
4. Add documentation using`devtools::document()`
5. Build README using`devtools::build_readme()`
6. The newly created package can be checked by using devtools: `devtools::check()`

## Further guidelines

One can publish the app on`shinyapps.io`by using the`rsconnect`package as follows`rsconnect::deployApp()`.

The flavicon can be found in the folder`inst\dashboard\www`.

The css-style file can be found in the folder`inst\dashboard\www`.

## Description

This cookiecutter is inspired by devtools as pointed out in the [R packages](https://r-pkgs.org/) book 
and by chapter 20 of the book on [mastering Shiny](https://mastering-shiny.org/scaling-packaging.html).


