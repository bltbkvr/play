import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play/monkes/monke_gallery.dart';
import 'package:play/monkes/monkey_bloc.dart';
import 'package:play/settings_page/setting_item.dart';

class Setting {
  var settingName;
  var settingIcon;

  Setting(String name, Icon icon) {
    this.settingIcon = icon;
    this.settingName = name;
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

//fution out and inside state
  @override
  Widget build(BuildContext context) {
    List<Setting> settingItems = [
      new Setting(
        "Notifications and Sounds",
        Icon(Icons.notification_add_outlined),
      ),
      new Setting(
        "Privacy and Security",
        Icon(Icons.lock_clock_outlined),
      ),
      new Setting(
        "Data and Storage",
        Icon(Icons.sd_storage_rounded),
      ),
      new Setting(
        "Chat Settings",
        Icon(Icons.chat),
      ),
      new Setting(
        "Stickers and Emoji",
        Icon(Icons.emoji_emotions_outlined),
      ),
      new Setting(
        "Chat Folders",
        Icon(Icons.folder),
      ),
    ];
    return ListView(
        padding: const EdgeInsets.all(8),
        children: settingItems
            .map((setting) => Card(
                  child: ListTile(
                    leading: setting.settingIcon,
                    title: Text(setting.settingName),
                  ),
                ))
            .toList());
  }
}
