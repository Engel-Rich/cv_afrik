import 'package:cv_afrik/core/global_functions.dart';
import 'package:cv_afrik/core/icons.dart';
import 'package:cv_afrik/core/variables_global.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 15,
        elevation: 0.0,
        title: Text(
          "Settings",
          style: primarystyle.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "profile",
                style: primarystyle.copyWith(
                    color: Colors.black45, fontWeight: FontWeight.bold),
              ),
              spacerheight(5),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
                minVerticalPadding: 0,
                leading: const Iconify(profile_icon, color: Colors.blue),
                title: Text(
                  'My Account',
                  style: primarystyle.copyWith(),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
                minVerticalPadding: 0,
                leading: const Iconify(premium_crown, color: Colors.blue),
                title: Text(
                  'Go premium',
                  style: primarystyle.copyWith(),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
                minVerticalPadding: 0,
                leading: const Iconify(translate_icone, color: Colors.blue),
                title: Text(
                  'Langage',
                  style: primarystyle.copyWith(),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                ),
              ),
              // spacerheight(5),
              const Divider(),
              spacerheight(5),
              Text(
                "Term and privacy",
                style: primarystyle.copyWith(
                    color: Colors.black45, fontWeight: FontWeight.bold),
              ),
              spacerheight(5),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
                minVerticalPadding: 0,
                leading: const Iconify(document_icon, color: Colors.blue),
                title: Text(
                  'Term Of Use',
                  style: primarystyle.copyWith(),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
                minVerticalPadding: 0,
                leading: const Iconify(document_icon, color: Colors.blue),
                title: Text(
                  'Term Of Privacy',
                  style: primarystyle.copyWith(),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                ),
              ),
              // spacerheight(5),
              const Divider(),
              spacerheight(5),
              Text(
                "Contacts",
                style: primarystyle.copyWith(
                    color: Colors.black45, fontWeight: FontWeight.bold),
              ),
              spacerheight(5),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
                minVerticalPadding: 0,
                leading: const Iconify(rate_icone, color: Colors.blue),
                title: Text(
                  'Rate Our App',
                  style: primarystyle.copyWith(),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
                minVerticalPadding: 0,
                leading: const Iconify(website_icone, color: Colors.blue),
                title: Text(
                  'Our Website',
                  style: primarystyle.copyWith(),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                ),
              ),
              spacerheight(10),
              Center(
                child: Text(
                  "App version 0.01",
                  style: primarystyle.copyWith(color: Colors.black12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
