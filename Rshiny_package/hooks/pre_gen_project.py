import re
import sys

"""
The name of the package should contain only (ASCII) letters, numbers and dot, 
have at least two characters and start with a letter and not end in a dot. 
https://cran.r-project.org/doc/manuals/R-exts.html#The-DESCRIPTION-file
"""

MODULE_REGEX = r'^[a-zA-Z][.a-zA-Z0-9]*[a-zA-Z0-9]$'

package_name = '{{ cookiecutter.package_name}}'
url = "https://cran.r-project.org/doc/manuals/R-exts.html#The-DESCRIPTION-file"

if not re.match(MODULE_REGEX, package_name):
    print('ERROR: The package name ({}) is not a valid R-package name. Please check {} for the rules'.format(
        package_name, url
    ))

    #Exit to cancel project
    sys.exit(1)
