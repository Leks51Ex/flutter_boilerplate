

import 'package:flutter_boilerplate/core/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class UseCase<Retval, Params> {
  /// Returns task which can be executed
  TaskEither<Failure, Retval> call(Params params);
}
