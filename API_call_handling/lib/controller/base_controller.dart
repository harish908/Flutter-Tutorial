import 'package:flutter_app/helper/dialog_helper.dart';

class BaseController {
  void handleError(error) {
    hideLoading();
    DialogHelper.showErrorDialog(description: error.message);
    // if (error is BadRequestException) {
    //   DialogHelper.showErrorDialog(description: error.message);
    // }
    // else if(error is FetchDataException){
    //   DialogHelper.showLoading()
    // }
  }

  showLoading([String? message]) {
    DialogHelper.showLoading(message);
  }

  hideLoading() {
    DialogHelper.hideLoading();
  }
}
