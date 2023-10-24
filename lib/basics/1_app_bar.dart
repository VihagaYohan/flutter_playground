import 'package:flutter/material.dart';

/// basic app bar example

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AppBar demo"),
          actions: <Widget>[
            IconButton(
              onPressed: () => {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snack bar')))
              },
              icon: const Icon(Icons.add_alert),
              tooltip: "Show snackbar",
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text('Next page'),
                        ),
                        body: const Center(
                          child: Text(
                            'This is the next page',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                    },
                  ));
                },
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next page')
          ],
        ),
        body: const Center(
            child:
                Text("This is the home page", style: TextStyle(fontSize: 24))));
  }
}
