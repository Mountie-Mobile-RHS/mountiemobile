import 'package:mountiemobile/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:mountiemobile/domain/core/value_objects.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      _validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  static Either<ValueFailure<String>, String> _validateEmailAddress(String input) {
    const emailRegex = r"^[A-Za-z0-9._%+-]+@rpsar\.net$";
    if (RegExp(emailRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(ValueFailure.invalidEmail(failedValue: input));
    }
  }
}
