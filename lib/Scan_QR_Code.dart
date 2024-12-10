import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Scan_QR_Code extends StatefulWidget {
  const Scan_QR_Code({super.key});

  @override
  State<Scan_QR_Code> createState() => _Scan_QR_CodeState();
}

class _Scan_QR_CodeState extends State<Scan_QR_Code> {
  String QrResult ='Scanned Data will Appear Here';
  Future<void>scanQR()async{
   try {
     final QrCode=await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.BARCODE);
     if(!mounted)return;
     setState(() {
       this.QrResult=QrCode.toString();
     });
   } on Exception catch (e) {
     // TODO
     QrResult='fail to load';
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
        backgroundColor: Colors.cyan,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Text('$QrResult',style: TextStyle(
              color: Colors.black
            ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: scanQR, child: Text('Scan Code')),

          ],
        ),
      ),
    );
  }
}
