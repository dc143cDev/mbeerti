import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lock/bindings/lock_binding.dart';
import '../modules/lock/views/lock_view.dart';
import '../modules/question/bindings/question_binding.dart';
import '../modules/question/views/question_view.dart';
import '../modules/result/bindings/result_binding.dart';
import '../modules/result/views/result_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOCK;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.QUESTION,
      page: () => Question1View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.QUESTION2,
      page: () => Question2View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.QUESTION3,
      page: () => Question3View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.QUESTION4,
      page: () => Question4View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.QUESTION5,
      page: () => Question5View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.QUESTION5,
      page: () => Question5View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.QUESTION6,
      page: () => Question6View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.QUESTION7,
      page: () => Question7View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),GetPage(
      name: _Paths.QUESTION8,
      page: () => Question8View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.QUESTION9,
      page: () => Question9View(),
      binding: QuestionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.RESULT,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
    GetPage(
      name: _Paths.LOCK,
      page: () => const LockView(),
      binding: LockBinding(),
    ),
  ];
}
