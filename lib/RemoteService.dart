import 'package:http/http.dart' as http;
import 'package:performance/Model/bank_model.dart';
import 'package:performance/Model/data_model.dart';

class RemoteServie{
  static var client = http.Client();
  static const BASE_URL = "https://api.stockedge.com/Api/SecurityDashboardApi/";
  static const GET_BANK_DETAILS = "GetCompanyEquityInfoForSecurity/5051?lang=en";
  static const GET_PERFORMANCE = "GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en";

  static String getUrlForEndPoint(String endPoint) {
    return BASE_URL + endPoint;
  }

  static Future<BankModel> getbankdetail() async {

    String createOrderAPI = getUrlForEndPoint(GET_BANK_DETAILS);
    final response = await http.get(
      Uri.parse(createOrderAPI),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,then parse the JSON.
      final String responseString = response.body;
        return bankModelFromJson(responseString);
      }
    else{
      throw Exception('Failed to get details');
    }
  }

  static Future<List<DataModel>> getdatadetail() async {

    String createOrderAPI = getUrlForEndPoint(GET_PERFORMANCE);
    final response = await http.get(
      Uri.parse(createOrderAPI),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,then parse the JSON.
      final String responseString = response.body;
      return dataModelFromJson(responseString);
    }
    else{
      throw Exception('Failed to get details');
    }
  }
}