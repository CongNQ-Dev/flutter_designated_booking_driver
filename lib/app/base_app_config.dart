import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:secure_ride_home/data/api/service/user_service.dart';

enum Environment { dev, prod, staging }

setupLocator() async {
  //Setup service
  Get.lazyPut<UserService>(() => UserService(), fenix: true);
  Get.lazyPut<CommonService>(() => CommonService(), fenix: true);
  Get.lazyPut<HomeService>(() => HomeService(), fenix: true);

  //Setup responsitory
  Get.lazyPut<UserRepository>(() => UserRepository(), fenix: true);
  Get.lazyPut<CommonRepository>(() => CommonRepository(), fenix: true);
  Get.lazyPut<HomeRepository>(() => HomeRepository(), fenix: true);
}

setupStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark));
}
