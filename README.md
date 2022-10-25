# News Junkie Trial Project

My personal flutter project - an app for the purpose of demonstraiting my skills as a Flutter developer. Only a small part of the app is complete at the moment but in time I will add more functionality and improve upon what is already there.

**App description:**
A user can try their hand at journalism. In their own words, they can create and upload a 30 second video clip of themselves reporting on a news item of their choice. Other users of the app can scroll through the uploaded videos and can rate, report or block the video.

**Current status:**
A single news item is pulled from a server and a single screen showing a full screen video and some ui widgets layered on top. Live data is retrieved from the server but at present, only dummy data is displayed. 

The positions of the labels above the horizontal bar graph are dependent upon various parameters including label content and text styling, total bar width and the percentage distribution of all bar segments.

**Architecture and testing:**
* look into changing from Bloc pattern to Provider pattern
* Convert architecture to MVVM
* Write Unit and widget tests
* Investigate and posibility of utilizing amplify-flutter ```https://github.com/aws-amplify/amplify-flutter``` which eases the devlopment of auth, datastore and backend functionality. 

**Functionality:**
* Look at this TikTok clone ```https://github.com/salvadordeveloper/TikTok-Flutter```. TikTok has similar ui functionality and this project will be a great springboard for acccelerating the development of my own project.

**Time spent so far:**
* Up until commit ```https://github.com/markgsmith64/markdemoapp/commit/563412e0611473a384d6461f29a37bfd8c451fdf
``` I had spent a total of roughly 18 hours on the project.

## Getting Started

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

* News page with full screen video and overlayed graphics
* API Service - very simple for now - it works off my server to get a single news item
* Bloc
* Dio
* Code Generation

### Up-Coming Features:

* Lots - while I have time!

### Libraries & Tools Used

* [Dio] ```https://github.com/flutterchina/dio
```
* [Json Serialization] ```https://github.com/dart-lang/json_serializable
```
* [Freezed] ```https://pub.dev/packages/freezed
```
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
