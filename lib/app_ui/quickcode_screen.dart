import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/utils/app_colors.dart';
import 'package:http/http.dart' as http;

class QuickCodeScreen extends StatefulWidget {
  const QuickCodeScreen({super.key});

  @override
  State<QuickCodeScreen> createState() => _QuickCodeScreenState();
}

class _QuickCodeScreenState extends State<QuickCodeScreen> {
  File? vinNumberTextImage;
  final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

  String _extractText = '';

  /// Get image from gallery
  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        vinNumberTextImage = File(pickedFile.path);
      });
      _extractTextFromImage();

      // Get.to(
      //   CropSample(imageToCrop: pickedFile.path),
      // );
    }
  }

  /// Get image from Camera
  _getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        vinNumberTextImage = File(pickedFile.path);
      });
      _extractTextFromImage();
      // Get.to(
      //   CropSample(imageToCrop: pickedFile.path),
      // );
    }
  }

  ///
  /// capture text from an image
  ///
  _extractTextFromImage() async {
    final RecognizedText recognizedText = await textRecognizer
        .processImage(InputImage.fromFile(vinNumberTextImage!));
    String text = recognizedText.text;
    for (TextBlock block in recognizedText.blocks) {
      final Rect rect = block.boundingBox;
      final List<Point<int>> cornerPoints = block.cornerPoints;
      final String text = block.text;
      final List<String> languages = block.recognizedLanguages;

      _extractText = '';
      for (TextLine line in block.lines) {
        for (TextElement element in line.elements) {
          _extractText = "$_extractText${element.text}";
        }
      }
    }
    _vinNumberCodeController.text = _extractText;
  }

  final TextEditingController _vinNumberCodeController =
      TextEditingController();

  // final TextEditingController _techIDController = TextEditingController();
  // final TextEditingController _locationIDController = TextEditingController();

  /// data for dropdown buttons starts from here
  String? _selectedMakeInitial;
  String? _selectedTypeInitial;

  final selectMakeList = [
    "Kia",
    "Hyundai",
    "Toyota",
    "Mitsubishi",
    "Ford",
    "Honda",
    "Volkswagen",
    "BMW",
    "Mercedes-Benz",
    "Nissan",
    "Audi"
  ];
  final selectTypeList = [
    "VIN -> Key",
    "BCN -> PIN",
  ];

  List<DropdownMenuItem<String>> _createMakeList() {
    return selectMakeList
        .map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(e),
          ),
        )
        .toList();
  }

  List<DropdownMenuItem<String>> _createTypeList() {
    return selectTypeList
        .map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(e),
          ),
        )
        .toList();
  }

  bool _isLoading = false;
  bool _isDataRetrieve = false;
  String _message = '';
  String _carModel = '';
  String _type = '';
  String _key = '';
  String _vinCode = '';

  void _fetchData() async {
    setState(() {
      _isLoading = true;
      _isDataRetrieve = false;
    });
    final Map<String, dynamic> requestData = {
      'carMaker': _selectedMakeInitial,
      'type': _selectedTypeInitial,
      'vinKey': _vinNumberCodeController.text.toString(),
    };

    final url = Uri.parse('http://10.141.16.196:4000/calculate');
    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(requestData),
      );
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        setState(() {
          _message = responseData['message'];
        });
        // Access other data from the response
        _carModel = responseData['additionalData']['carMaker'];
        _type = responseData['additionalData']['type'];
        _key = responseData['additionalData']['vinKey'];
        _vinCode = responseData['additionalData']['keyCode'];
        // Example of printing the retrieved data
        print('Car Model: $_carModel');
        print('Type: $_type');
        print('Key: $_key');
        print('VIN Code: $_vinCode');
      } else {
        setState(() {
          _message = 'Error: ${response.statusCode}';
        });
      }
      setState(() {
        _isDataRetrieve = true;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _message = "Error: $e";
        _isLoading = false;
        _isDataRetrieve = true;
      });
    }
  }

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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Column(
                  children: [
                    ///
                    /// Select maker dropdown Menu starts from here
                    ///
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: DropdownButton(
                        underline: Container(),
                        items: _createMakeList(),
                        isDense: false,
                        isExpanded: true,
                        hint: const Text("Select Make"),
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                ),
                        value: _selectedMakeInitial,
                        onChanged: (String? value) => setState(() {
                          _selectedMakeInitial = value ?? "";
                        }),
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Colors.black,
                    ),

                    ///
                    /// Select type dropdown Menu starts from here
                    ///
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: DropdownButton(
                        underline: Container(),
                        items: _createTypeList(),
                        isDense: false,
                        isExpanded: true,
                        hint: const Text("Select Type"),
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                ),
                        value: _selectedTypeInitial,
                        onChanged: (String? value) => setState(() {
                          _selectedTypeInitial = value ?? "";
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        "Vin number",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(.6),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),

              ///
              /// Vin number field starts from here
              ///
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  controller: _vinNumberCodeController,
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        border: Border.fromBorderSide(BorderSide(
                          color: AppColors.appPrimaryRedCLr.withOpacity(.5),
                        )),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: AppColors.appPrimaryRedCLr.withOpacity(.3),
                      ),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          tooltip: "Scan or Capture code",
                          style: IconButton.styleFrom(
                            visualDensity:
                                VisualDensity.adaptivePlatformDensity,
                          ),
                          icon: const Icon(
                            Icons.qr_code_scanner_sharp,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            galleryCameraButton();
                          },
                        ),
                      ),
                    ),
                    fillColor: Colors.white,
                    // contentPadding:
                    // const EdgeInsets.only( left: 12, right: 12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: "Enter Vin number",
                    hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.3),
                        ),
                  ),
                ),
              ),
              // Card(
              //   child: Image.file(vinNumberTextImage!),
              // ),
              // Text(vinNumberTextImage!.path),
              // const SizedBox(
              //   height: 20,
              // ),
              // QuickCodeTextField(
              //   fieldController: _techIDController,
              //   prefixText: "Tech ID",
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // QuickCodeTextField(
              //   fieldController: _locationIDController,
              //   prefixText: "Location ID",
              // ),
              const SizedBox(
                height: 20,
              ),

              ///
              /// submit button starts from here
              ///
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appPrimaryRedCLr,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Get.to(CropSample(imageToCrop: ,));
                    _fetchData();
                  },
                  child: Text(
                    "Submit",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
              _isLoading
                  ? Container(
                      padding: const EdgeInsets.symmetric(vertical: 60),
                      child: const CircularProgressIndicator(
                        color: Colors.red,
                      ),
                    )
                  : Container(),
              if (_isDataRetrieve)
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all()),
                  child: Column(
                    children: [
                      Text(_message),
                      const Divider(),
                      Row(
                        children: [
                          const Text('Brand Name: '),
                          Text(_carModel),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('Type: '),
                          Text(_type),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('VinKey: '),
                          Text(_key),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Text('Key Code Generated: '),
                          Text(
                            _vinCode,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              else
                Container(),
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

  ///
  /// Pick image from gallery or take image using camera buttons
  ///
  galleryCameraButton() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            height: 120,
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      _getFromGallery();
                      Get.back();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image_search,
                          size: 50,
                          color: AppColors.appPrimaryRedCLr.withOpacity(.6),
                        ),
                        Text(
                          'Pick From Gallery',
                          style: TextStyle(
                            color: AppColors.appPrimaryBlackCLr,
                          ),
                        )
                      ],
                    ),
                  ),
                  VerticalDivider(
                    endIndent: 15,
                    indent: 15,
                    width: 1,
                    color: Colors.black.withOpacity(.7),
                  ),
                  InkWell(
                    onTap: () {
                      _getFromCamera();
                      Get.back();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: AppColors.appPrimaryRedCLr.withOpacity(.6),
                          size: 50,
                        ),
                        Text(
                          'Take an Image',
                          style: TextStyle(
                            color: AppColors.appPrimaryBlackCLr,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
