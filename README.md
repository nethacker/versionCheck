# versionCheck

License: (MIT) Copyright (C) 2014 versionCheck Author Phil Chen

## DESCRIPTION:

A BASH function that checks to see if a minimum version requirement is met.
Takes in consideration you can't treat a version number like a floating point.

## Example

```bash

source versionCheck.sh

# First value is what version to check against,
# second is what Ruby version is on the server.

RESULT=$(versionCheck "2.1.0" $(ruby -e 'print RUBY_VERSION'))

# Do what you want upon pass (1) or fail (0) in your code

if [ $RESULT -eq 1 ]; then
    echo "PASSED (Ruby 2.1.1 minimum version requirement)"
else
    echo "FAILED (Ruby 2.1.1 minimum version requirement)"
fi
```
