import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> name = [
    "ali",
    "Hussain",
    "Hafiz",
    "ali",
    "Hussain",
    "Hafiz",
    "ali",
    "Hussain",
    "Hafiz",
    "ali",
    "Hussain",
    "Hafiz",
    "ali",
    "Hussain",
    "Hafiz",
    "kasif"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("data"),
          bottom: (TabBar(
            enableFeedback: true,
            tabs: const [
              Tab(
                text: "Login",
                //! use one thing child or text
                // child: Container(color: Colors.black12),
                icon: Icon(Icons.notification_important),
              ),
              Tab(text: "Register"),
              // Tab(text: "empty tab"),
            ],
            unselectedLabelColor: Colors.amber[100],
            labelColor: Colors.amber,
            indicatorColor: Colors.amberAccent,
          )),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
              children: List.generate(
                  name.length,
                  (index) => Container(
                      color: Colors.teal,
                      child: Text(
                        name[index],
                        textAlign: TextAlign.center,
                      ))),
            ),
          ),
          Scaffold(
              body: GridView.builder(
                  itemCount: name.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        color: Colors.teal,
                        child: Center(
                          child: Text(
                            name[index],
                            textAlign: TextAlign.center,
                          ),
                        ));
                  }))
        ]),
      ),
    );
  }
}
