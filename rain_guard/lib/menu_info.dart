import 'package:flutter/foundation.dart';
import 'package:rain_guard/enums.dart';

class MenuInfo extends ChangeNotifier {
  MenuType? menuType;
  String? title, imageSrc;

  MenuInfo(this.menuType, {this.title, this.imageSrc});

  updateMenu(MenuInfo menuInfo) {
    this.menuType = menuInfo.menuType;
    this.title = menuInfo.title;
    this.imageSrc = menuInfo.imageSrc;

    notifyListeners();
  }
}
