import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import './event.dart';
import './temp_data.json';




Future<List<EventParams>> fetchScheduleData() async {
  //final response = await http.get('https://api.github.com/users');
  //print(response.body);
  //List responseJson = json.decode(response.body.toString());


  List responseJson = new File("lib/temp_data.json")
      .readAsString()
      .then((fileContents) => json.decode(fileContents)) as List;


  List<EventParams> eventList = createEventList(responseJson);
  return eventList;
}

List<EventParams> createEventList(List data){
  List<EventParams> list = new List();
  for (int i = 0; i < data.length; i++) {

    String tech = data[i]["tech"];
    String topic = data[i]["topic"];
    String desc = data[i]["desc"];
    String time = data[i]["time"];
    String category = data[i]["category"];
    String speaker_name = data[i]["speaker_name"];
    String count_audience = data[i]["count_audience"];
    String location = data[i]["location"];
    String long_descr = data[i]["long_descr"];
    String speaker_details = data[i]["speaker_details"];
    String co_speaker_name = data[i]["co_speaker_name"];
    String co_speaker_details = data[i]["co_speaker_details"];

    EventParams event = new EventParams(tech,topic,desc,time,category,count_audience,location,long_descr,speaker_name,speaker_details,co_speaker_name,co_speaker_details);
    list.add(event);
  }
  return list;
}