// ignore_for_file: must_be_immutable

import 'package:cv_afrik/core/global_functions.dart';
import 'package:cv_afrik/core/localization_controller.dart';
import 'package:cv_afrik/core/route_config.dart';
import 'package:cv_afrik/provider/core/traduction_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  TraductionProvider provider = Get.put(TraductionProvider());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TraductionProvider>(
      init: provider,
      initState: (_) => TraductionProvider.provider.initialization(),
      builder: (traduction) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          routerConfig: RoutesConfigurations().router,
          debugShowCheckedModeBanner: false,
          locale: traduction.selectedLangage.trim().isNotEmpty
              ? Locale.fromSubtags(languageCode: traduction.selectedLangage)
              : null,
          localeResolutionCallback:
              LocalizationService.localeResolutionCallBack,
          localizationsDelegates: LocalizationService.locaizationDelegate,
          supportedLocales: LocalizationService.supportedLangages,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tranduire(context, 'title')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              tranduire(context, 'push'),
            ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Changer de lange'),
              actions: [
                TextButton(
                  onPressed: () {
                    TraductionProvider.provider.setCourantLangage('de');
                    Navigator.pop(context);
                  },
                  child: const Text('Allemand'),
                ),
                TextButton(
                  onPressed: () {
                    TraductionProvider.provider.setCourantLangage('en');
                    Navigator.pop(context);
                  },
                  child: const Text('Anglais'),
                ),
                TextButton(
                  onPressed: () {
                    TraductionProvider.provider.setCourantLangage('fr');
                    Navigator.pop(context);
                  },
                  child: const Text('Français'),
                ),
              ],
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
