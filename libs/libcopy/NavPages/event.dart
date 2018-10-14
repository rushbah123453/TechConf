
import 'package:flutter/material.dart';
import './session_page.dart';
import './slide_right_transition.dart';
class EventParams
{
  final String tech;
  final String topic;
  final String desc;
  final String time;
  final String category;
  final String speaker_name;
  final String count_audience;
  final String location;
  final String long_descr;
  final String speaker_details;
  final String co_speaker_name;
  final String co_speaker_details;


  EventParams(this.tech,this.topic,this.desc,this.time,this.category,this.count_audience,this.location,this.long_descr,this.speaker_name,this.speaker_details,this.co_speaker_name,this.co_speaker_details);
}
class Event extends StatelessWidget
{

  final EventParams e;

  Event({Key key, @required this.e}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      new Card(
        color: Colors.white,
        child:new GestureDetector(
          onTap: (){

            Navigator.push(
              context,
              SlideRightRoute(widget: SessionDetails(e: e,)),
            );


             },
          child: new Row(


          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Expanded(
              flex: 1,

              child:
              new Column(

                mainAxisSize: MainAxisSize.min,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  new Text(e.time,textAlign: TextAlign.center,textScaleFactor: 1.2,style: new TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            new Expanded(


              flex: 4,
              child: new Container(

                padding: const EdgeInsets.all(8.0),
                color: Colors.white,

                margin: const EdgeInsets.all(12.0),
                child:

                new Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Row(

                        children:[new Chip(

                          avatar: new CircleAvatar(

                            backgroundColor: Colors.lightBlueAccent,
                            child: new Text(e.tech,style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                          ),
                          label: new Text(e.topic,textScaleFactor: 1.2,style: new TextStyle(fontWeight: FontWeight.bold,)),
                          backgroundColor: Colors.white,
                        ),


                        ]),
                    new Text(e.desc,style: new TextStyle(fontStyle: FontStyle.italic,color: Colors.black54.withOpacity(0.8) )),


                  ],
                ),

              ),





            ),

          ],

        )



        ,
        )
      );

  }

}