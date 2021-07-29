
import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier {
  static AppController instance = new AppController();

  bool isDarkTheme = false;


  changeTheme(){
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

}