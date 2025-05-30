import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:intl/intl.dart'; // for formatting date

class QRGenerator extends StatefulWidget {
  const QRGenerator({super.key});

  @override
  State<QRGenerator> createState() => _QRGeneratorState();
}

class _QRGeneratorState extends State<QRGenerator> {
  late String sessionId;
  late String qrData;

  @override
  void initState() {
    super.initState();
    _generateDailySessionId(); // generate QR code when app starts
  }

  void _generateDailySessionId() {
    final now = DateTime.now();
    final formattedDate = DateFormat('yyyy-MM-dd').format(now); // only the date
    setState(() {
      sessionId = "SESSION-$formattedDate";
      qrData = sessionId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("QR Code Generator"),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Center(
          child: Column(
            children: [
              QrImageView(
                data: qrData,
                version: QrVersions.auto,
                size: 250.0,
                backgroundColor: Colors.white,
              ),

              const SizedBox(height: 30),
              Text("Today's Session ID:", style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(sessionId, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _generateDailySessionId,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text("Today's QR"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
