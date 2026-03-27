import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      // enable the textfield border
      borderSide: BorderSide(width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    );
    return const Scaffold(
      // wrapping the widgets
      backgroundColor: Color.fromARGB(255, 17, 184, 202),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),

                decoration: InputDecoration(
                  // helps in designing the attractive text field
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(color: Color.fromARGB(147, 0, 0, 0)),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Color.fromARGB(147, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
