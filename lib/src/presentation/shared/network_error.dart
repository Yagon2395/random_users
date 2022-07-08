import 'package:flutter/material.dart';

class NetWorkError extends StatelessWidget {
  final String btnMessage;
  final VoidCallback? action;
  const NetWorkError({Key? key, required this.btnMessage, this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Center(
              child: Text(
                'Ops, something went wrong. Please try again later.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 0,
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: SizedBox(
                height: 60,
                child: ElevatedButton(
                  onPressed: action,
                  child: Text(
                    btnMessage,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
