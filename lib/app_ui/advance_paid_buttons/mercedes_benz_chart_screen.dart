import 'package:flutter/material.dart';
import 'package:vinlab_new/app_ui/advance_paid_buttons/button_model.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import '../app_components/my_app_bar.dart';

class MercedesBenzChassisChart extends StatelessWidget {
  const MercedesBenzChassisChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: const MyAppBar(
        pageTitle: "MercedesBenz Chassis",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
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
                        'Chassis',
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
                        'Model',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Engine',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  for (var makers in mercedesBenzData)
                    TableRow(
                      decoration: BoxDecoration(
                        border: Border.fromBorderSide(
                          BorderSide(color: Colors.grey.shade200),
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 6),
                          child: Text(makers.chassisNumber),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(makers.years),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          child: Text(makers.modelNumber),
                        ),
                        Text(
                          makers.engineNumber,
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const AppTagPoweredBy(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
