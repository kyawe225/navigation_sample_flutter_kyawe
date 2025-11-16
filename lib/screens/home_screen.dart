import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class HomeScreen extends StatelessWidget {
  @Preview(name: "Home Screen")
  const HomeScreen({super.key});

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
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        actionsIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            // This is the header at the top of the drawer
            DrawerHeader(
              // decoration: BoxDecoration(color: Colors.blueGrey),
              child: Stack(
                alignment: .center,
                children: [
                  Container(
                    alignment: .centerRight,
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                  ),
                  Align(
                    alignment: .center,
                    child: Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),

            // These are the navigation items
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Handle navigation...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: .center,
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .center,
            children: [
              Text("Home Screen"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/first");
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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/second");
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
                child: Text("Go to Second Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
