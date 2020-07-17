import 'package:flutter/widgets.dart';

class ErrorScreen extends StatelessWidget {
  final String message;
  ErrorScreen(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Text(message),
      ),
    );
  }
}
