import 'package:flutter/material.dart';

void main() {
  runApp(const Mytest());
}

class Mytest extends StatelessWidget {
  const Mytest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Strawberry Pavlova',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Strawberry Pavlova'),
      backgroundColor: Colors.lightBlue,),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 200,
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                    'It features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star_half, color: Colors.red),
                    SizedBox(width: 8),
                    Text('170 Reviews', style: TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.kitchen, color: Colors.blue),
                        SizedBox(height: 4),
                        Text('PREP:', style: TextStyle(fontSize: 12)),
                        Text('25 min', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Icon(Icons.timer, color: Colors.blue),
                        SizedBox(height: 4),
                        Text('COOK:', style: TextStyle(fontSize: 12)),
                        Text('1 hr', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Icon(Icons.restaurant, color: Colors.blue),
                        SizedBox(height: 4),
                        Text('FEEDS:', style: TextStyle(fontSize: 12)),
                        Text('4-6', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 2),
            Image.asset(
              
              'assets/images/strawberry-pavlova.jpg',
              height: 260,
              width: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}