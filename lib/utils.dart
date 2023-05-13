import 'package:flutter/cupertino.dart';

void showPopUp(BuildContext context,
        {required Widget child, required VoidCallback onClicked}) =>
    showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
            actions: [child],
            cancelButton: CupertinoActionSheetAction(
                onPressed: onClicked, child: Text('done'))));
