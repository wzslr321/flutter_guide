<h2 align = "center"> Flutter starter guide for newbies </h1>
<p align = "center">
  <i>
     It is intended for everyone who is <b>new or intermediate </b> in Flutter. It covers its most useful widgets and  concepts.
     First part of the tutorial shows examples with code sniipets, and defintions to make everything <b> as clear as possible. </b>
     Second part sums up all the content introduced before and shows how to create <b> multi-screen application with user's authorization </b> step-by-step.
     Code associated to the guide can be found <a href = "https://github.com/wzslr321/flutter_guide"> here </a>.
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
* Introduction text
  * Before start
  * Terminal commands
  * What are Stateless and Stateful widgets 
  * iOS and Android widgets differences
* Widgets
  * Table of widgets is located below the table of contents
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

#

<b> Table of widgets </b>
1. <a href="https://github.com/wzslr321/flutter_guide"> Scaffold </a>
2. <a href="https://github.com/wzslr321/flutter_guide"> Container </a>
3. <a href="https://github.com/wzslr321/flutter_guide"> Text </a> 
4. <a href="https://github.com/wzslr321/flutter_guide"> Fitted Box </a> 
5. <a href="https://github.com/wzslr321/flutter_guide"> Padding </a> 
6. <a href="https://github.com/wzslr321/flutter_guide"> SizedBox </a>

***

## Introduction 

<p> I assume that you have already installed flutter and device/emulator configured, If not, check how to do it <a href ="https://flutter.dev/docs/get-started/install"> here </a>

<br/>

### Before start

I really recommend to get basic knowledge in <b> Dart </b> language before before proceeding with this guide.
Trying to learn Flutter without any knowledge of the Dart lang is very common mistake, which makes it harder. 
<br/>
Here are two sites I do recommend to get started with: 
* <a href="https://dart.dev/guides"> Official Dart site </a>
* <a href="http://jpryan.me/dartbyexample/"> DartByExample </a> - really cool if you have experience with any other language


#

### Commands:

* `flutter create app_name` --> Creates a new flutter project, space should always be replaced with `_`
* `flutter doctor` --> Helps to diagnose issues with setup. 
* `flutter run` --> Builds an application and run it on your configured device or emulator. 
* `flutter pub get` --> Installs new packages, will be useful in <i> Packages Usage </i> section.
* `Shift + R` --> Hot restart - used in the same way as reload, fully resets application - recommended when bigger changes have been made
* `R` --> Hot reload - keyboard shortcut available in terminal when application is running, reloads the app

> Depending on the IDE you are using, the commands above may be accessible as icons, if you have flutter extension. More about it can be found <a href="https://flutter.dev/docs/get-started/editor?tab=androidstudio"> here </a> 

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
