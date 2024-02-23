## To make sure you have pip installed, run pip3 --version :
```py
Result 
pip 24.0 from /Library/Frameworks/Python.framework/Versions/3.12/lib/python3.12/site-packages/pip (python 3.12)
```

## Robotframework installation
+ [Robotframework installation guide](https://pypi.org/project/robotframework/)

```py
# Install the latest version 
pip3 install robotframework
# Install a specific version
pip3 install robotframework==5.0
# Install downloaded package 
pip3 install robotframework-5.0.1-py3-none-any.whl
# Uninstall
pip3 uninstall robotframework
```
### To verify installation 
```py
To verify installation 
run
robot --version
result 
Robot Framework 7.0 (Python 3.12.2 on darwin)
```
### Quick Start Guide
[Quick Start Guide](https://github.com/robotframework/QuickStartGuide/blob/master/QuickStart.rst)
+ Introduces the most important features of Robot Framework and acts as an executable demo.

### Robot Framework demo
[Robot Framework demo](https://github.com/robotframework/RobotDemo)
+ Simple example test cases. Demonstrates also creating custom test libraries.
+ For Robot Framework installation
```py
    pip3 install robotframework-seleniumlibrary
    pip3 uninstall robotframework-seleniumlibrary
    pip3 install --upgrade robotframework-selenium2library
```

### Web testing demo
[Web testing demo](https://github.com/robotframework/WebDemo)
+ Demonstrates how to create tests and higher level keywords. The system under test is a simple web page that is tested using [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary).


## Install text file in Webdemo folder
```py
    pip3 install -r requirements.txt
```

### Install from GitHub for robot framework and selenium library
+ For mac users
    + Directly from the GitHub
   ```py 
        pip3 install git+https://github.com/robotframework/SeleniumLibrary.git 
   ```


### For running the demo
```py 
python3 demoapp/server.py
```

### For installing webdrivermanager
```py
    pip3 install webdrivermanager
    webdriver-manager chrome --linkpath /usr/local/bin
    webdriver-manager firefox chrome --linkpath /usr/local/bin
```

###


## Test data syntax
+ Most common test data format
    + [space separated format](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#space-separated-format)
        + where keywords and arguments are separated with two or more spaces.
    + [pipe separated format](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#pipe-separated-format)
        + where the separator is the pipe character | surrounded with spaces ( | )
    +  [reStructuredText](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#restructuredtext-format)
        + Also test data formatted as reStructuredText  files are supported.

## Standard Library keywords in Robot framework
+ Standard libraries need to be imported, but not installed. 
+ [BuiltIn keywords](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html)
    + [Evaluating expressions](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html#Evaluating%20expressions)
    + [Collections](https://robotframework.org/robotframework/latest/libraries/Collections.html)
        + A library providing keywords for handling lists and dictionaries.
    + [Process](https://robotframework.org/robotframework/latest/libraries/Process.html)
        + Robot Framework library for running processes.
    + e.tc.
    + [User keywords arguments](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#user-keyword-arguments)
        + Arguments are normally specified with the [Arguments] setting, and argument names use syntax ${arg1}.

### Robot Framework User Guide
[Getting started](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#toc-entry-1)



### Loop statement in Robot Framework User Guide
+ [For Loop](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#for-loops)
+ [FOR-IN-RANGE loop](https://docs.python.org/3/library/functions.html#func-range)
    + Used when a loop is needed to execute a certain number of times. 
+ [FOR-IN-ENUMERATE loop](https://docs.python.org/3/library/functions.html#enumerate)
    + Used to keep track of the current index while looping over a list. 
+ [FOR-IN-ZIP loop](https://docs.python.org/3/library/functions.html#zip)
    + Used to loop over several related lists, together. 

## Creating test libraries
Test libraries are the key element to actual testing using Robot Framework. We have earlier used existing external libraries like Selenium Library and standard libraries bundled into core like BuiltIn.

But often we still need to create our own libraries. That is done using Robot Framework's library API using Python. It is also possible to use C with Python C API.

There are three test library APIs in Robot Framework:

Static API, explained hereafter, having a module or class with methods, mapped directly to keyword names, using arguments implemented and reporting exceptions and logging to standard output and return values.
Dynamic API, having a library or class, which can dynamically get the names of the keywords and the methods they execute at runtime. 
Hybrid API, having a library or class, which dynamically implements keywords, but otherwise implemented as static API.
Test library name comes from the filename of the Python module or class where it is implemented. For example MyConnection.py creates a MyConnection named library.

Arguments for libraries are specified in the Settings section. Arguments listed are passed to its constructor and the number of arguments must match.

*** Settings ***
Library    MyConnection     127.0.0.1    ${PORT}
MyConnection.py:

class MyConnection:

    def __init__(self, host, port=80):
        self._conn = Connection(host, int(port))

    def send_message(self, message):
        self._conn.send(message)

+ Library attributes can be used to control:
    + when libraries are created (ROBOT_LIBRARY_SCOPE='TEST'|'SUITE'|'GLOBAL'),
    + what is the library version (ROBOT_LIBRARY_VERSION)
    + or the documentation format (ROBOT_LIBRARY_DOC_FORMAT='ROBOT'|'HTML'|'TEXT'|'reST'). 

Also the library can be registered as a listener with an attribute (ROBOT_LIBRARY_LISTENER). All these arguments can be easily configured with @library decorator from  robot.api.deco class:

from robot.api.deco import library
from example import Listener
@library(scope='TEST', version='1.22', doc_format='ROBOT', listener=Listener())
class Example:
    # class implementation

## keywords
Keywords
Using static API, implemented keywords are generated from methods excluding methods and functions starting with an underscore (_). For example, the library Example implements only keyword Keyword.

class Example:

    def keyword(self, arg):
        return self._helper_method(arg)

    def _helper_method(self, arg):
        return arg.upper()
Automatic keyword discovery can be set off with the attribute ROBOT_AUTO_KEYWORDS=False or using the previous @library decorator which also sets it false as default. In this case only keywords with @keyword decorator become as keywords:

from robot.api.deco import keyword, library

@library
class Example:

    @keyword
    def this_is_keyword(self):
        pass

    def this_is_not_keyword(self):
        pass
Other way round, using decorator @not_keyword can be used to mark methods not to become as keywords when using automatic keyword discover:

from robot.api.deco import not_keyword

class Example:

    def this_is_keyword(self):
        pass

    @not_keyword    
    def this_is_not_keyword(self):
        pass
You may have noticed that keyword names are not exactly the same as method names. That is because the name comparison is case-insensitive and also spaces and underscores are ignored. Therefore method this_is_keyword can be used as keyword This Is Keyword (or multiple other versions) in the test data.

If you want to set a custom name to a keyword, you can use the @keyword('custom name') decorator or if you need to set tags, you can use it too:

from robot.api.deco import keyword

class Example:

    @keyword('Custom Keyword', ['tag1', 'tag2'])
    def this_is_keyword(self):
        pass
Keywords can have zero or multiple arguments. Amount of arguments comes directly from the method implementing the keyword. Amount of arguments must be exactly the same and default values can be given in the method signature. If default values are given, then those arguments are optional:

```py
*** Test Cases ***
Defaults
    Multiple Defaults    required arg    optional 1    optional 2

def multiple_defaults(arg1, arg2='default 2', arg3='default 3'):
    print("Got arguments %s, %s and %s" % (arg1, arg2, arg3))

There are also some other ways to give a variable number of arguments. Robot Framework supports Python *varargs and **kwargs syntaxes:
```
 
```py
*** Test Cases ***
Varargs
    Any Arguments
    Any Arguments    arg 1    arg 2    arg 3    # Prints 'arg 1 arg 2 arg 3 '
    Example Keyword    foo=22    bar=42    # Prints 'foo 22 bar 42'.

def any_arguments(*args):
    print("Got arguments:")
    for arg in args:
        print(arg)

def example_keyword(**stuff):
    for name, value in stuff.items():
        print(name, value)
```
And there is also support for Python's keyword-only arguments and positional-only arguments. Much more from arguments and argument conversions can be read from the Robot Framework User Guide. 

## Listener interface

As earlier mentioned the test library can be registered as a listener. Listeners are classes or modules which receive notifications about test execution. Listeners that monitor the test execution are taken into use from the command line with the --listener option.

Arguments to the listener are given after the name (or path) using a colon (:) or  semicolon (;)  as a separator:

```py
robot --listener Listener:8270:false

class Listener:
    def __init__(self, port: int, log=True):
        self.port = port
        self.log = log
```
There are two listener interface versions supported. A listener must have an attribute 'ROBOT_LISTENER_API_VERSION with value 2 or 3.' 

Listener versions 2 and 3 have mostly the same methods, but the arguments they accept are different. Listener version 3 does not have all the methods that the listener version 2 has, but it can directly query information and change the model objects.

Example that uses the listener version 2:
```py
"""Listener that stops execution if a test fails."""
ROBOT_LISTENER_API_VERSION = 2
def end_test(name, attrs):
    if attrs['status'] == 'FAIL':
        print('Test "%s" failed: %s' % (name, attrs['message']))
        input('Press enter to continue.')
```
+ Same example that uses the listener version 3:
```py
"""Listener that stops execution if a test fails."""
ROBOT_LISTENER_API_VERSION = 3
def end_test(data, result):
    if not result.passed:
        print('Test "%s" failed: %s' % (result.name, result.message))
        input('Press enter to continue.')
```
+ A test library can register a listener by using the ROBOT_LIBRARY_LISTENER attribute. The value of this attribute may be a totally independent listener or the library itself can act as a listener:

```py
class LibraryAsListener:
    ROBOT_LIBRARY_SCOPE = 'SUITE'
    ROBOT_LISTENER_API_VERSION = 2

    def __init__(self):
        self.ROBOT_LIBRARY_LISTENER = self
    def _end_suite(self, name, attrs):
        print('Suite %s (%s) ending.' % (name, attrs['id']))
```

