import 'package:barcode_scan/platform_wrapper.dart';
import 'package:flutter/material.dart';

class SmartScreen extends StatefulWidget{
  @override
  _SmartScreenState createState() => _SmartScreenState();
}

class _SmartScreenState extends State<SmartScreen> {
  @override
  Widget build(BuildContext context) {
    main();
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Image(
          image: AssetImage('images/ic_qr_code.png'),
          height: 200,
          width: 200,
        ),
      ),
    );
  }
  void main() async {
    var result = await BarcodeScanner.scan();

    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(result.type.toString()),
    ));
    print(result.type); // The result type (barcode, cancelled, failed)
    print(result.rawContent); // The barcode content
    print(result.format); // The barcode format (as enum)
    print(result.formatNote); // If a unknown format was scanned this field contains a note
  }
}
