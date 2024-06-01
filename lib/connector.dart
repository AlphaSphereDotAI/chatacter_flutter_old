import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

class BackendConnector extends GetConnect {
  // Get request
  Future<Response<String>> getTextResponse(String query) => get(
        'https://8000-01hx9jfkpet0fwthkepmvrvv3c.cloudspaces.litng.ai/',
        headers: {
          'Authorization': "Basic ${dotenv.env['BACKEND_KEY']}",
        },
        query: {
          'query': query,
        },
      );
  GetSocket userMessages() {
    return socket('https://yourapi/users/socket');
  }
}
