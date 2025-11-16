import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class SecondScreen extends StatelessWidget {
  @Preview(name: "Second Screen")
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello World",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        actionsIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: .center,
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("Second Screen"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/first");
                },
                style: ButtonStyle(
                  iconColor: WidgetStateProperty.all(
                    Theme.of(context).colorScheme.onPrimary,
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    Theme.of(context).colorScheme.primary,
                  ),
                  foregroundColor: WidgetStateProperty.all(
                    Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                child: Text("Go to First Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
