import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FirstHome()));
}

class FirstHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data transfer"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            User user = User(name: 'Magzhan', age: 17);
            Route route = MaterialPageRoute(
              builder: (context) => SecondPage(user: user),
            );
            Navigator.push(context, route);
          },
          child: Text("Move to second page"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final User user;
  const SecondPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${this.user.name} - ${this.user.age}"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("go back"),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final int age;
  User({required this.name, required this.age});
}
