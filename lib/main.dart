import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.fitHeight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count == 20 ? "Lotado" : "Pode entrar!",
              style: TextStyle(
                fontSize: 26,
                color: count == 20 ? Colors.red : Colors.white,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                    fontSize: 100,
                    color: count == 20 ? Colors.red : Colors.white,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: count == 0 ? null : decrement,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    disabledBackgroundColor: Colors.white.withAlpha(50),
                    fixedSize: const Size(100, 50),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Sair",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: count == 20 ? null : increment,
                  style: TextButton.styleFrom(
                      disabledBackgroundColor: Colors.white.withAlpha(50),
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 50),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: const Text("Entrar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
