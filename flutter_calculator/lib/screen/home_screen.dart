import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _controller1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'First Number',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Second Number',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              double firstNumber =
                                  double.tryParse(_controller1.text) ?? 0;
                              double secondNumber =
                                  double.tryParse(_controller2.text) ?? 0;
                              double add = firstNumber + secondNumber;
                              result = add.toString();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text('Addition'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              double firstNumber =
                                  double.tryParse(_controller1.text) ?? 0;
                              double secondNumber =
                                  double.tryParse(_controller2.text) ?? 0;
                              double subtract = firstNumber - secondNumber;
                              result = subtract.toString();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text('Subtraction'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              double firstNumber =
                                  double.tryParse(_controller1.text) ?? 0;
                              double secondNumber =
                                  double.tryParse(_controller2.text) ?? 0;
                              double multiply = firstNumber * secondNumber;
                              result = multiply.toString();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text('Multiplication'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              double firstNumber =
                                  double.tryParse(_controller1.text) ?? 0;
                              double secondNumber =
                                  double.tryParse(_controller2.text) ?? 0;
                              if (secondNumber != 0) {
                                double divide = firstNumber / secondNumber;
                                result = divide.toStringAsFixed(2);
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text('Division'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Result: $result',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
