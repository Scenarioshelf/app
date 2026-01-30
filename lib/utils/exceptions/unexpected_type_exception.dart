import 'package:scenarioshelf/utils/exceptions/app_exception.dart';

class UnexpectedTypeException extends AppException {
  const UnexpectedTypeException({required super.message, super.display});
}
