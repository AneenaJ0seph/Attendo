import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.46.140:8000//api/attendance/';

  static Future<bool> markAttendance(
      Map<String, dynamic> attendanceData) async {
    try {
      final response = await http.post(
        Uri.parse('http://192.168.46.140:8000//api/attendance/'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(attendanceData),
      );

      print("📡 Sent: ${jsonEncode(attendanceData)}");
      print("📥 Response: ${response.statusCode} ${response.body}");

      return response.statusCode == 200 || response.statusCode == 201;
    } catch (e) {
      print("❌ Error sending attendance: $e");
      return false;
    }
  }
}