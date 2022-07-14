import 'package:consumir_api/home/http/http_bindings.dart';
import 'package:consumir_api/home/http/http_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'home/home_page.dart';

void main() {
  runApp(Consumidor());
}

class Consumidor extends StatelessWidget {
  const Consumidor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          children: [
            GetPage(
              name: '/http',
              page: () => HttpPage(),
              binding: HttpBindings(),
            )
          ],
        )
      ],
    );
  }
}
