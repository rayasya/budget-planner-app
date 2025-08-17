import 'package:budget_planner/app/views/add_view.dart';
import 'package:budget_planner/app/views/home_view.dart';
import 'package:budget_planner/app/views/initial_view.dart';
import 'package:budget_planner/app/views/setting_view.dart';
import 'package:budget_planner/app/views/target_view.dart';
import 'package:budget_planner/app/views/transaction_view.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.initial, page: () => InitialView()),
    GetPage(name: AppRoutes.home, page: () => const HomeView()),
    GetPage(name: AppRoutes.transaction, page: () => const TransactionView()),
    GetPage(name: AppRoutes.add, page: () => const AddView()),
    GetPage(name: AppRoutes.taget, page: () => const TargetView()),
    GetPage(name: AppRoutes.setting, page: () => const SettingView()),
  ];
}
