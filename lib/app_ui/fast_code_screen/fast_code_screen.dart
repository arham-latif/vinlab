import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vinlab_new/utils/app_colors.dart';
import 'dart:convert';

import '../app_components/app_tag_powered_by.dart';
import '../app_components/my_app_bar.dart';

class FastCodeScreen extends StatefulWidget {
  const FastCodeScreen({super.key});

  @override
  State<FastCodeScreen> createState() => _FastCodeScreenState();
}

class _FastCodeScreenState extends State<FastCodeScreen> {
  String? selectedBrand;
  String? selectedCalculationType;
  String? selectedSecurityKey =
      "Please Select a brand and type of calculation to show the resultant security key !";
  List<String> brands = [
    "ACURA",
    "AUDI",
    "CHERY",
    "CHEVROLET",
    "CITROEN",
    "DACIA",
    "DACIA OTHERS",
    "FORD",
    "HONDA",
    "HYUNDAI",
    "INFINITI",
    "JAGUAR",
    "JCB",
    "KIA",
    "LAND ROVER",
    "LEXUS",
    "MARUTI",
    "MAZDA",
    "MERCEDES BENZ",
    "MG ROVER",
    "MINI",
    "MITSUBISHI",
    "NISSAN",
    "NISSAN OTHERS",
    "PEUGEOT",
    "QIRUI",
    "RENAULT",
    "RENAULT OTHERS",
    "SAAB",
    "SCION",
    "SEAT",
    "SKODA",
    "SMART",
    "SUZUKI",
    "TOYOTA",
    "VOLKSWAGEN"
  ];

  Map<String, List<String>> calculationTypes = {
    "ACURA": ["First Password", "Second Password", "PCM Code by VIN"],
    "AUDI": ["SKC 4 by 7 Converter", "SKC 7 by 4 Converter"],
    "CHERY": ["PIN Code by VIN"],
    "CHEVROLET": ["PIN Code by VIN", "Key code by VIN", "Radio code by VIN"],
    "CITROEN": ["Unlock Password", "Radio code by PCode"],
    "DACIA": [
      "PIN Code by Key tag",
      "PIN code by Incode",
      "Incode by PIN code",
      "Clip Reprogramming",
    ],
    "DACIA OTHERS": ["Radio code by PCode"],
    "FORD": ["Incode by outcode", "Radio code by serial"],
    "GREAT WALL": ["PIN Code by VIN"],
    "HONDA": ["First Password", "Second Password", "PCM Code by VIN"],
    "HYUNDAI": [
      "PIN Code by VIN",
      "Key code by VIN",
      "ACU Variant Coding",
      "PIN Code by ISK"
    ],
    "INFINITI": [
      "PIN code by BCM",
      "PIN code by ICU",
      "PIN code by SEC",
      "Key code by VIN"
    ],
    "JAGUAR": ["Incode by Outcode", "Password by Seed", "Access Code"],
    "JCB": ["Response Code"],
    "KIA": [
      "PIN Code by VIN",
      "Key code by VIN",
      "ACU Variant Coding",
      "PIN Code by ISK"
    ],
    "LAND ROVER": [
      "Incode by Outcode",
      "Password by Seed",
      "Access Code",
      "Barcode by Serial"
    ],
    "LEXUS": ["Passcode by Seed", "ERC Unlock Code"],
    "MARUTI": ["PIN code by ECM"],
    "MAZDA": ["Incode by Outcode", "PIN Code by ISN"],
    "MERCEDES BENZ": ["Password by Hash", "ESL Password by EZS"],
    "MG ROVER": ["Barcode by Serial"],
    "MINI": ["Barcode by Serial"],
    "MITSUBISHI": ["Default PIN Code", "Navigation Code"],
    "NISSAN": [
      "PIN code by BCM",
      "PIN code by ICU",
      "PIN code by SEC",
      "Key code by VIN",
    ],
    "NISSAN OTHERS": ["PIN code by G-Box", "PIN code by ECM"],
    "PEUGEOT": ["Unlock Password", "Radio code by PCode"],
    "QIRUI": ["PIN Code by VIN"],
    "RENAULT": [
      "PIN Code by Key Tag",
      "PIN Code by Incode",
      "Incode by PIN Code",
      "Clip Reprogramming",
    ],
    "RENAULT OTHERS": ["Radio code by PCode"],
    "SAAB": ["PIN Code by VIN", "SEC Code by VIN"],
    "SCION": ["Passcode by Seed", "ERC Unlock Code"],
    "SEAT": ["SKC 4 by 7 Converter", "SKC 7 by 4 Converter"],
    "SKODA": ["SKC 4 by 7 Converter", "SKC 7 by 4 Converter"],
    "SMART": ["Teach-in key Again", "SAM Assignment", "Key code by VIN"],
    "SUZUKI": ["PIN code by ECM", "Default PIN Code"],
    "TOYOTA": ["Passcode by Seed", "ERC Unlock Code"],
    "VOLKSWAGEN": ["SKC 4 by 7 Converter", "SKC 7 by 4 Converter"]
  };

  Map<String, List<String>> requiredData = {
    "First Password": ["Not Required"],
    "Second Password": ["No Of Inputs"],
    "PCM Code by VIN": ["VIN Code"],
    "SKC 4 by 7 Converter": [
      "PIN Code",
      "Dealer No",
      "Importer",
      "Date Of Issue"
    ],
    "SKC 7 by 4 Converter": [
      "PIN Code",
      "Dealer no",
      "Importer",
      "Date Of Issue"
    ],
    "PIN Code by VIN": ["VIN Code"],
    "Key code by VIN": ["VIN Code"],
    "Radio code by VIN": ["VIN Code"],
    "Unlock Password": ["Lock key"],
    "Radio code by PCode": ["Precode"],
    "PIN Code by Key tag": ["Key tag"],
    "PIN code by Incode": ["VIN Code", "Outcode", "Incode"],
    "Incode by PIN code": ["VIN Code", "Outcode", "PIN Code"],
    "Clip Reprogramming": ["Request Code"],
    "Incode by outcode": ["Outcode"],
    "Radio code by serial": ["Serial Number"],
    "PIN Code by ISK": ["ISK code"],
    "PIN code by BCM": ["BCM code"],
    "PIN code by ICU": ["Date Code", "Encrypted PIN"],
    "PIN code by SEC": ["Date Code", "Encrypted PIN"],
    "Password by Seed": ["Seed Code", "Function no"],
    "Access Code": ["Request Code"],
    "Barcode by Serial": ["Serial Number", "Fob Type"],
    "Passcode by Seed": ["Seed Code", "VIN Code"],
    "ERC Unlock Code": ["ERC Number"],
    "Teach-in key Again": ["Code Number"],
    "SAM Assignment": ["VIN Code"],
    "SEC Code by VIN": ["VIN Code"],
    "PIN code by ECM": ["ECM ID Code"],
    "Default PIN Code": ["Model Name"],
    "Navigation Code": ["VIN Code", "Serial Number"],
    "ACU Variant Coding": ["VIN Code"],
    "PIN code by G-Box": ["Encrypted PIN"],
    "Response Code": ["Challenge"],
    "ESL Password by EZS": ["EZS Password"],
    "Password by Hash": ["Dealer Hash"],
    "PIN Code by ISN": ["Immo SN"],
  };

  Map<String, String> securityKeys = {
    "First Password": "The First Password will not require any specific input.",
    "Second Password":
        "The Second Password will calculate based on the Number of Inputs provided.",
    "PCM Code by VIN":
        "This calculator will calculate the PCM Code using the provided VIN.",
    "SKC 4 by 7 Converter":
        "This calculator will calculate the SKC 4 by 7 conversion based on the PIN Code, Dealer number, Importer, and Date of issue.",
    "SKC 7 by 4 Converter":
        "This calculator will calculate the SKC 7 by 4 conversion based on the PIN Code, Dealer number, Importer, and Date of issue.",
    "PIN Code by VIN":
        "This calculator will calculate the PIN Code using the provided VIN.",
    "Key code by VIN":
        "This calculator will calculate the Key Code using the provided VIN.",
    "Radio code by VIN":
        "This calculator will calculate the Radio Code using the provided VIN.",
    "Unlock Password":
        "This calculator will calculate the Unlock Password based on the Lock key.",
    "Radio code by PCode":
        "This calculator will calculate the Radio Code using the provided Precode.",
    "PIN Code by Key tag":
        "This calculator will calculate the PIN Code using the Key tag.",
    "PIN code by Incode":
        "This calculator will calculate the PIN Code using the VIN Code, Outcode, and Incode.",
    "Incode by PIN code":
        "This calculator will calculate the Incode using the VIN Code, Outcode, and PIN Code.",
    "Clip Reprogramming":
        "This calculator will calculate based on the Request code for Clip Reprogramming.",
    "Incode by outcode":
        "This calculator will calculate the Incode based on the provided Outcode.",
    "Radio code by serial":
        "This calculator will calculate the Radio Code using the Serial Number.",
    "PIN Code by ISK":
        "This calculator will calculate the PIN Code using the ISK code.",
    "PIN code by BCM":
        "This calculator will calculate the PIN Code using the BCM code.",
    "PIN code by ICU":
        "This calculator will calculate the PIN Code using the Date Code and Encrypted PIN.",
    "PIN code by SEC":
        "This calculator will calculate the PIN Code using the Date Code and Encrypted PIN.",
    "Password by Seed":
        "This calculator will calculate the Password using the Seed Code and Function number.",
    "Access Code":
        "This calculator will calculate the Access Code based on the Request Code.",
    "Barcode by Serial":
        "This calculator will calculate the Barcode using the Serial Number and Fob Type.",
    "Passcode by Seed":
        "This calculator will calculate the Passcode using the Seed Code and VIN Code.",
    "ERC Unlock Code":
        "This calculator will calculate the ERC Unlock Code using the ERC Number.",
    "Teach-in key Again":
        "This calculator will calculate based on the Code Number for Teach-in key Again.",
    "SAM Assignment":
        "This calculator will calculate the SAM Assignment using the provided VIN Code.",
    "SEC Code by VIN":
        "This calculator will calculate the SEC Code using the provided VIN Code.",
    "PIN code by ECM":
        "This calculator will calculate the PIN Code using the ECM ID Code.",
    "Default PIN Code":
        "This calculator will calculate the Default PIN Code using the Model Name.",
    "Navigation Code":
        "This calculator will calculate the Navigation Code using the VIN Code and Serial Number.",
    "ACU Variant Coding":
        "This calculator will calculate the ACU Variant Coding using the VIN Code.",
    "PIN code by G-Box":
        "This calculator will calculate the PIN using Encrypted PIN.",
    "Response Code":
        "This calculator will calculate the Response using Challenge code.",
    "ESL Password by EZS":
        "This calculator will calculate the ESL-Password using ESZ-Password.",
    "Password by Hash":
        "This calculator will calculate the Dealer password using Dealer Hash.",
    "PIN Code by ISN":
        "This calculator will calculate the PIN Code using Immo S/N.",
  };

  final Map<String, TextEditingController> dataControllers = {};

  String? securityCode;
  bool? isProcessing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: const MyAppBar(
        pageTitle: "Fast Code",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 30),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: Text(selectedSecurityKey.toString())),
              DropdownButtonFormField<String>(
                value: selectedBrand,
                decoration: InputDecoration(
                  labelText: "Brand Name:",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                hint: const Text("Select Brand"),
                items: brands.map((brand) {
                  return DropdownMenuItem<String>(
                    value: brand,
                    child: Text(brand),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedBrand = value;
                    selectedCalculationType = null;
                    dataControllers.clear();
                  });
                },
              ),
              const SizedBox(height: 20),
              if (selectedBrand != null)
                DropdownButtonFormField<String>(
                  value: selectedCalculationType,
                  hint: const Text("Select Calculation Type"),
                  decoration: InputDecoration(
                    labelText: "Calculation Type:",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  items: calculationTypes[selectedBrand!]!.map((type) {
                    return DropdownMenuItem<String>(
                      value: type,
                      child: Text(type),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCalculationType = value;

                      selectedSecurityKey =
                          securityKeys[selectedCalculationType];

                      dataControllers.clear();

                      for (var field
                          in requiredData[selectedCalculationType!]!) {
                        dataControllers[field] = TextEditingController();
                      }
                    });
                  },
                ),
              selectedCalculationType != null
                  ? const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child:
                          Text("Please fill up the required fields below..."),
                    )
                  : const Text(""),
              if (selectedCalculationType != null)
                ...requiredData[selectedCalculationType!]!.map((field) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      controller: dataControllers[field],
                      decoration: InputDecoration(
                        labelText: field,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  );
                }),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.appPrimaryRedCLr.withOpacity(.8),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  setState(() {
                    isProcessing = true;
                    securityCode = null; // Clear previous security code
                  });

                  // Prepare the request data
                  Map<String, String> requestData = {};
                  requiredData[selectedCalculationType!]!.forEach((field) {
                    requestData[field] = dataControllers[field]!.text;
                  });

                  print("Request data are:");
                  print("Brand: $selectedBrand");
                  print("Calc Type: $selectedCalculationType");
                  print(requestData);

                  final url =
                      Uri.parse('http://10.114.66.63:5000/code_calculator');
                  try {
                    // Send the data to the Node.js API
                    var response = await http.post(
                      // Uri.parse('http://localhost:4000/code_calculator'),
                      url,
                      headers: <String, String>{
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                      },
                      body: jsonEncode({
                        "brand": selectedBrand,
                        "calculation_type": selectedCalculationType,
                        "data": requestData
                      }),
                    );

                    // Check if the response is successful
                    if (response.statusCode == 200) {
                      var responseBody = jsonDecode(response.body);
                      setState(() {
                        securityCode = responseBody[
                            'security_code']; // Set the security code from API response
                        isProcessing = false;
                      });
                      print("Security code received: $securityCode");
                    } else {
                      // Handle server errors
                      setState(() {
                        isProcessing = false;
                      });
                      print(
                          "Failed to calculate security code. Status code: ${response.statusCode}");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                'Failed to calculate security code: ${response.statusCode}')),
                      );
                    }
                  } catch (e) {
                    // Handle client-side errors (e.g., network issues)
                    setState(() {
                      isProcessing = false;
                    });
                    print("Error occurred while making the API request: $e");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error: $e')),
                    );
                  }
                },
                child: const Text("Calculate Security Code"),
              ),
              isProcessing!
                  ? const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Center(
                          child: CupertinoActivityIndicator(
                        radius: 30,
                        color: Colors.red,
                      )),
                    )
                  : securityCode != null
                      ? Center(
                          child: Container(
                            margin: const EdgeInsets.only(top: 22),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all()),
                            child: Text(
                              "Security Code: $securityCode",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : const Text(
                          "",
                        ),
              const SizedBox(
                height: 30,
              ),
              const AppTagPoweredBy(),
            ],
          ),
        ),
      ),
    );
  }
}
