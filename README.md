# Flutter exercise

This is a flutter exercise, a simulation of a social application.
Tools used:

- dartz
- flutter_bloc
- get_it
- freezed_annotation
- json_annotation
- build_runner
- freezed
- json_serializable

Before the first run I recommend to run the command: 

```
dart run build_runner build
```

It was made using Clean Architecture, BLoC pattern, dependency injection and material 3 design.

### Notes

The application was made to measure coding skills, coding style and problem solving capability. To make it simple and quick I just did some examples of specific good practices or UX implementations, for example:

- A placeholder was added at the loading time of the profile button.
- UnitTest for que “network call repository”.
- There were two profile pages, one for the user and other for the friends, because some times friends don’t share the full data and there are different interactions too. ( just as an example).
- The Json's mock were made like an actual response from an API.
- The use of two types of post (text and image).
- System brightness
- ColorScheme from color seed.
- Use of extensions