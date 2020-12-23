<h2 align = "center"> Flutter starter guide for newbies </h1>
<p align = "center">
  <i>
     It is intended for everyone who is <b>new </b> in Flutter. It covers its most useful widgets and  concepts.
     First part of the tutorial shows examples with code sniipets, and defintions to make everything <b> as clear as possible. </b>
     Second part sums up all the content introduced before and shows how to create <b> multi-screen application</b> step-by-step.
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
* Packages and assets 
  * Pubspec.yaml file description 
  * Upload own fonts and images
* Routes
* State management 
  * Stateful widget 
  * Provider package

<br/>

***

<br/>

<h3 align ="center"> Introduction</h3>

#

<br/>

<br/>
<p> I assume that you already have installed flutter and device/emulator configured, If not, check how to do it <a href ="https://flutter.dev/docs/get-started/install"> here </a>

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
  <b> Stateless </b> widget is immutable, there is no possibility to change content of the screen unless we reload app. It is built once, and stays as it is - cannot change its state during the runtime of the app, in simple words, it can't be redrawn during the runtime.
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
<br/>

***

<br/>

<h3 align ="center"> Widgets </h3>

#

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

<br/>

### We can also create our <b> Reusable Custom Widgets! </b> 
<br/>

Let's say that we have 3 exactly the same buttons in our application. The only difference is text isnide. With custom widget, we can split our code, <b> so it looks like this in those 3 spots: </b>
```dart
DefaultButtonWidgetFirst(
   textContent: "Hello world!",
)
```

<br/>

<b> Insted of this: </b>
```dart
Container(
    width: queryData.size.width * 0.5,
    height: queryData.size.height * 0.25,
    child:FlatButton(
      onPressed: () {}, // Does nothing for now, but is required
      child: Text(
        "$textContent",
        style: TextStyle(
          fontSize: 16,
          color: Colors.cyan,
        ),
      ),
    ),
);
```
<br/>

> So... How can we do it?

<br/>

In separate file, we create Stateless or Stateful widget, stateless in this case. <br/> <br/>
Than we declare variables which it takes as arguments everytime when is used. <br/> <br/>
We use <b> final </b> variable type, because it is going to be declared only once during a runtime, and we specify its type. <br/> <br/>
<b> Example: </b> `final String textContent;` <br/> <br/>
Than, we have two ways of declaring arguments.
* <b> 1. </b> Named arguments with usage of "{}"
```dart
const DefaultButtonWidgetFirst({
   this.textContent,
});
```

<br/>

<b> this keyword </b> refers to final variable we created before.

With named arguments, we than use this widget specyfing every agument by its name. Named arguments are not required by default! Although, we can set it to required with `@required` decorator from material package, so it looks like that: 
```dart
const DefaultButtonWidgetSecond({
   @required this.textContentSecond,
});
```



* <b> 2. </b> Un-named arguments, without "{}", those are always required! 
```dart
  const DefaultButtonWidgetThird(this.textContentThird);
```

<br/>

When we use a custom widget with un-named arguments, we declare arguments <b> in sequence </b>, so un-named arguments are useful only when we deal with small amount of them, and we are sure that we will remember their sequence.

<br/>

Now we can use this widget wherever we want. <br/>
First we need to import a file with our widge on top of our file, where we want to use it, in my case : `import './widgets/custom_button.dart';`
Now we can use it in our code:
```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Column(
        children: [
          DefaultButtonWidgetFirst(
            textContent: "Hello world!",
          ),
          DefaultButtonWidgetSecond(
            textContentSecond: "Hello world 2!",
          ),
          DefaultButtonWidgetThird('Hello world 3!')
        ],
      ),
    );
  }
}
```
<br/>

#### Code with this example can be found <a href = "https://github.com/wzslr321/flutter_guide/tree/main/lib/reusable_widgets_example" > here </a>

<br/>

***

<br/>

<h3 align ="center"> Packages and assets </h3>

#

<br/>

There are awesome packages that we can use in our code really easily and can be found <a href="https://pub.dev/"> here! </a> <br/> <br/>
<p align="center"> <b> How to use them? </b> </p>

#

Packages, fonts, images have to be specified in <b> <a href="https://dart.dev/tools/pub/pubspec"> pubspec.yaml </a> </b> file, which containts metadata required to specify dependencies.It is very restrictive and care even about spaces.
To require dependencies we must find this part of code: 

<br/>

```yaml
dependencies:
  flutter:
    sdk: flutter
```
<br/>

Now we can declare packages we want under each other, by specyfing a name and version, which we can see on its pub.dev page. </br>
Example of <a href = "https://pub.dev/packages/http/install"> http </a> package usage.
<br/>
```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^0.12.2
```

<br/> 
<b> Remember about right spacing! </b>

<p> In this file we can also declare other assets, like fonts and images. Examples of it are already in builded pubspec.yaml file.
<br/>
  
```yaml
fonts:
 - family: Schyler
   fonts:
     - asset: fonts/Schyler-Regular.ttf // path to our font
     - asset: fonts/Schyler-Italic.ttf
        style: italic
```

<br/>

```yaml
flutter:
  assets:
    - assets/my_icon.png // path to our image or any other asset.
    - assets/background.png
```
<br/>

***

<br/>

<h3 align ="center"> Routes </h3>

#

<br/>

Routing in Flutter is really simple and in my opinion, well organised. 

<br/>

At first, in our <b> main.dart </b> file, in <i> MaterialApp </i> we have to register them and set home screen, optionally unknownRoute also. 

<br/>

```dart
return MaterialApp(
  title: 'Flutter Guide',
  home: // First screen will go here!
   routes:{
    // Most of the next here.
   },
   onUnknownRoute: (settings) {
     return // And finally PageNotFoundScreen is going to be here!
   },
);
```

<br/>

> This is my project structure 

<br/>

```bash
--routes_example
  -- screens
     -- first_screen.dart
     -- page_not_found_screen.dart
     -- second_screen.dart
  -- main.dart
```

<br/>

To register our route, first we need to specify its name. The best way to do this is a `static const` - dart feature. It will prevent from misspelling the route in the code. We should do it at the beggining of our Stateless/Stateful widget. 

<br/>

```dart
class FirstScreen extends StatelessWidget {
  static const routeName = 'first-screen';
  
  // ...Rest of the code goes here
}
```

<br/>

Now, with help of our static const, we can register it in our previous <i> main.dart </i> code. 

<br/>

```dart
return MaterialApp(
  title: 'Flutter Guide',
  home: FirstScreen(), // home screen is visible when our app start, we can specify only one. 
    routes:{
      SecondScreen.routeName:(ctx) => SecondScreen(),
      // We access our static const like class method, after ' . ' 
      // With received context (ctx) we than call our widget. 
      // It is possible to register as many routes as we want here.
    },
    onUnknownRoute: (settings) {
      return MaterialPageRoute(builder: (ctx) => PageNotFoundScreen());
      // We can specify unknown route only once too. 
      // It is mostly useful in web applications.  
    },
);
```

<br/>

With our routes registered properly, we can now use them in our code to make functionality of displaying different screens.
<br/>
For this, we can use <b> Navigator </b>, and more specifically <b> <i> Navigator.of(context).pushNamed() </i> </b> in this case. 
We can invoke this function for example, with help of simple button.

<br/>

```dart
ElevatedButton(
    child: Text("Second screen"),
    onPressed:() {
       Navigator.of(context).pushNamed(SecondScreen.routeName);
       // To use SecondScreen.routeName we need to import this on top of the file. 
    },
),
``` 

<br/>

It will display SecondScreen when we tap on a button and place it on a <b> Stack of screens </b>, and will automatically display an arrow button in AppBar, which gives a possibility to go back - to the previous screen. 
<br/>
<br/>
<br/>
> <b> <i> Code for this example can be found <a href ="https://github.com/wzslr321/flutter_guide/tree/main/lib/routes_example"> here </a> 
<br/>

<p> Here are some cool articles, if you want to learn more about routing. <a href="https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade"> first article </a> | <a href="https://medium.com/flutter-community/flutter-push-pop-push-1bb718b13c31"> second article </a> | <a href ="https://medium.com/@JediPixels/flutter-navigator-pageroutebuilder-transitions-b05991f53069"> third article </a>
<br/>

***

<br/>

<h3 align ="center"> State Management</h3>

#

<br/>

<p align="center"> <i> There are a few packages which includes state management, but in this section I am going to introduce, in my opinion, best one. </i> </p>

#

### Stateful Widget

Before hopping into <b> Provider </b> package, it is importatnt to talk about stateful widget. If we want to manage our data only in one screen and we don't share it in any other screen we should use Stateful Widget, there is no need to use Provider in such a case. <i> Keep it local </i> if you are able to. <br/> <br/>

There are a few built-in functions which trigger based on Widget's state. In a little bit more complex aplications, they become really useful and it is worth to learn about it <a href = "https://api.flutter.dev/flutter/widgets/State/State.html"> here </a> <br/>

<b> Example </b>

<br/>

```dart
class MyStatefulWidgetState extends State<MyStatefulWidget> {

// (...)

@override
  void initState() {   // Called when this object is inserted into the tree.
   print("Init State Test");
}

 @override
  Widget build(BuildContext context) {
  // (...)
}
```

<br/>

To manually call SetState() we can use introduced before - <b> setSate() {} </b>. <br/>
In order to make code cleaner, it is good to define our function as <b> void </b> 
<br/>

<b> Example </b>

<br/>

```dart

String _newText = "Hello" ;

void _myFirstVoidFunc() {

  setState() {
    _newText = "Hello there!";
  }

  // void function doesn't return anything
}

Widget build(BuildContext context) {
 return GestureDetector(
    onTap: () {
      setState(() {
         _myFirstVoidFunc
       });
    },
    child: Text("$_newText"),
}

```


#

### Provider package

<a href="https://pub.dev/packages/provider"> Provider </a> is an insane package to help with State Management! It gives a possibility to decide what part of widget we want to rebuild, using: <br/>
* <a href="https://pub.dev/documentation/provider/latest/provider/Provider/of.html"> Provider.of </a> - basically, it rebuilds all of widgets in a widget tree if a change occurs.
* <a href ="https://pub.dev/documentation/provider/latest/provider/Consumer-class.html"> Consumer </a> - lets us decide which part of widget tree we want to rebuild.
* <a href="https://pub.dev/documentation/provider/latest/provider/Selector-class.html"> Selector </a> - Very similar to Consumer, I do recommend visit attached link if you want to learn more about the differences.
<br/> 
<br/>

<b> How to use provider package: </b>

<br/>

> Project structure of incoming example.

<br/>

```bash
--state_management_example
  -- providers
     -- counter_provider.dart
  -- screens
     -- achievements_screen
        -- achievements_screen.dart
     -- home_screen
        -- home_screen.dart
     -- page_not_found_screen.dart
        -- page_not_found_screen.dart
     -- profile_screen
        -- profile_screen.dart
  -- main.dart
```

<br/>

* Declare it in pubspec.yaml, type <i> flutter pub get </i> in terminal afterwards
```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^4.3.2+3 // Check latest version on pub.dev
```
* Import on top of the file
```dart
import 'package:provider/provider.dart';
```

* Create a file with class which is <a href ="https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3"> mixin </a> of <b> ChangeNotifier </b> and import `import 'package:flutter/foundation.dart';` which includes this mixin. <br/>

```dart
class Counter with ChangeNotifier {} 
```

<br/>

<p align="center"> <b> <a href="https://dart.dev/guides/language/language-tour"> Dart </a> language knowledge becomes hardly useful here </b>

<br/>

Now we can declare our variables which we want to be changable with Provider package and add functionality that we want. To notify that we want rebuild widget which uses modified, in <b> void </b> function, variable we have to call `notifyListeners();` at the end of our function. <br/>
<br/>

<b> Here is simple example of Counter class, which lets us access counter value with <a href="https://dart.dev/guides/language/language-tour#getters-and-setters"> getter </a> and also increment it with void. <br/> 

```dart
import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _counter = 0; // "_" means it is private variable

  int get value {
    return _counter;
  }

  void incrementCounter(){
    _counter++;
    notifyListeners();
  }
}
``` 

<br/> 

With this file we now have to register it in <b> main.dart </b>. Probably your app will have more than one provider, so it is good to register it with <b> MultiProvider </b>. There are a lot of ways to declare providers in MultiProvider, depending on your needs, but in this guide I will cover only one - <b> ChangeNotifierProvider </b>. Check Provider's readme <a href="https://pub.dev/packages/provider"> here </a> to learn more. <br/> <br/>

```dart
// Import file with ChangeNotifier created before

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()) // Counter is name of class with ChangeNotifier, created before
      ],
      child: MaterialApp( 
        // Rest of the widget tree
        // ...
```

<br/>

Now our Provider is globally available and waits for us to use it! </br>

First we have to import provider package in a file where we want to use it.
`import 'package:provider/provider.dart';` and also file with provider registered before.  `import '../../providers/counter_provider.dart';`
</br>

After that, we create provider's variable in the widget tree 
```dart
 @override
  Widget build(BuildContext context) {
    Counter _counter = Provider.of<Counter>(context);
    // ... Rest of the widget tree
```
<br/>

Now in our widget tree we can access this variable and its methods. <br/>

```dart
Container(
  child: GestureDetector(
    onTap: _counter.incrementCounter,
    child: Text("Counter: ${_counter.value}"),
)),
```

<br/>

We can also check counter value in another screen, using <b> Consumer </b> this time. <br/>

```dart
// We don't create variable like we did with Provider.of, just import files 
// ... ( Widget tree ) 
child:Consumer<Counter>(
   builder: (_,counter,__){ // "_" is a way to tell that we won't use received value, because we don't need nothing except our counter here
     return Text("Money count is: ${counter.value}");
   },
),
// ...
```

<br/>

<p align="center"> Full code of this example can be found <a href="#"> here </a> </p>


