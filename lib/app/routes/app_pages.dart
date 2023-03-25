import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/question/bindings/question_binding.dart';
import '../modules/question/views/question2_view.dart';
import '../modules/question/views/question3_view.dart';
import '../modules/question/views/question4_view.dart';
import '../modules/question/views/question_view.dart';
import '../modules/result/bindings/result_binding.dart';
import '../modules/result/views/result_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.QUESTION,
      page: () => QuestionView(),
      binding: QuestionBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.QUESTION2,
      page: () => Question2View(),
      binding: QuestionBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.QUESTION3,
      page: () => Question3View(),
      binding: QuestionBinding(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: _Paths.QUESTION4,
      page: () => Question4View(),
      binding: QuestionBinding(),
      transition: Transition.zoom,
    ),
    // GetPage(
    //   name: _Paths.QUESTION5,
    //   page: () => Question5View(),
    //   binding: QuestionBinding(),
    // ),
    GetPage(
      name: _Paths.RESULT,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
  ];
}
