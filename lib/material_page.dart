import 'package:flutter/material.dart';

// boilerplate code stfl

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      // enable the textfield border
      borderSide: BorderSide(width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    );
    return Scaffold(
      // wrapping the widgets
      backgroundColor: Color.fromARGB(255, 17, 184, 202),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 17, 184, 202),
        title: const Text("Currency Converter"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)} INR",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            //padding or container
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                controller: textEditingController,

                decoration: const InputDecoration(
                  // helps in designing the attractive text field
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(color: Color.fromARGB(147, 0, 0, 0)),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Color.fromARGB(147, 0, 0, 0),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),

            // Button
            //1 raised
            //2 appears like a text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  // debugmode , release mode , profile mode
                  setState(() {
                    result = double.parse(textEditingController.text) * 90;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  minimumSize: Size(double.infinity, 50),
                  //shape you can give if you want
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(color: Color.fromARGB(255, 245, 242, 242)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
