import 'package:go_router/go_router.dart';
import 'package:hackathon/screens/home.dart';
import 'package:hackathon/screens/rank.dart';
import 'package:hackathon/screens/redeem.dart';
import 'package:hackathon/screens/weekly.dart';

class Navigation {
  static const initial = "/";
  static final routes = [
    GoRoute(
        path: "/",
        name: Screen.home.name,
        builder: (context, state) => const HomeScreen()),
    GoRoute(
        path: "/weekly",
        name: Screen.weekly.name,
        builder: (context, state) => const WeeklyScreen()),
    GoRoute(
        path: "/rank",
        name: Screen.rank.name,
        builder: (context, state) => const RankScreen()),
    GoRoute(
        path: "/redeem",
        name: Screen.redeem.name,
        builder: (context, state) => const RedeemScreen()),
  ];
}

enum Screen { home, weekly, rank, redeem }
