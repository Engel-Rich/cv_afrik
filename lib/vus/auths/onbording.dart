// ignore_for_file: non_constant_identifier_names

import 'package:cv_afrik/core/global_functions.dart';
import 'package:cv_afrik/core/route_name.dart';
import 'package:cv_afrik/core/variables_global.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  void pressed1() {
    controller!.nextPage(
        duration: const Duration(milliseconds: 750), curve: Curves.easeInOut);
  }

  void pressed2() {
    controller!.nextPage(
        duration: const Duration(milliseconds: 750), curve: Curves.easeInOut);
  }

  void pressed3() {
    // controller!.animateToPage(0,
    //     duration: const Duration(milliseconds: 750), curve: Curves.easeInOut);
    GoRouter.of(context).pushNamed(RouteName.application);
  }

  List<Widget> pages = [];
  PageController? controller;
  int selected_page = 0;

  @override
  void initState() {
    pages = [
      OnBoardingPage1(onpressed: pressed1),
      OnBoardingPage2(onpressed: pressed2),
      OnBoardingPage3(onpressed: pressed3)
    ];
    setState(() {});
    controller = PageController(initialPage: selected_page);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const BouncingScrollPhysics(),
        onPageChanged: (value) => setState(() {
          selected_page = value;
        }),
        itemBuilder: (context, index) {
          return pages[index];
        },
        itemCount: pages.length,
        controller: controller,
      ),
    );
  }
}

class OnBoardingPage1 extends StatelessWidget {
  final void Function()? onpressed;

  const OnBoardingPage1({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Column(
        //   children: [
        //     Expanded(
        //         flex: 2,
        //         child: Container(
        //           decoration: const BoxDecoration(
        //               color: Color.fromARGB(255, 165, 202, 240),
        //               borderRadius: BorderRadius.vertical(
        //                 bottom: Radius.circular(70),
        //               )),
        //         )),
        //     const Expanded(flex: 3, child: SizedBox.shrink())
        //   ],
        // ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assets('cv_image1.png')),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            // const Spacer(),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 30.0),
            //     child: Image.asset(
            //       assets('cv1.png'),
            //       height: taille(context).height * 0.50,
            //       width: double.infinity,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            const Spacer(),
            Container(
              height: taille(context).height * 0.4,
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      'Well designed templates',
                      style: primarystyle.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                      ),
                    ),
                    spacerheight(20),
                    Text(
                      'Must go faster. Jaguar Sark!, So tell\ndoes it realy exist ?',
                      textAlign: TextAlign.center,
                      style: primarystyle.copyWith(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    spacerheight(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        spacerwidth(10),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        spacerwidth(10),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                    spacerheight(15),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: appBouton(
                          onPressed: onpressed,
                          child: Text("NEXT",
                              style: primarystyle.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w800)),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class OnBoardingPage2 extends StatelessWidget {
  final void Function()? onpressed;
  const OnBoardingPage2({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Column(
        //   children: [
        //     Expanded(
        //         flex: 2,
        //         child: Container(
        //           decoration: const BoxDecoration(
        //               color: Color.fromARGB(255, 165, 202, 240),
        //               borderRadius: BorderRadius.vertical(
        //                 bottom: Radius.circular(70),
        //               )),
        //         )),
        //     const Expanded(flex: 3, child: SizedBox.shrink())
        //   ],
        // ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assets('cv_image2.webp')),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            // const Spacer(),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 30.0),
            //     child: Image.asset(
            //       assets('cv1.png'),
            //       height: taille(context).height * 0.50,
            //       width: double.infinity,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            const Spacer(),
            Container(
              height: taille(context).height * 0.4,
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      'Easy to Edit',
                      style: primarystyle.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                      ),
                    ),
                    spacerheight(20),
                    Text(
                      'Must go faster. Jaguar Sark!, So tell\ndoes it realy exist ?',
                      textAlign: TextAlign.center,
                      style: primarystyle.copyWith(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    spacerheight(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        spacerwidth(10),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        spacerwidth(10),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                    spacerheight(15),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: appBouton(
                          onPressed: onpressed,
                          child: Text("NEXT",
                              style: primarystyle.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w800)),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class OnBoardingPage3 extends StatelessWidget {
  final void Function()? onpressed;
  const OnBoardingPage3({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Column(
        //   children: [
        //     Expanded(
        //         flex: 2,
        //         child: Container(
        //           decoration: const BoxDecoration(
        //               color: Color.fromARGB(255, 165, 202, 240),
        //               borderRadius: BorderRadius.vertical(
        //                 bottom: Radius.circular(70),
        //               )),
        //         )),
        //     const Expanded(flex: 3, child: SizedBox.shrink())
        //   ],
        // ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assets('cv_image3.webp')),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            // const Spacer(),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 30.0),
            //     child: Image.asset(
            //       assets('cv1.png'),
            //       height: taille(context).height * 0.50,
            //       width: double.infinity,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            const Spacer(),
            Container(
              height: taille(context).height * 0.4,
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      'Easy to Export',
                      style: primarystyle.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                      ),
                    ),
                    spacerheight(20),
                    Text(
                      'Must go faster. Jaguar Sark!, So tell\ndoes it realy exist ?',
                      textAlign: TextAlign.center,
                      style: primarystyle.copyWith(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    spacerheight(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        spacerwidth(10),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        spacerwidth(10),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                    spacerheight(15),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: appBouton(
                          onPressed: onpressed,
                          child: Text("Get Started",
                              style: primarystyle.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w800)),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
