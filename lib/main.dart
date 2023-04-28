import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:stripe_payment/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      'pk_test_51N0igESEzJhypUgK5wESkdYLGJtbNXhNOzlLkwzVx4RDCvvrX2ZPd2y1vy5fU5Zc0eB2gSgbw6HPg4X5GftyP0iz00QBOcWq1Y';
  // Replace with your publishable key
  Stripe.merchantIdentifier = 'AppAvengers';
  await Stripe.instance.applySettings();

  runApp(GetMaterialApp(
    initialRoute: '/',
    //fade in transition
    transitionDuration: const Duration(milliseconds: 500),
    defaultTransition: Transition.fadeIn,
    getPages: [
      GetPage(
        name: '/',
        page: () => const HomePage(),
      ),
    ],
  ));
}
