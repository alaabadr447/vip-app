
import 'package:one_context/one_context.dart';

import '../common/consts/strings/error_handling_strings.dart';
import '../utils/snackbar/snack_bar.dart';

class HandleError {
  static handleException({
    int? response,
  }) {
    switch (response) {
      case 400:
        showSnackBarMessage(
          OneContext().context!,
          isError: true,
          message: ErrorHandlingCases.sendFailure,
        );
        break;
      case 401:
        showSnackBarMessage(  OneContext().context!,
          isError: true,
          message: ErrorHandlingCases.unauthorized,
        );
        break;
      case 404:
        showSnackBarMessage(  OneContext().context!,
          isError: true,
          message: ErrorHandlingCases.notFoundUrl,
        );
        break;
      case 403:
        showSnackBarMessage(  OneContext().context!,
          isError: true,
          message: ErrorHandlingCases.notHasAuthorized,
        );
        break;
      case 500:
        showSnackBarMessage(  OneContext().context!,
          isError: true,
          message: ErrorHandlingCases.serverFailure,
        );
        break;
      case 502:
        showSnackBarMessage(  OneContext().context!,
          isError: true,
          message: ErrorHandlingCases.serverFailure,
        );
        break;
    }
  }

  // static handleExceptionDio(DioExceptionType dioExceptionType) {
  //   switch (dioExceptionType) {
  //     case DioExceptionType.connectionTimeout:
  //       showSnackBarMessage(
  //         isError: true,
  //         message: 'connection timeout',
  //       );
  //       break;
  //
  //     case DioExceptionType.sendTimeout:
  //       showSnackBarMessage(
  //         isError: true,
  //         message: 'send timeout',
  //       );
  //       break;
  //     case DioExceptionType.receiveTimeout:
  //       showSnackBarMessage(
  //         isError: true,
  //         message: 'receive timeout',
  //       );
  //       break;
  //     case DioExceptionType.badCertificate:
  //       showSnackBarMessage(
  //         isError: true,
  //         message: 'bad certificate',
  //       );
  //       break;
  //     case DioExceptionType.badResponse:
  //       showSnackBarMessage(
  //         isError: true,
  //         message: 'bad response',
  //       );
  //       break;
  //     case DioExceptionType.cancel:
  //       showSnackBarMessage(
  //         isError: true,
  //         message: 'request cancelled',
  //       );
  //       break;
  //     case DioExceptionType.connectionError:
  //       showSnackBarMessage(
  //         isError: true,
  //         message: 'connection error',
  //       );
  //       break;
  //     case DioExceptionType.unknown:
  //       showSnackBarMessage(
  //         isError: true,
  //         message: 'unknown',
  //       );
  //       break;
  //   }
  // }
}
