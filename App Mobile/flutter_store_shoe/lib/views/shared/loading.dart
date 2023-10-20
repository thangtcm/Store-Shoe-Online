import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingView {
  bool _isLoading = false;
  void showLoading(BuildContext context) {
    if (!_isLoading) {
      _isLoading = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Center(
            child: Container(
              color: Colors.black.withOpacity(0.6),
              child: const LoadingIndicator(
                indicatorType: Indicator.circleStrokeSpin,
                colors: [Colors.blue],
              ),
            ),
          );
        },
      );
    }
  }

  void hideLoading(BuildContext context) {
    if (_isLoading) {
      _isLoading = false;
      Navigator.of(context).pop();
    }
  }
}
