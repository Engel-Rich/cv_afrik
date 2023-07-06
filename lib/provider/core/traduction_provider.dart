import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TraductionProvider extends GetxController {
  String selectedLangage = ''.obs.toString();

  static TraductionProvider get provider => Get.find<TraductionProvider>();

  // @override
  // void onInit() {
  //   initialization();
  //   super.onInit();
  // }

  // @override
  // onClose() {
  //   saveLangage(selectedLangage);
  //   super.onClose();
  // }

  setCourantLangage(String lang) {
    selectedLangage = lang;
    saveLangage(lang);
    update();
  }

  Future<void> initialization() async {
    final lang = await getLangage();
    setCourantLangage(lang);
  }

  Future<String> getLangage() async {
    final preferences = await SharedPreferences.getInstance();
    final lang = preferences.getString(langaugekey);
    return lang ?? '';
  }

  Future<void> saveLangage(String lang) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(langaugekey, lang);
  }
}

const langaugekey = 'langgage_key';
