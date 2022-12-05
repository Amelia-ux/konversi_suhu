import 'package:flutter/material.dart';
import 'package:konversi_suhu/widget/input.dart';
import 'package:konversi_suhu/widget/output.dart';
import 'package:konversi_suhu/widget/convert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  TextEditingController etInput = TextEditingController();
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;

  convert() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      _reamur = 4 / 5 * _inputUser;
      _kelvin = _inputUser + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Konverter Suhu - Amelia Marshanda/2041720041'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Input(etInput: etInput),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Output(
                      output: _kelvin,
                      name: "Suhu dalam Kelvin",
                    ),
                    Output(
                      output: _reamur,
                      name: "Suhu dalam Reamur",
                    ),
                  ],
                ),
              ),
              ConvertButton(
                konversi: convert,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
