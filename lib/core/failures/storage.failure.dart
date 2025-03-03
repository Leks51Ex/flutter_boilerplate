import 'package:flutter_boilerplate/core/failure.dart';

class StorageFailure extends Failure {
  final String storageName;
/* ------------------------------- Constructor ------------------------------ */
  StorageFailure(this.storageName, [super.message]);
/* ----------------------------- Implementation ----------------------------- */
  @override
  String get name => 'StorageFailure';
/* -------------------------------------------------------------------------- */
  @override
  String toString() {
    String superMessage;
    if (message != null) {
      superMessage = '$message in $storageName';
    } else {
      superMessage = 'Undescribed error in $storageName';
    }
    return '$name: $superMessage';
  }
}
