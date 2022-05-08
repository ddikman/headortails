# headortails

An example application using Riverpod

## Coding

Since I'm using [freezed](https://pub.dev/packages/freezed) in this project, you need to be running it in the background:

```shell
flutter pub run build_runner watch --delete-conflicting-updates
```

## Resources

Based on the `feature first` directory structure proposed by the article at [codewithandrea](https://codewithandrea.com/articles/flutter-project-structure).

Then on the [flutter state management with riverpod](https://codewithandrea.com/articles/flutter-state-management-riverpod/).

As an alternative to this repository, I recommend taking a look at the [starter_architecture_flutter_firebase](https://github.com/bizz84/starter_architecture_flutter_firebase) repository. It illustrates the use of Riverpod but, the overall architecture isn't as easy to read.

Other [good practices](https://medium.com/flutter-community/flutter-best-practices-and-tips-7c2782c9ebb5) and the [official flutter style guide](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo).

As per [this excellent video](https://www.youtube.com/watch?v=vrPk6LB9bjo) I am also using freezed and json_serializable. It is a bit more setup but it saves a lot of boilerplate as soon as you start serializing models.

Having a code guideline is a good start but a clear, readable architecture also depends on consistent naming. This have to be opinionated and there is no one right way. This repository shows one such naming convention:
- `presentation` layer
    - `_view`; for widgets that do not match a specific type of UI control (such as `_button`)
    - `_screens`; for screens, the top page that can be pushed or popped
    - `_dialogue`; for alerts/dialogues 
- `services` layer
    - use no prefix or suffix
        - the name should explain it's purpose, ex: `Authentication`
        - for implementations, prefix with the implementation type, ex: `FirebaseAuthentication`
- `app` layer
    - `app_`; prefix for classes that will occur only once
- `models` layer
    - `_state`; for objects that describe state
- `state` layer
    - `_provider`; for riverpod providers
        - `_controller`; for riverpod notifiers, the reason is they "control" the state or value they notify


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

- Store the number of games played and balance bought
- Add linting rules for import paths
- Add naming rules/guidelines