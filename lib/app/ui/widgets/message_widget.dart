import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.receipt,
            size: MediaQuery.of(context).size.width * 0.15,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Nenhum item encontrado!',
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
