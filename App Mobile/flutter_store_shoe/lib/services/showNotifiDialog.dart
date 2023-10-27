// ignore_for_file: non_constant_identifier_names, file_names

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/enum/typeNotify.dart';

class ShowDialogNotify {
  static Future<void> showNotify(
      String? title, String? Message, BuildContext context,
      {typeNotify typenotify = typeNotify.Error}) async {
    AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: typenotify == typeNotify.Error
          ? DialogType.error
          : DialogType.success,
      body: Center(
        child: Text(
          '${typenotify == typeNotify.Error ? "Lỗi: " : ""} $Message',
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      title: title,
      desc: 'This is also Ignored',
      btnOkOnPress: () {},
    ).show();
  }
}
