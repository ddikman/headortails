# headortails

An example application using Riverpod

## Resources

Based on the `feature first` directory structure proposed by the article at [codewithandrea](https://codewithandrea.com/articles/flutter-project-structure).

Then on the [flutter state management with riverpod](https://codewithandrea.com/articles/flutter-state-management-riverpod/).

As an alternative to this repository, I recommend taking a look at the [starter_architecture_flutter_firebase](https://github.com/bizz84/starter_architecture_flutter_firebase) repository. It illustrates the use of Riverpod but, the overall architecture isn't as easy to read.

## Structure

- `lib`; contains all the application code
    - `features`; contains all the different use-cases, some visual some pure functional
        - `xxx`; feature name
            - `presentation`; visual classes, mostly subclassing *Widget
            - `services`; calling persistent storage, APIs or provides some non-UI service
            - `models`; data objects to transfer or describe data
            - `state`; holds state through the lifecycle of the app or a view, such as view models
    - `app`; contains services, models, state etc that is shared throughout the app, other features will depend on this
        - `presentation`; this is effectively the app design system
            - `constants`; global things that are supposed to be written once but change very infrequently
            - `widgets`; reusable UI components
        - `routing`; the app routing code        
        - `services`; application wide services, for persistent storage, API calls or other
        - `state`; app wide state
        - `utilities`; quick hand helpers and wrappers to hide framework code
          
- `test`; contains tests for application code
- `assets`; all non-code assets, images, fonts etc

## Roadmap

- Handle when balance reaches zero
- Add linting rules for import paths
- Add naming rules/guidelines