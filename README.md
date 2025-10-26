Mini YouTube Home Screen Clone

Project Overview
This project is a Flutter clone of the YouTube Home Screen (without ads, Shorts, or sponsored content). It focuses on creating a visually appealing and interactive scrollable feed of videos, with rectangular thumbnails, video titles, and channel info.

The project demonstrates core Flutter skills including layout design, state management (in-memory), widgets, and UI styling — making it a great addition to your portfolio.

Features
1 - Scrollable list of video cards

Each video card includes:
Rectangular thumbnail image
Video title
Channel name
Views and video duration

2 - Top AppBar with YouTube-style logo and search icon
3- In-memory data storage for videos (no backend required)
4 - Clean, responsive layout using Cards, Containers, Row, Column, and Text widgets

Technologies Used
1 - Flutter – UI and layout
2 - Dart – Programming logic
3 - In-memory List – Simulated database for videos
4 - UI Components & Widgets
5 - Scaffold – Main layout
6 - ListView.builder – Scrollable video feed
7 - Card / Container – Individual video cards
8 - Image – Rectangular video thumbnails
9 - Text – Titles, channel names, views
10 - Row / Column – Layout for each card
11 - Padding / SizedBox – Spacing between elements
12 - IconButton – Search icon in AppBar
13 - Stack – Optional overlay for video duration

Project Structure
lib/
├── main.dart        # Entry point
├── home_screen.dart # Main Home Screen with ListView
├── widgets/
│   └── video_card.dart # Individual video card widget
assets/
└── images/          # Video thumbnails

How to Run

Clone the repository:
git clone <your-repo-url>

Navigate to the project folder:
cd mini_youtube_clone

Get dependencies:
flutter pub get

Run on an emulator or device:
flutter run

Future Improvements

Integrate Firebase to store videos in the cloud
Add search functionality to filter videos
Implement favorites/watch later feature
Add video details screen with a playable video player