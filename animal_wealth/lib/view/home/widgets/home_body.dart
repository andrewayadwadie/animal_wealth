import 'package:animal_wealth/utils/style.dart';
import 'package:animal_wealth/view/test_screen/test_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class HomeBodyWidget extends StatelessWidget {
  HomeBodyWidget({Key? key}) : super(key: key);
  final List<String> titles = [
    'preparation screen'.tr,
    
  ];
  final List<Widget> screens = [
    const TestScreen(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 13),
      padding: const EdgeInsets.only(top: 5),
      width: MediaQuery.of(context).size.width / 1.1,
      height: MediaQuery.of(context).size.height / 1.315,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: GridView.builder(
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: 1,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {
                Get.to(screens[index]);
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: lightPrimaryColor),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      blurRadius: 6,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 7),
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 9,
                      padding: const EdgeInsets.all(3),
                      child: Image.asset(
                        "assets/images/$index.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 22,
                      decoration: const BoxDecoration(
                          color: lightPrimaryColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                              bottomRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                      child: Text(
                        titles[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 17,
                            fontFamily: 'hanimation',
                            // fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
