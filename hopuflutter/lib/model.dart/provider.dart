import 'package:flutter/material.dart';

import '../routes.dart';

class PageProvider extends ChangeNotifier {
  String _currentPage = Routes.home;

  String get currentPage => _currentPage;

  void setCurrentPage(String page) {
    _currentPage = page;
    notifyListeners();
  }
}
