import 'package:flutter/material.dart';
import 'package:headortails/app/presentation/widgets/app_scaffold.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(title: 'About', child: Text("""There are many good state management frameworks in Flutter and Riverpod is one of them.

The problem though, is that most articles tell you how to use each feature but without examplifying in a clean way how the entire thing sits together.

You want to use frameworks like Riverpod to cleanly architecture your app. So throwing it on your app without also consider how you instantiate state and how it is separated between modules, you are likely getting into a messy state again.

So this application is mean to serve as a training ground for myself to learn how to apply Riverpod but also ,as an example for others walking down this path.

Interested to get in touch or hear more, reach me at

@almundgrey or https://greycastle.se"""));
  }
}