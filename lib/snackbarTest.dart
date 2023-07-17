import 'package:flutter/material.dart';

class snackbaTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('show snack-bar'),
          onPressed: () {
            final snackBar = SnackBar(content: Text('this is snack-bar'),
              action: SnackBarAction(
                label: 'close snackbar',
                onPressed: () {
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        ),
      ),
    );
  }

}