import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Generate_QR_Code extends StatefulWidget {
  const Generate_QR_Code({super.key});

  @override
  State<Generate_QR_Code> createState() => _Generate_QR_CodeState();
}

class _Generate_QR_CodeState extends State<Generate_QR_Code> {
  TextEditingController urlController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR Code'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(urlController.text.isNotEmpty)
                 QrImageView(data: urlController.text,size: 200,),
                SizedBox(height: 10,),
                Container(
                  child: TextField(
                    controller: urlController,
                    decoration: InputDecoration(
                      hintText: 'enter your data',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                      ),
                      labelText: 'enter your data'
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: (){
                  setState(() {

                  });
                }, child: Text('Generate'))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
