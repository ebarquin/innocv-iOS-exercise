# INNOCV - TECHNICAL TEST
This repository contents the INNOCV thecnical test for a iOS Developer position.


It was developed in XCode 9 with Swift 4 and is basically a CRUD example application. The end points are provided by the company.

I decided to use a pure clean arquitechture, separating managers and interectors from the view. Each endpoint has its own manager and interactor files.


* GetAllUsersFromAPIManager : Gets the users from the API and decode the json.

* DeleteUserManager: Sends an HTTP request to delete the user

* UpdateUserManager: Sends an HTTP request to update the user

* CreateUserManager: Sends an HTTP request to create one user

As all managers are separated, it becomes very easy to modificate any endpoint details.

# MULTI-LANGUAJE SUPPORT
I also implemented multi-languaje support using [NSLocalizedDescription](https://developer.apple.com/documentation/foundation/nslocalizedstring)

# DEPENDECIES
## CocoaPods

#### SwiftyJSON
[SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) is a super-simplified JSON parsing library that gives you clearer syntax than the built-in iOS libraries.

#### Alamofire

[Alamofire](https://github.com/Alamofire/Alamofire) is an HTTP networking library written in Swift.

#### Install Cocoa Pods

- this installs the CocoaPods application
- CocoaPods is a Ruby gem
- do the same to update Cocoa Pods

```bash
$ sudo gem install cocoapods
```

---


#### Creating a Podfile

```
pod init
```


---

#### The Podfile


```ruby
platform :ios, '9.0'
use_frameworks! # Comment this if you're not using Swift 
                # and don't want to use dynamic frameworks

#inhibit_all_warnings!

project 'MyApp.xcodeproj'

target 'MyApp' do
  pod 'SwiftyJSON'
  pod 'KingFisher'
end
```

---

## Install pods

- Install project dependencies according to versions from a Podfile.loc
- creates a Workspace
    - __use the workspace!__

```bash
$ pod install

Analyzing dependencies
Downloading dependencies
Generating Pods project
Integrating client project
...
```

---

## Update / add / remove pods

1. edit Podfile
1. run `pod install` again

---

## Contributing

- If you spot an error / typo / dead link / something missing, please [file an issue](https://github.com/ebarquin/twitterAtabix/issues).
- Pull requests are always welcome ;-)

## LICENSE

MIT - Licence

Copyright (c) 2017 Eugenio Barquin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.