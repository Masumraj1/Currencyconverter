import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
   CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  TextEditingController currencyConverter = TextEditingController();
  double result = 0;

  void convert() {
    result = double.parse(currencyConverter.text) * 80;
    setState(() {});
  }
  @override
  void dispose() {
    currencyConverter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final border = OutlineInputBorder(
        borderSide: BorderSide(color: Colors.amber, width: 2.0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ));
    return Scaffold(
      appBar: AppBar(title: Text('Currency Converter',style: TextStyle(color: Colors.white),),centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
           Center(
            child: Text(
              result.toString(),
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(15, 14, 15, 10)),
            ),
          ),
          TextField(
            controller: currencyConverter,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              hintText: 'Please enter the amount in USD',
              hintStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Icons.monetization_on),
              prefixIconColor: Colors.black,
              fillColor: Colors.white,
              filled: true,
              border: border,

            ),
          ),
          SizedBox(
            height: 20,
          ),

          TextButton(
              onPressed: convert,
              style:
              ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.cyan),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                  maximumSize:
                  MaterialStatePropertyAll(Size(double.infinity, 50)),
                  shape: MaterialStatePropertyAll(OvalBorder()),
                  fixedSize: MaterialStatePropertyAll(Size(250,50))
              ),
              //           TextButton.styleFrom(
              //           backgroundColor: Colors.green,
              //
              // ),
              child: Text('convert'))
        ],
      ),
    );
  }
}
