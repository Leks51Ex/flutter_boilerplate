import 'package:flutter_boilerplate/core/failure.dart';

class UnexpectedFailure extends Failure {
/* ------------------------------- Constructor ------------------------------ */
  UnexpectedFailure([super.message]);
/* ----------------------------- Implementation ----------------------------- */
  @override
  String get name => runtimeType.toString();
}
