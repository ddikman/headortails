# headortails

An example application using Riverpod

## Background

Based on the `feature first` directory structure proposed by the article at [codewithandrea](https://codewithandrea.com/articles/flutter-project-structure).

## Structure

- lib; contains all the application code
    - design_system; contains reusable components
        - constants; global things that are supposed to be written once but change very infrequently
        - widgets; reusable UI components
    - features; contains all the different use-cases, some visual some pure functional
        - xxx; feature name
            - presentation; visual classes, mostly subclassing *Widget
            - services; calling persistent storage, APIs or provides some non-UI service
            - models; coded objects to describe data or state
            - state; holds state through the lifecycle of the app
    - routing; the app routing code
    - services; application wide services, for persistent storage, API calls or other
- test; contains tests for application code
- assets; all non-code assets, images, fonts etc