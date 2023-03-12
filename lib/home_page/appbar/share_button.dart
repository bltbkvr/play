import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:play/monkes/monkey_bloc.dart';
import 'package:play/monkes/monkeys.dart';
import 'package:url_launcher/url_launcher.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({Key? key}) : super(key: key);

  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {

  @override
  Widget build(BuildContext context) {
  List<String> items = ["Share", "Whatsapp", "Telegram", "email"];
  String value = "Share";
    return DropdownButton<String>(
      value: value,
      onChanged: (((value) async {
        var curMonkeState = BlocProvider.of<MonkeyCubit>(context).state;
        var curMonkeUrl = monkeyImages.elementAt(curMonkeState);

        if (value == "Telegram") {
          var uriObject = Uri.https(
              "t.me", "share/url", {'url': curMonkeUrl, 'text': "makaka"});
          if (await canLaunchUrl(uriObject)) {
            await launchUrl(uriObject);
          }
        } else if (value == "Whatsapp") {
          var encodedUrl = Uri.encodeFull(
              "https://wa.me/77079516597?text=here is the monke $curMonkeUrl");
          var uriObject = Uri.parse(encodedUrl);
          if (await canLaunchUrl(uriObject)) {
            await launchUrl(uriObject);
          }
        } else if (value == "email") {
          final Email email = Email(
            body: 'here is the monke $curMonkeUrl',
            subject: 'SOme subject',
            recipients: ['rahat44412@gmail.com'],
            isHTML: false,
          );

          String platformResponse;

          try {
            await FlutterEmailSender.send(email);
            platformResponse = 'success';
          } catch (error) {
            print(error);
            platformResponse = error.toString();
          }

          if (!mounted) return;

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(platformResponse),
            ),
          );
        }
      })),
      items: items.map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        },
      ).toList(),
    );
  }
}
