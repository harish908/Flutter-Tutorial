import 'package:flutter_app/controller/base_controller.dart';
import 'package:flutter_app/services/base_client.dart';
import 'package:get/get.dart';

class TestController extends GetxController with BaseController {
  void getData() async {
    showLoading('Fetching Data');
    var response = await BaseClient()
        .get('https://jsonplaceholder.typicode.com', '/todos/1')
        .catchError(handleError);
    if (response == null) return;
    hideLoading();
    print(response);
  }
}
