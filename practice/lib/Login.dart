import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(900),
              child: const Image(
                image: AssetImage('images/img.png'),
                width: 150,
              ),
            ),
            const Text(
              "Welcom Ra7obaa",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 30,
                fontFamily: "Pacifico",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "User Name",
                  hintStyle: const TextStyle(color: Colors.pink),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.pink,
                  ),
                ),
                obscureText: false,
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.pink),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.pink,
                  ),
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Button click logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Forget password ?",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Text(
              "Not A Member ?Sign Up Now..",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
