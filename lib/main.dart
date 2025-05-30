

import 'package:attandanceappp/qrgen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:  QRGenerator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//
// class QRGeneratorPage extends StatefulWidget {
//   const QRGeneratorPage({super.key});
//
//   @override
//   State<QRGeneratorPage> createState() => _QRGeneratorPageState();
// }
//
// class _QRGeneratorPageState extends State<QRGeneratorPage> {
//   // List of 10 strings to be encoded in QR codes
//   final List<Map<String, String>> employeeList = [
//     {"name": "John Doe", "id": "EMP001"},
//     {"name": "Jane Smith", "id": "EMP002"},
//     {"name": "Alice Johnson", "id": "EMP003"},
//   ];
//
//
//   int currentIndex = 0;
//   String qrData = 'Press the button to generate QR code';
//   String currentMessage = '';
//
//   void _generateQRCode() {
//     setState(() {
//       final employee = employeeList[currentIndex];
//       currentMessage = jsonEncode({
//         "name": employee["name"],
//         "id": employee["id"]
//       });
//       qrData = currentMessage;
//
//       currentIndex = (currentIndex + 1) % employeeList.length;
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QR Code Generator'),
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.3),
//                         spreadRadius: 2,
//                         blurRadius: 5,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: QrImageView(
//                     data: qrData,
//                     version: QrVersions.auto,
//                     size: 200.0,
//                     backgroundColor: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   'Message ${currentIndex + 1} of ${employeeList.length}',
//                   style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10),
//                 Text(
//                   currentMessage,
//                   style: const TextStyle(fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: _generateQRCode,
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                   ),
//                   child: const Text('Generate Next QR Code'),
//                 ),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
// //
// // class QRGeneratorPage extends StatefulWidget {
// //   final String employeeName;
// //   final String employeeId;
// //
// //   const QRGeneratorPage({
// //     super.key,
// //     required this.employeeName,
// //     required this.employeeId,
// //   });
// //
// //   @override
// //   State<QRGeneratorPage> createState() => _QRGeneratorPageState();
// // }
// //
// // class _QRGeneratorPageState extends State<QRGeneratorPage> {
// //   String qrData = '';
// //   bool isLoading = true;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _generateQRCode();
// //   }
// //
// //   void _generateQRCode() {
// //     final employeeName = widget.employeeName;
// //     final employeeId = widget.employeeId;
// //     final now = DateTime.now().toUtc().toIso8601String();
// //
// //     // Create structured data (JSON)
// //     final attendanceData = {
// //       "employee": employeeName,
// //       "employee_id": employeeId,
// //       "company": "hashinclude",
// //       "timestamp": now,
// //     };
// //
// //     // Encode as JSON string
// //     setState(() {
// //       qrData = jsonEncode(attendanceData);
// //       isLoading = false;// Pass the structured data here
// //     });
// //   }
// //
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('QR Code Generator')),
// //       body: Center(
// //         child: isLoading
// //             ? const CircularProgressIndicator()
// //             : qrData.isNotEmpty
// //             ? QrImageView(
// //           data: qrData,
// //           version: QrVersions.auto,
// //           size: 250.0,
// //           backgroundColor: Colors.white,
// //         )
// //             : const Text('Error generating QR'),
// //       ),
// //     );
// //   }
// // }
