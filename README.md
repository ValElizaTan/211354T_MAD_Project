# Bus Alert – Flutter Mobile App

A mobile app that lets bus commuters pick a starting stop and a destination stop and then "start tracking", so the app can alert them when they have reached their destination. Built with Flutter as a Mobile Application Development (MAD) project at Nanyang Polytechnic.

## Features

The app uses a five-tab bottom navigation bar:

| Tab | What it does |
|-----|--------------|
| **Account** | Login and register forms with input validation, a profile page that shows the signed-in email (or "Welcome, Guest"), and an Edit Profile page. |
| **Bus** | A searchable list of bus services (10, 72, 74, 87, 101, 102, 112, 113, 119, 136, 151, 324). Tapping a service opens its list of stops along the route. |
| **Home** | "Select Destination" screen where the user picks a **Start Destination** and an **End Destination** from searchable stop lists, then taps **Start Tracking**. |
| **Alert** | The "You have reached your destination!" screen shown on arrival. |
| **About** | App description, a **Contact Us** button that opens the phone dialler, and a **Feedback Us** form that sends an email through the device's mail app. |

## Tech stack

- Flutter / Dart (SDK `>=2.7.0 <3.0.0`, i.e. pre-null-safety)
- [`url_launcher`](https://pub.dev/packages/url_launcher) – phone call link
- [`flutter_email_sender`](https://pub.dev/packages/flutter_email_sender) – feedback email
- [`flutter_phone_direct_caller`](https://pub.dev/packages/flutter_phone_direct_caller)
- [`flappy_search_bar`](https://pub.dev/packages/flappy_search_bar), [`persistent_bottom_nav_bar`](https://pub.dev/packages/persistent_bottom_nav_bar)

## Project structure

```
lib/
├── main.dart          # App entry point + bottom navigation bar
├── model.dart         # MyData (email/password), BusModel, RoadNameModel
├── loginpage.dart     # Login form
├── registerpage.dart  # Register form
├── profilepage.dart   # Profile view
├── editpage.dart      # Edit profile form
├── bus.dart           # Searchable bus service list
├── businfo.dart       # Stops for a selected bus service
├── homepage.dart      # Select start/end destination, start tracking
├── startpage.dart     # Searchable stop picker (start)
├── endpage.dart       # Searchable stop picker (end)
├── search.dart        # Stop search screen
├── alert.dart         # Arrival alert screen
├── aboutus.dart       # About, contact & feedback links
└── feedback.dart      # Feedback email form
images/                # App images (bus icons, profile avatars)
```

## Getting started

This project targets an older, pre-null-safety Flutter SDK (Flutter 1.22 / 2.x era) and uses widgets such as `RaisedButton` that have since been removed. Use a matching Flutter version (for example via [FVM](https://fvm.app/)) or migrate the code before building on a current SDK.

```bash
flutter pub get
flutter run
```

## Limitations

- Bus services and stop names are hard-coded sample data (one Hougang/Serangoon route); there is no live bus or GPS data, so "tracking" is simulated.
- Account details are passed between screens in memory only and are not stored or verified against a backend.

## Author

Valerie Tan Wan Xin – Nanyang Polytechnic, Infocomm & Media Engineering
