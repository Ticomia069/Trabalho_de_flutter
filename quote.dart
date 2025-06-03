import 'package:http/http.dart' as http;
import 'dart:convert';

class QuoteService {
  static Future<String> fetchQuote() async {
    final response = await http.get(Uri.parse('https://api.quotable.io/random'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['content'];
    } else {
      throw Exception('Failed to load quote');
    }
  }
}
