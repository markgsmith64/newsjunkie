# News Junkie Trial Project

This is my effort to produce a screen for a fictional news video upload/playback app in flutter. It's only purpose is to demonstrate my flutter and general architectural and ui/ux abilities/sensibilities and some geometry algorithms I enjoy creating. 

Just a static video screen of a bee at the moment - but the bee will be replaced with a short vid uploaded by user.  with some overlay elements (more to come) - unscrollable for now but will be scrollable. 

The app features the use of bloc with an api service for pulling down a bit of json data but the data is not hooked up to the ui yet - easily done though. I intend to look at converting from bloc to provider and change architecture to MVVM - which will make things easier for separation of development tasks and testing. Provider and MVVM should take me maybe upto 12 hours or so to learn properly and be comfortable using. Testing in flutter will take me a day maybe to learn - I know it from iOS and various other environments but not flutter. video scrolling needs to occur within the window rather than the whole screen being navigated. certain elements of the screen (e.g. logo and settings hamburger etc need to remain static.) - this can easily be done with a flutter stack widget.
It took 2 days (including algorithms for the horizontal bar chart) - mostly learning stuff along the way.

Tiktok is an inspiration - there is a great flutter tiktok clone i want to look at to see how provider and MVVM works etc. And could see about adopting tiktok's flutter architecture for this app. I need to estimate how long it will take me to learn and absorb the tiktok architecture as a whole.

## Getting Started

An implementation of a single video screen with overlay

## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/markgsmith64/newsjunkie.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

This project uses `inject` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.inject.summary;*.inject.dart;*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:
```
**/*.inject.summary
**/*.inject.dart
**/*.g.dart
```

## Features:

* News page with video and layout rectangles
* API Service - very simple for now - it works off my server to get a single news item
* Bloc
* Dio
* Code Generation

### Up-Coming Features:

* Lots - if I don't get a job!

### Libraries & Tools Used

* [Dio](https://github.com/flutterchina/dio)
* [Json Serialization](https://github.com/dart-lang/json_serializable)
* [Dependency Injection](https://github.com/fluttercommunity/get_it)
* [Freezed]
* [Other stuff] ...

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- constants/
|- data/
|- stores/
|- ui/
|- utils/
|- widgets/
|- main.dart
|- routes.dart
```
this isn't correct but probably need to arrange things this way.

Now, lets dive into the lib folder which has the main code for the application.

```
do later
```

### Constants

This directory contains all the application level constants. A separate file is created for each type as shown in example below:

```
do later
```

### Data

later

### Stores

later

### UI

later

### Utils

later

### Widgets

later

### Routes

later

## Wiki

Checkout [wiki](https://github.com/zubairehman/flutter-boilerplate-project/wiki) for more info

## Conclusion

Not my words: I will be happy to answer any questions that you may have on this approach, and if you want to lend a hand with the boilerplate then please feel free to submit an issue and/or pull request 🙂

Again to note, this is example can appear as over-architectured for what it is - but it is an example only. If you liked my work, don’t forget to ⭐ star the repo to show your support.

