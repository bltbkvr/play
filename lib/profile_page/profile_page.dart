import 'package:flutter/material.dart';
import 'package:play/profile_page/background_image.dart';
import 'package:play/profile_page/profile_bio.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileBio();
  }
}
