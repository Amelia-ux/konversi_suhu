import 'package:flutter/material.dart';

class ConvertButton extends StatelessWidget {
  final Function konversi;
  const ConvertButton({super.key, required this.konversi});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => konversi,
        child: const Text("Konversi Suhu"),
      ),
    );
  }
}
