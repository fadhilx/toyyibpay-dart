# toyyibpay_sdk 
[![Pub Version](https://img.shields.io/pub/v/toyyibpay_sdk?color=%2335d9ba&style=flat-square)](https://pub.dev/packages/toyyibpay_sdk)

unofficial ToyyibPay SDK for dart

> *toyyibpay sdk* require **SecretKey** to access the **API**, that means *toyyibpay sdk* only suitable for **Server** application, Consider the **consequences** of using it on **Front-End** Application, you secret key must remain secret

## Installation

on `pubspec.yaml`

```yaml
dependencies:
  toyyibpay_sdk: 

```

## What?, Why?, How?
### What
toyyibpay sdk for you to call toyyibpay endpoint easily
### Why
#### Problem
you may be want to build a dart server, but to integrate with toyyibpay api must be hard as the docs is written in `php` 

#### Solution
toyyibpay dart sdk already turn the api reference to sdk application, so you just can only worry about dart code.

### How
this sdk provide you functions of toyyibpay api

#### Example
```dart
void main() async {
  ToyyibPay toyyibpay = ToyyibPay("YOUR_SECRET_KEY_HERE", sandbox: true); // sandbox is optional, its for sandbox mode, set it to false or remove it if you want to use production link instead

  var banks = await toyyibpay.getBank(); /// Read [getBank](https://toyyibpay.com/apireference/#gb)

  print(banks); // instance of Banks
  // ...
}
```

Read:
 - [ToyyibPay](/lib/src/toyyibpay_dart_base.dart)
 - [getBank](/lib/src/extensions/general.dart)

## Contents
- [toyyibpay_sdk](#toyyibpay_sdk)
  - [Installation](#installation)
  - [What?, Why?, How?](#what-why-how)
    - [What](#what)
    - [Why](#why)
      - [Problem](#problem)
      - [Solution](#solution)
    - [How](#how)
      - [Example](#example)
  - [Contents](#contents)
  - [Usage](#usage)
    - [Declaration](#declaration)
  - [Support](#support)
    - [Documentation](#documentation)
    - [Bug/Error](#bugerror)
    - [Feature request](#feature-request)
    - [Contribute](#contribute)
    - [Or](#or)


## Usage
### Declaration
```dart
 var toyyibpay = ToyyibPay("YOUR_SECRET_KEY_HERE", sandbox: true);
```

## Support
I'm open contribution for documentation, bug report, code maintenance, etc. properly submit an issue or send a pull request.

### Documentation
any typos, grammar error, unintended word, or ambiguous meaning. you can PR. *or maybe create an issue*. **this is the one i really need your help**

### Bug/Error
any bugs, unintended word comments, confusing variable naming. you can create an issue, *but also a PR really appreciated*.

### Feature request
any missing feature, cool feature, like prefix json key command, or dynamic changing. you can create an issue, or *write a dart extension for it*.

### Contribute
if you want to help maintain this library, kindly read [Contributing.md](CONTRIBUTING.md).

### Or
you can buy me a coffee:

[![Donate Now](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=UNME938XE8XJC&source=url)<br>
[<img src='https://www.iklanlah.com/images/toyyibpay-widget-sm-p.png' alt='ToyyibPay' height='60'/>](https://toyyibpay.com/fadhilx-open-source)<br>
Thanks for your support.
