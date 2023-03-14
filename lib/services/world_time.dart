import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location; // location name for UI
  String time; //the time in that location
  String flag; // URL to flag asset icon
  String url; // this is the location for api endpoint

  WorldTime({ this.location, this.flag, this.url });

  class _LoadingState extends State<Loading> {

  void getTime() async{

    // make the request
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    //print(data);

    // get properties from data
    String datetime  = data['datetime'];
    String offset = data['utc_offset'];
    //print(datetime);
    //print(offset);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    //print(now);

    // set the time property
    time = now.toString();
    }
  }
}


