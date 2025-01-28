import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class VinDecodeAPI {
  // Future<void> decodeVin({required String vinCode}) async {
  //   const String apiKey = "6AiAkO2efM587gnzKcaenUtPYUSYxqRvWbttSCT3";
  //   var vin = "1HGEJ6129WL104842";
  //   var url = Uri.parse("https://api.api-ninjas.com/v1/vinlookup?vin=$vinCode");
  //
  //   try {
  //     var response = await http.get(url, headers: {'X-Api-Key': apiKey});
  //
  //     if (response.statusCode == 200) {
  //       var jsonResponse =
  //           convert.jsonDecode(response.body) as Map<String, dynamic>;
  //       setState(() {
  //         carDetail = jsonResponse;
  //         isProcess == false;
  //       });
  //       print('Vehicle Information: $carDetail');
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text(
  //             'Request failed with status: ${response.statusCode}.',
  //           ),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }
}
