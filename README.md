# Willow Voice – Home Assignment

Hey there! This project is all about making voice dictation feel easy and natural on iOS. It's split into two main parts: a simple app and a custom keyboard extension.

## What's Included?

- **The App:**
  - Lets you record your voice and see the transcription live.
  - You can adjust settings like language, audio quality, and punctuation.
  - Keeps a history of your last transcript.

- **The Keyboard Extension (WillowKeyboard):**
  - Adds a microphone button to your keyboard, so you can dictate text anywhere on your device.
  - Shares your settings and last transcript with the main app, so you always feel at home.

## My Approach

I wanted this to feel friendly and straightforward, both to use and to understand. Here's how I tackled it:

- **SwiftUI for the app:** For a clean, modern look.
- **UIKit for the keyboard:** Because custom keyboards need a bit more control.
- **App Groups:** So the app and keyboard can share settings and transcripts.
- **Combine & async/await:** For smooth, responsive updates and networking.
- **Deepgram API:** Handles the heavy lifting of turning your speech into text.

## Trade-offs & Limitations

- **Keyboard Extension:**
  - The transcription feature in the keyboard extension isn't working as expected right now. (It does work in the main app!)
- **Internet Required:**
  - Voice transcription depends on a network connection.
- **Privacy:**
  - Audio is sent to Deepgram for processing; nothing is stored long-term.

## Known Issues & Problems

- **Keyboard Extension Transcription:**
  - The voice dictation feature in the keyboard extension is currently non-functional
  - The microphone button appears but doesn't trigger transcription
  - This is likely due to iOS security restrictions on keyboard extensions accessing microphone permissions

- **Audio Session Management:**
  - Potential conflicts between the main app and keyboard extension when both try to access audio
  - iOS may terminate audio sessions unexpectedly when switching between app and keyboard

- **App Group Data Sharing:**
  - Settings and transcript data sharing between app and keyboard may be unreliable
  - Race conditions could occur when both components try to read/write shared data simultaneously

- **Network Connectivity:**
  - No offline fallback when internet connection is unavailable
  - No retry mechanism for failed API calls to Deepgram
  - Users may experience silent failures when network is unstable

- **Memory Management:**
  - Large audio files could cause memory pressure on older devices
  - No cleanup mechanism for temporary audio files

- **UI/UX Issues:**
  - No loading indicators during transcription
  - No error messages when transcription fails
  - Limited feedback for users when operations are in progress

## Final Thoughts

This project is meant to show a real-world, user-focused approach to voice dictation on iOS. If you try it out, I hope you find the experience smooth and the code easy to follow!

— Luann Luna
