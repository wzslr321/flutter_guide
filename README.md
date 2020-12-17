<h2 align = "center"> Flutter starter guide for newbies </h1>
<p align = "center">
  <i>
     It is intended for everyone who is <b>new or intermediate </b> in Flutter. It covers its most useful widgets and  concepts.
     First part of the tutorial shows examples with code sniipets, and defintions to make everything <b> as clear as possible. </b>
     Second part sums up all the content introduced before and shows how to create <b> multi-screen application with user's authorization </b> step-by-step.
     Code associated to the guide can be found <a target="blank" href = "https://github.com/wzslr321/flutter_guide"> here </a>.
     <b>Every pull-request and help to improve this repository is welcome and really appreciated.</b>
  </i>
</p>

---

<p align="center">
  Found it useful? Want more updates?
</p>

<p align = "center">
  <b> <i> Show your suport by giving a :star: </b> </i>
</p>

---

<b> Table of Contents </b>
* Introduction 
  * Before start
  * Terminal commands
  * What are Stateless and Stateful widgets 
  * How to use iOS-style widgets
* Widgets
  * Table of most useful widgets is located below the Introduction
* Packages usage
  * Pubspec.yaml file description 
  * pub.dev usage
* Upload own fonts and images
* Routes
* State management 
  * Stateful widget 
  * Providers
* HTTP requests
  * Display JSON data on the screen 
  * Authorization with Firebase


***

## Introduction 

<p> I assume that you have already installed flutter and device/emulator configured, If not, check how to do it <a href ="https://flutter.dev/docs/get-started/install"> here </a>

<br/>

### Before start

I really recommend to get basic knowledge in <b> Dart </b> language before before proceeding with this guide.
Trying to learn Flutter without any knowledge of the Dart lang is very common mistake, which makes it harder. 
<br/>
Here are two sites I do recommend to get started with: 
* <a target="blank" href="https://dart.dev/guides"> Official Dart site </a>
* <a target="blank" href="http://jpryan.me/dartbyexample/"> DartByExample </a> - really cool if you have experience with any other language


#

### Commands:

* `flutter create app_name` --> Creates a new flutter project, space should always be replaced with `_`
* `flutter doctor` --> Helps to diagnose issues with setup. 
* `flutter run` --> Builds an application and run it on your configured device or emulator. 
* `flutter pub get` --> Installs new packages, will be useful in <i> Packages Usage </i> section.
* `Shift + R` --> Hot restart - used in the same way as reload, fully resets application - recommended when bigger changes have been made
* `R` --> Hot reload - keyboard shortcut available in terminal when application is running, reloads the app

> Depending on what IDE you are using, the commands above may be accessible as icons, if you have flutter extension. More about it can be found <a target="blank"  href="https://flutter.dev/docs/get-started/editor?tab=androidstudio"> here </a> 

#

### Stateless and Stateful widgets

<br/>

<p> 
  <b> Stateless </b> widget is immutable, there is no possibility to use `setState` function and change content of the screen. It is built once, and stays as it       is - cannot change its state during the runtime of the app, in simple words, it can't be redrawn during the runtime.
</p>

<b> Example: </b> 

```dart
import 'package:flutter/material.dart';

class ClassNameGoesHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello world!");
  }
}
```

<br/>

First line `import 'package:flutter/material.dart'` is required, it gives a possibility to use Material widgets and to create Material UI design. Stateless widget returns a widget tree, more about it in the next section. 

#

  <b> Stateful </b> widget lets you display data that changes and update UI. Simplest method to do it is `setState` function, when it is triggered it acts like: <i> "Hey, something changed, rebuild is needed!". </i> It can be triggered in, for example `GestureDetector` widget.


<b> Example: </b> 

```dart
import 'package:flutter/material.dart';

class ClassNameGoesHere extends StatefulWidget {
  @override
  _ClassNameGoesHereState createState() => _ClassNameGoesHereState();
}

class _ClassNameGoesHereState extends State<ClassNameGoesHere> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          count++;
        });
      },
      child: Text("$count"),
    );
  }
}
```

<br/>

  In the code above we use basic Stateful WIdget skeleton, which is always the same, so don't be scared. We declare variable count of type int, which by default is equal to 0. We display it as a child of <b> Gesture detector </b> in <b> Text </b> widget. GestureDetector lets us to use `onTap()` function where we decided to use `setState` function mentioned before. It tells the flutter *"Hey! variable count changed!"*. It notes this change and rebuilds data showing us a number increased by 1 with every tap!

<br/>

#

### How to use iOS-style widgets

<br/>

> <i> "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase." </i>
<br/>

Although, it gives a possibility to use different widgets on Android and iOS. With usage of `dart:io` package, we are able to check, on what device app is actually running. You can find more about how to do it <a href="https://api.dart.dev/stable/2.10.4/dart-io/Platform-class.html"> here </a>.
In our code we can than use iOS style widgets <a href ="https://flutter.dev/docs/development/ui/widgets/cupertino"> Cupertino </a>. Of course it doesn't mean that we have to check OS before every single widget, but just when we want to. 
<p>
Unfortunetely it is impossible to test an application on iOS and Android without having both MacOS and Linux/Windows, so in this guide only <i> Material </i> widgets will be shown.
</p>

***

## Widgets 

<br/>
<p align = "center"> <b> <i> Every widget's title is a reference to its official documentation, which is really great, in case when you know what you are looking for.  </i> </b> </p>
<br/>


It is worth to mention that we can use `const` before our widgets, if we are sure that it is not going to change. It will prevent app from bulding it every time, and improve a performance of our app a little bit!

<br/>

:heavy_check_mark: --> `const Text("It is not going to change, so it is working!")` 
<br/>
:x: --> `const Text("$someVariable")` Variable, as name says, can be changed, so we can't use it, <b> unless it is of type `const` also! </b>

#

### Table of most common used widgets (By me at least)

* <b>1.</b> <a target="blank" href="https://api.flutter.dev/flutter/material/Scaffold-class.html"> Scaffold </a>
* <b>2.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Container-class.html"> Container </a>
* <b>3.</b> <a target="blank" href="https://api.flutter.dev/flutter/dart-html/Text-class.html"> Text </a>
* <b>4.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Row-class.html"> Row </a>
* <b>5.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Column-class.html"> Column </a>
* <b>6.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/FittedBox-class.html"> Fitted Box </a>
* <b>7.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/SizedBox-class.html"> SizedBox  </a>
* <b>8.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/ListView-class.html"> ListView</a>
* <b>9.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html"> SingleChildScrollView </a>
* <b>10.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/GridView-class.html"> GridView </a>
* <b>11.</b> <a target="blank" href="https://api.flutter.dev/flutter/material/Drawer-class.html"> Drawer </a>
* <b>12.</b> <a target="blank" href="https://api.flutter.dev/flutter/material/InkWell-class.html"> InkWell </a>
* <b>13.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Stack-class.html"> Stack </a>
* <b>14.</b> <a target="blank" href="https://api.flutter.dev/flutter/material/Card-class.html"> Card </a>
* <b>15.</b> <a target="blank" href="https://api.flutter.dev/flutter/material/FlatButton-class.html"> FlatButton </a> (There are lots of button widgets available)
* <b>16.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Icon-class.html"> Icon </a>
* <b>17.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Form-class.html"> Form </a>
* <b>18.</b> <a target="blank" href="https://api.flutter.dev/flutter/material/CircleAvatar-class.html"> CircleAvatar  </a>
* <b>19.</b> <a target="blank" href="https://api.flutter.dev/flutter/dart-ui/Image-class.html"> Image </a>
* <b>20.</b> <a target="blank" href="https://api.flutter.dev/flutter/material/Divider-class.html"> Divider </a>
* <b>21.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Dismissible-class.html"> Dismissible </a>
* <b>22.</b> <a target="blank" href="https://api.flutter.dev/flutter/material/showDialog.html"> ShowDialog </a> (Actually it is a function)
* <b>23.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Spacer-class.html"> Spacer </a>
* <b>24.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Expanded-class.html"> Expanded </a>
* <b>25.</b> <a target="blank" href="https://api.flutter.dev/flutter/widgets/Padding-class.html"> Padding </a>

<br/>

<p align="center"> 
  <i> That is only a small part of all available widgets, I encourage you to check out <a target = "blank" href="https://github.com/annshsingh/FlutterWidgetGuide"> this </a>  great repository for more useful widgets! </i>
</p>

