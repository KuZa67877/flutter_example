import 'package:flutter/material.dart';
import 'package:for_work/colors.dart';
import 'package:for_work/split_button.dart';

class SearchRouteScreen extends StatefulWidget {
  const SearchRouteScreen({super.key});

  @override
  State<SearchRouteScreen> createState() => _SearchRouteScreenState();
}

class _SearchRouteScreenState extends State<SearchRouteScreen> {
  bool sendPackage = false;
  Color checkBoxColor = AppColors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Поиск поездок",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            width: 210,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.brush_outlined))
        ],
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(color: Color.fromARGB(255, 187, 181, 181)),
                SplitButton(),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 140),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.adjust,
                          color: AppColors.green,
                        ),
                      ),
                      Container(
                        width: 280,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.gray1),
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                hintText: "Откуда",
                                border: InputBorder.none,
                                counterText: '',
                                suffixIcon: Icon(
                                  Icons.gps_fixed,
                                  color: AppColors.green,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 60),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.location_pin,
                          color: AppColors.green,
                        ),
                      ),
                      Container(
                        width: 280,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.gray1),
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                hintText: "Куда",
                                border: InputBorder.none,
                                counterText: '',
                                suffixIcon: Icon(
                                  Icons.gps_fixed,
                                  color: AppColors.green,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 10),
              child: Row(
                children: [
                  Checkbox(
                    value: sendPackage,
                    shape: CircleBorder(),
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return AppColors.green;
                      }
                      return AppColors.gray1;
                    }),
                    onChanged: (bool? value) {
                      setState(() {
                        sendPackage = value!;
                      });
                    },
                  ),
                  const Text('Передать посылку'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
