# lastfm

Simple lastfm Flutter application.

## Before start

Install :

- Flutter 2+
- Dart 2.12+

Run:

- flutter pub get
- flutter pub run build_runner build --delete-conflicting-outputs

## Architecture

Very simple clean archi.

**Domain** | Repo interface / Entities / States
**Infrastructure** | Apis clients / Environment / Repo implementation
**Presentation** | Navigation / Views / Views Controller / injections / Widgets / Styling
**Services** | Application runtime services

## Core Packages

**Get** | State management / Injection / Navigation
**Dio** | Http client
**Dartz** | Functional programming features
**Freezed** | Data class generation & serialization
