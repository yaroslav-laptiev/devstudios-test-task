
abstract class Failure {

  final String message;
  final StackTrace stackTrace;

  Failure(this.message, this.stackTrace);

}

class DemoFailure extends Failure {
  DemoFailure(super.message, super.stackTrace);
}