
import 'package:craftybay/data/models/network_response.dart';
import 'package:craftybay/data/models/payment_method_model.dart';
import 'package:craftybay/data/models/payment_method_response_data.dart';
import 'package:craftybay/data/services/network_caller.dart';
import 'package:craftybay/data/utils/urls.dart';
import 'package:get/get.dart';

class PaymentMethodController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;

  PaymentMethodResponseData? _paymentMethodResponseData;

  PaymentMethodResponseData? get paymentMethodResponseData => _paymentMethodResponseData;

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  Future<bool> getPaymentMethodList() async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final NetworkResponse response = await Get.find<NetworkCaller>().getRequest(
      url: Urls.createInvoice,
    );

    if (response.isSuccess) {
      _paymentMethodResponseData =
          PaymentMethodModel.fromJson(response.responseData).data?.first;
      isSuccess = true;
      _errorMessage = null;
    } else {
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
