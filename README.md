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
  * Terminal commands
  * What are Stateless and Stateful widgets 
  * iOS and Android widgets differences
  * Useful resources
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

### Introduction 

<p> I assume that you have already installed flutter and device/emulator configured, If not, check how to do it <a href ="https://flutter.dev/docs/get-started/install"> here </a>

<b> Commands: </b> 

* `flutter create app_name` --> Creates a new flutter project, space should always be replaced with `_`
* `flutter doctor` --> Helps to diagnose issues with setup. 
* `flutter run` --> Builds an application and run it on your configured device or emulator. 
* `flutter pub get` --> Installs new packages, will be useful in <i> Packages Usage </i> section.
* `Shift + R` --> Hot restart - used in the same way as reload, fully resets application - recommended when bigger changes have been made
* `R` --> Hot reload - keyboard shortcut available in terminal when application is running, reloads the app

> Depending on the IDE you are using, the commands above may be accessible as icons, if you have flutter extension. More about it can be found <a href="https://flutter.dev/docs/get-started/editor?tab=androidstudio"> here </a> 

#

### Stateless and Stateful widgets
