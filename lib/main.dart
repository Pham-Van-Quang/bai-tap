import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? usernameValue;
  String? passwordValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 12),
              child: TextField(
                onChanged: (String value) {
                  setState(() {
                    usernameValue = value;
                  });
                },
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: "Username"
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 12),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    passwordValue = value;
                  });
                },
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",            
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Text("Đăng nhập", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 16, 
                    fontWeight: FontWeight.bold),),
              ),
            ),
            const SizedBox(height: 15),
            const Text("Tên đăng nhập và mật khẩu là:", style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 12),
              child: Row(   
                children: [
                  const Text("Username: ", style: TextStyle(fontSize: 20),),
                  Text(usernameValue ?? "",
                   style: const TextStyle(fontSize: 20)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 12),
              child: Row(
                children: [
                  const Text("Password: ", style: TextStyle(fontSize: 20),),
                  Text(passwordValue ?? "",
                   style: const TextStyle(fontSize: 20)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
