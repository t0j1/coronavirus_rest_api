import 'package:http/http.dart' as http;
import 'api.dart';

class APIService {
  APIService(this.api);
  final API api;

  // refer to pubdev 'http' 
  Future<String> getAccessToken() async {
    final response = await http.post(
    api.tokenUri().toString(),
    headers: {'Authorization': 'Basic ${api.apiKey}'},
    );
  }
}