# headortails

An example application using Riverpod

## Background

Based on the `feature first` directory structure proposed by the article at [codewithandrea](https://codewithandrea.com/articles/flutter-project-structure).

Then on the [flutter state management with riverpod](https://codewithandrea.com/articles/flutter-state-management-riverpod/).

## Structure

- `lib`; contains all the application code
    - `design_system`; contains reusable components
        - `constants`; global things that are supposed to be written once but change very infrequently
        - `widgets`; reusable UI components
    - `features`; contains all the different use-cases, some visual some pure functional
        - `xxx`; feature name
            - `presentation`; visual classes, mostly subclassing *Widget
            - `services`; calling persistent storage, APIs or provides some non-UI service
            - `models`; data objects to transfer or describe data
            - `state`; holds state through the lifecycle of the app or a view, such as view models
    - `routing`; the app routing code
    - `services`; application wide services, for persistent storage, API calls or other
- `test`; contains tests for application code
- `assets`; all non-code assets, images, fonts etc

## Roadmap

Next up, the game balance should stop the balance from going under zero. As I try to flip when balance is zero, I should handle that by showing a modal.