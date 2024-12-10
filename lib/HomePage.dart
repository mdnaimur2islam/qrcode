


import 'package:flutter/material.dart';

import 'Generate_QR_Code.dart';
import 'Scan_QR_Code.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner Or Generator'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Scan_QR_Code()));

              });
            },
                child: Text('Scan OR Code')
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Generate_QR_Code()));
              });
            },
                child: Text('Generate OR Code')
            ),
          ],
        ),
      ),
    );
  }
}
