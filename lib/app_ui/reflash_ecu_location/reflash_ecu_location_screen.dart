import 'package:flutter/material.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/app_ui/reflash_ecu_location/table_data_model.dart';

import '../app_components/app_tag_powered_by.dart';

class ReflashEcuLocationScreen extends StatelessWidget {
  const ReflashEcuLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(pageTitle: "Reflash ECU Location"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            for (var item in reflashEcuLocation)
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Maker => ",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        item.carMaker,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          decoration: BoxDecoration(
                            border: const Border(
                              top: BorderSide(),
                              bottom: BorderSide(),
                            ),
                            color: Colors.green.shade200,
                          ),
                          children: const [
                            Text(
                              'Model',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Year',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'ECU Location',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        for (var makers in item.modelList)
                          TableRow(
                            decoration: BoxDecoration(
                              border: Border.fromBorderSide(
                                BorderSide(color: Colors.grey.shade200),
                              ),
                            ),
                            children: [
                              Text(makers.model),
                              Text(makers.year),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6.0,
                                ),
                                child: Text(
                                  makers.ecu_location,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 90),
            const AppTagPoweredBy(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
