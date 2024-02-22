## Software Testing With Robot FrameWork 

### For loop
+ For loop test with robot framework
    + Test case
    ```py
        *** Variables ***
        @{First Name}    Bruce     Steve     Peter
        @{Last Name}     Banner    Rogers    Parker
        @{Hero Name}    Hulk    Captain America    Spiderman

        *** Test Cases ***
        Combines two loops
            Log To Console   Full Names with Hero names:
        FOR    ${first}    ${last}    ${hero}    IN ZIP    ${First Name}    ${Last Name}    ${Hero Name} 
            Log To Console    ${first} ${last} = ${hero}  
        END
    ```
![Testcase](/img/4_in_zip.png)
+ Output
    ```py
    ==============================================================================
    Combines two loops                                                    Full Names with Hero names:
    Bruce Banner = Hulk
    Steve Rogers = Captain America
    Peter Parker = Spiderman
    | PASS |
    ------------------------------------------------------------------------------
    Robot Files.4 In Zip                                                  | PASS |
    1 test, 1 passed, 0 failed
    ==============================================================================
    ```
![Output](/img/Console_output.png)

## Example 
+ [Test suite](https://robotframework.org/code/?codeProject=N4IgdghgtgpiBcIDKBLKAHANjABAUQA9otcAmEAGhABMYBnAYwCcV0AXFAezAREpABmKbHQQBtUEOwA5aHERt6bAHRNOAI05t+DborDbEAKhM4kMNhzABzOjhNGAOmAAinBgFdYBiB244AgIAVAAsUO1UNLRwpXHCcCBw6DxRFZ2UM9IzAnNzAgGkYAE8Ad04majsIJjiMcsVqGLUoHDYQ3Bq6Tg8mBlxY5wAlem7e3DzAgGtisoq6VRGevucAGRR1JmqiiZyXXxggtBhnE7AHHCClHABhCDp6exNnVAxsC6vb++ccsTdPbzYvi4YAAujkkCFOCU7F1YAk6PcmH4wDhpqVypVvoEId1MI0AEK4Q5sN6fcYBQZRNg4ABim1gs0mWICOI8eJwhPwAEcPBBMDlLgQ2ABGUgAZgFMCForFzLMkLZBKJTA85JwAFYcABqDU4AC8epwwoADKdLnRqSVUiEcIV0XM5Ug2OUiVLqYEABIQYQ4ADyPRwlM0bDlAEFqI1BdSgpwzM6apG3blfQA3GBMTAYugAQjlADV0ygBNsnS7E0KcCsYDY2jlSOq5QASYCeJg1AwAfUUQoAvobAgBxCxxsvvIWOhXszl4Hl8nLN1vtthdt09nJen3+piBql+tMZrO5sDOc3UgTlVrtHBFGDVHCkY2kUhy37uLzVwHIsGBU92Is4VIAJhDhMH5B8nwyZQm2Aah9j7HIh2pa4eiXHA9kUHJOjZZdzyYKBfD1WDFA4WA5RWThrHnGC4InXFGmkaJp1nflQzsJ0WBsOxAmbIiYGUG9qjXQJwOfY8wFPG47lwNpfBwdA7joOVrnaBhJhucoagYakBxqCwUBsddvX5Lcd2DPd00zOYjxyZSYFU9S2zs7TdKsSjPSMv0AyDaJUwsw9nBAHsQSoWgWDTagAAU1AAKychA2BVGAqDUYMCyYOhgV4AB2ZRjUCoA)
+ [varibale](https://robotframework.org/code/?codeProject=N4IgdghgtgpiBcIBqEBOBLCAjANjAziADQgAmBAxhgA4Au6A9mAiMSAGbp6HwDaonPADlocRAEYA+gGUKEHGgB0qBlga02FJrRhgNiAFRGABCgzZuxowYA6YACTAA4gBkA8gCEAgi8lIvAEriAL7GYcYAKgAW6PjGscYQxgDmOKryxgBuaJi4MACEdo5eQm4RABIAogGSrp4+wQC84caVAI4Arhn46Mlg8XEMdIyQOMZYHbTG+Ayw9LBxUTA41OwdOIp2W2DWkQRTAMIQ+ARWRnYR+8ZHJ8YA6ui0UaY5FgR2LS4MyS3GjnXeXz+ILBD7hL4-FrSWgYMA-LRgOSkdCQehMYwASTiPSg1DwxgA7o9njYQP93IC-IEQqTEmBSMZScVShVqrUKQ1SWCwhDfpV8HJqCifkSnuMIBQANb4BT4KKKSJLfoATwYHWMcn6HVukAWxhw6ElMEZNnJ9SB1NBYAuV1FzyEHSgWBgqHw3OMvPC4gGiWmMOFdIZjhCPog-RROmSLsUMfdjlQBHWtCaLUq2RwXR0LW9AGpjN7jABiYwwdOZ05JajKp7omAAD2oCfwPSY7ukUTVOAZHmN7S6Y3C8cTOGTLUcACYrVCO+sGUJ1MYe61OhlB8Am0nQuFx9tLvhDsdjXbjAEYLQOqh+igM+9+uDvi1T+fLy8b3FNeNjccen0YAzaAwLzmHkbp3mEjhPDAkgJs+YB-pIOh1smzThE4Z7GOUyxpPcDCoF2xheHElxIe6vIRIBBxMDM+JrpB0FnhecGkAh9bJruVwPGKXioMkjq6LQcRhgyT6Ma+HS3mOwB4GAKbhJRHR6MYkEeroyRikJHoPuR1xUQwNFhJhODYQEqgLgAYqgogErhko6VAUAKY8yqFGBxjtp23a9iuA7gVJuhbr5ADMk7sfu9zEq0YCZOgKhgLAilmLk3CkQ+4SVFFMVMPFUyJW8gkJsYjYwJwdZ-oSEUAKTTL0YCbK5ZEUbp+mKsaAD0FXAAAqtI1ShLE8DGB13W9SlPzaZRYDUca4TRG1HXlG4ACylR9fgA3zUtK2hVMx4eB0XC0BiV6vCBxgMOwJ6mVMFlWTZo1AUlElrvIOCSNkrqyWEaE5SdyWuWZbgBJJ70BZiQgtAAAsAL1vWg+BTr8vlljAn3GN9D1vGJ01I2gCOIw1OmTXp2N-MAIPGANjjI3jrRCAAItsdi7AA0jAyrWagpBxNYdjo4Z2F3Lh+GEXsJH1alSkxHERrs7hDIAFbalMMGMXEyn7rCPykvzgGC3hpBcq5vAiZeAC6LQ6zh+vbPJinKS4qnqfSmljY1RN4O6vDcbx2X4ObtGsTTjjSWpUSo+jDtwmKAdITTBMTVNLQ2BcSyi1MTLAIhbEgMYUTHKTIdPKEFB55ZFA6K6MZ1S0xsMWbkmF2H2y7Llp08w4zgBJUlQRCG4Q60UnfdxEk4tHrXZ2FDQheMt0ig24BqZC6LQL+g0UQM3Jh7geJzc+cYBOAmZ7CqBPKpf8Xc9yGF-D6PU8z5Uc-GPkIDBKbJDkBgS+kAACio8swHLggGE4kSAqDULQJALoWzMEQAAdkUAABlfkAA)
+ [FOR LOOPS](https://robotframework.org/code/?codeProject=N4IgdghgtgpiBcIBiB5ASgWgDIHscAcBnEAGhABMZCBjAJwEt8AXenMBEUkAM3oBsqCANqheAgHLQ4iACwB9emDkAvRgDpaOAEY4mXamyYwwexACoLAAgBqEBhC0DCli2YA6YAALAk9WoSZLSVgAX0twywAhWgBXahgI8IBlIwA3BMSABRgjWg9vLAgAoKkwxMiIMDAYWkS0HABzGucIzLsAaxr84AAJGpwS0MSemL52xIBhCGYIRUsAQVgGaghEpPx6SlooSo8PV0sAFSpAqcIqFwsPCZwoLUULpgB3Ab48Ig9E3AajgZuwQg4AQRJCjPiDC5PehMAAWlj6mkskFghHgnxB6ESABJgLx-EwyuEcXwigTscAYf1CZYAJLiSwALRpmXJvnxEOpOMKxWCME5vX6HMs6MS4W+v0s-0BwIiOLxATCxNJYQAvJYcZTNGURZYAKLiAAiHhAIQAumQtvR0uRMpoAFYwaimJixGBkTQ6JjWZqsdiIADsagADFwPbp5rQGsR4MAQu6YABHGJ+GCwEzRoSmkJAA)

+ [List and dictionary](https://robotframework.org/code/?codeProject=N4IgdghgtgpiBcIDCBXAzgFwPZRAGhABMY0BjAJwEsAHDSrMBEfEAM0oBsSEBtUdrgDlocRABUSGAMopKGGADpyWAEZYMLUg3lgNiAFSGABFJgY6YAOZojh-QB0wAJRJYU5UjCPejAaxgAngDuWOSEaEqu7p6OLmhuHl4+AG4QVBAqXBHkUYmOjnZGEphGSBBoJLaGjsUYpeVeAIyOPiYQAUYAEjAcHFhGAOqhHIT5YIW19RU2do4AqhVGADKUJRBghEYAIpSkdAxpAS3eAGIA8k6tACTAABYwygC+rQCSgq0AAsDUARi3DAB9Qi7DDPbzHVrLLCWIr9JAMeJca53B5YR48e7KAGQWAAXSMqyMN0xaJ4OJg+OJqPRHHKGGxInxEIAooItmMQI88PxODBhLAmAAFX7-MAANTSlAyWQUP002hguiYPz+gOBeyMAF4jHwIUZ7OARAb4PqQNQzA8DXg9QbaZgGbBjabqGl-OQrfqwK0DSSHTAnQapNRKMRyFB1gauXrgHrvYbHQhTQAhcgoGL4G0gO308kBkBJ9ZgS34T1x325xMGzooDi+SPWr0+aMGismwPyZL+jON8FZul+vNOaEPNAezPlo2V5AQWgQShegCCsCopAgBscj1xjk5uIIoconcIguUACsYHsEBhUzACMo1BgxSP6IxEAB2BQABhYd-UC-I1gQYAuRAHIAEdZByWBdDQXhcUeIA)
