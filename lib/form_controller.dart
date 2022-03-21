import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:rosaapp/widgets/contact_form.dart';




/// FormController is a class which does work of saving FeedbackForm in Google Sheets using
/// HTTP GET request on Google App Script Web URL and parses response and sends result callback.
class FormController {

  // Google App Script Web URL.
  // ignore: non_constant_identifier_names
  var URL = Uri.parse("https://script.google.com/macros/s/AKfycbxeVIjIqkHVEq__sm256J-lEpx47ZEKwQ64ToSdwWpWsix_t8qkAUbwPaLRF03ppOLL/exec");

  // Success Status Message
  static const STATUS_SUCCESS = "SUCCESS";

  /// Async function which saves feedback, parses [feedbackForm] parameters
  /// and sends HTTP GET request on [URL]. On successful response, [callback] is called.
  void submitForm(
      FeedbackForm feedbackForm, void Function(String) callback) async {
    try {
      await http.post(URL, body: feedbackForm.toJson()).then((response) async {
        if (response.statusCode == 302) {
          var url = Uri.parse(response.headers['location'].toString());
          await http.get(url).then((response) {
            callback(convert.jsonDecode(response.body)['status']);
          });
        } else {
          callback(convert.jsonDecode(response.body)['status']);
        }
      });
    } catch (e) {
      print(e);
    }
  }
}