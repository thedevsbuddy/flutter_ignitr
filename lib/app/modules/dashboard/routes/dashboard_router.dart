import 'package:get/get.dart';

import '../dashboard_module.dart';

// DashboardRoutes
class DashboardRoutes {
  static String get dashboard => '/dashboard';
}

// DashboardPages
List<GetPage> dashboardRoutes = [
  GetPage(name: '/dashboard', page: () => DashboardPage()),
];
