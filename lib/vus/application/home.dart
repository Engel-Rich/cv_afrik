import 'package:cv_afrik/core/global_functions.dart';
import 'package:cv_afrik/core/icons.dart';
import 'package:cv_afrik/core/variables_global.dart';
import 'package:cv_afrik/provider/core/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const SizedBox.shrink(),
        leadingWidth: 15,
        actions: [
          const Iconify(premium_crown2, size: 35, color: gold),
          spacerwidth(10),
          CircleAvatar(
              backgroundImage: AssetImage(assets('user-profile-avatar.png'))),
          spacerwidth(10),
        ],
        title: Text(
          "Pix Resume",
          style: primarystyle.copyWith(
              fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const Iconify(empoule_icon, color: Colors.blue),
                    title: Text('Tips for your resume',
                        style:
                            primarystyle.copyWith(fontWeight: FontWeight.w600)),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.grey.withOpacity(0.7))),
                  ),
                  spacerheight(5),
                  ListTile(
                    title: Text(
                      "My Resume",
                      style: primarystyle.copyWith(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    trailing: TextButton(
                        onPressed: () {},
                        child: Text('See all',
                            style: primarystyle.copyWith(
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.7),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        Text(
                          'KAMDEM ATANGANA  Atanase',
                          style: primarystyle.copyWith(
                              fontWeight: FontWeight.w900),
                        ),
                        //     const Icon(Icons.more_horiz, color: Colors.black12)
                        //   ],
                        // ),
                        spacerheight(10),
                        Text(
                          'Ingénieur Systèmes et réseaux'.toUpperCase(),
                          style: primarystyle.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.lightBlue),
                        ),
                        spacerheight(5),
                        const Divider(),
                        spacerheight(5),
                        Text(
                          'Experience',
                          style: primarystyle.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        spacerheight(10),
                        Text(
                          'Adaddo',
                          style: primarystyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.blue),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          minVerticalPadding: 0,
                          trailing: Text('01/2023 ...',
                              style: primarystyle.copyWith(
                                color: Colors.black12,
                              )),
                          title: Text(
                            'Ingénieur dévelopeur',
                            style: primarystyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Text(
                          'INCC',
                          style: primarystyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.blue),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          minVerticalPadding: 0,
                          trailing: Text('09/2023 - 01/2023',
                              style: primarystyle.copyWith(
                                color: Colors.black12,
                              )),
                          title: Text(
                            'Ingénieur dévelopeur',
                            style: primarystyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Text(
                          'SOPREWO',
                          style: primarystyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.blue),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          minVerticalPadding: 0,
                          trailing: Text('09/2021 - 08/2022',
                              style: primarystyle.copyWith(
                                color: Colors.black12,
                              )),
                          title: Text(
                            'Ingénieur Systèmes et réseaux',
                            style: primarystyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 70,
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(8.0),
                color:
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      bouttonWidget(() {},
                          icon: view_icon, title: "View", size: 110),
                      bouttonWidget(() {},
                          icon: download_icon, title: "Download", size: 150),
                      bouttonWidget(() {},
                          icon: share_icon, title: "Share", size: 110),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget bouttonWidget(void Function()? onTap,
      {required String icon, required String title, required double size}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        width: size,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Iconify(icon),
            spacerwidth(8),
            Text(title,
                style: primarystyle.copyWith(fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
