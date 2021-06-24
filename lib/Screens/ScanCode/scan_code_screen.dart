import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:egycare/components/rounded_button.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:intl/intl.dart';
import 'package:egycare/services/local_helper.dart';
import 'my_qrcode.dart';
import '../../components/rounded_button.dart';
import 'package:egycare/Screens/ScanCode/my_qrcode.dart';
class UserScanScreen extends StatefulWidget {
  @override
  _UserScanScreenState createState() => _UserScanScreenState();
}

class _UserScanScreenState extends State<UserScanScreen> {
  String qrCode;
  var id ;

  /*void generateID() async {
    id = await LocalHelper.getIdFromLocal().toString();

  }*/

  @override
  Widget build(BuildContext context) {

    // generateID();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            /*BarcodeWidget(
              barcode: Barcode.qrCode(),
              color: Colors.black,
              data: "AMR",
              width: 300,
              height: 300,
            ),*/
            /*Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: size.width * 0.35,
                ),
              ),*/


            /*Text(
                'Scan Result',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                ),
              ),*/
            SizedBox(height: 8),
             Text(
              '$qrCode',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 72),
            RoundedButton(
              text: "أفحص الكود",
              press:  () => scanQRCode(),
            ),
            /*RoundedButton(
              text: "الQR CODE الخاص بي",
              press: () => MyQr() ,
            )*/
            RoundedButton(
              text: "الكود الخاص بي",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyQr()),
                );
                ;
              },
            ),
            /* ButtonWidget(
              text: 'Start QR scan',
              onClicked: () => scanQRCode(),
            ),*/
          ],
        ),
        //child: Text('Scan'),
      ),
    );
  }
  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'إلغاء',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }
  }


}
