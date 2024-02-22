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