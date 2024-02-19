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

### Web testing demo
[Web testing demo](https://github.com/robotframework/WebDemo)
+ Demonstrates how to create tests and higher level keywords. The system under test is a simple web page that is tested using [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary).