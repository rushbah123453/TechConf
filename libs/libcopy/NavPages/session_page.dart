//On event clicked on Fulldayschedule--> this page is opened that contains speaker details.. event details etc


import 'dart:async';

import './event.dart';
import 'package:flutter/material.dart';

// Navigator.pop(context);

class SessionDetails extends StatelessWidget {
  double rating = 3.5;
  int starCount = 6;
  final EventParams e;

  SessionDetails({Key key, @required this.e}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    Padding buildRowCellTitle(IconData icon, String text, Color color)
    {
      return Padding(
          padding: new EdgeInsets.only(top:10.0),
          child: Row(
              children:[Icon(
                icon,
                size: 35.0,
                color:color,
              ),
              Text(text,style: TextStyle(fontSize: 15.0))
              ]
          )
      );
    }

    Container onSpeakerPressed()
    {

        return new Container(

          child:new Card(
              color: Colors.white,
            child:Padding(

            padding: const EdgeInsets.all(35.0),

      child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  new Text(
                    "Speaker:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontStyle : FontStyle.italic,
                      color: Colors.grey[800],
                    ),
                  ),

              Padding(
              padding: const EdgeInsets.all(8.0),
                        child:
                new Text(
                      e.speaker_name,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight : FontWeight.bold,
                        color: Colors.grey[900],
                      ),
                    ),),

              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  new Text(
                      e.speaker_details,

                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.lightBlue,
                      ),
                    ),),
                  new Text(
                    "Co-Speakers:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontStyle : FontStyle.italic,
                      color: Colors.grey[800],
                    ),
                  ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                    new Text(
                      e.co_speaker_name,

                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight : FontWeight.bold,
                        color: Colors.grey[900],
                      ),
                    ),),

              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                    new Text(
                      e.co_speaker_details,

                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.lightBlue,
                      ),
                    )),



                ]
            )
            )
          )
        );



    }

    Container onAddschedulePressed(){
        return new Container(child:Center(child: Text("Schedule"),));
    }

    Container onRatePressed(){
      return new Container(child:Center(child: Text("Rate session"),));
    }

    Container buildButtonColumn(IconData icon, String label,String i) {
      Color color = Colors.black;

      return
        new Container(
            child:new GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context, builder: (BuildContext context){
                if(i=="1")
                  {
                    return onSpeakerPressed();
                  }
                else if(i=="2")
                {
                  return  onAddschedulePressed();
                }
                else if(i=="3")
                {
                  return onRatePressed();
                }
              });

              /*Navigator.push(
          context,
          SlideRightRoute(widget: SessionDetails(e: e,)),
        );*/
      },
      child:

      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      )
      )
        );
    }


  Widget titleSection = Container(
    padding: const EdgeInsets.only(left:20.0,bottom:30.0,right:20.0),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  e.topic,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.5,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildRowCellTitle(Icons.assignment_ind,'  '+e.speaker_name,Colors.grey),
                  //buildRowCellTitle(Icons.people,'   41',Colors.teal[800]),

                  Padding(
                  padding: new EdgeInsets.only(top:10.0,right: 60.0),
                  child: Row(
                        children:[Icon(
                          Icons.people,
                        size: 35.0,
                        color:Colors.grey,
                        ),
                        Text('   '+e.count_audience,style: TextStyle(fontSize: 15.0))
                        ]
                        )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildRowCellTitle(Icons.room,'  '+e.location,Colors.grey),
                  buildRowCellTitle(Icons.av_timer,e.time.replaceAll("\n|\n", "-"),Colors.grey),
                ],
              )

            ],
          ),
        ),


      ],
    ),
  );





  Widget buttonSection =
  new Card(
    child:Padding(
      padding: const EdgeInsets.all(20.0),

      child:Container(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            buildButtonColumn(Icons.speaker_group, 'Speaker',"1"),
            buildButtonColumn(Icons.add_alert, 'Add to Schedule',"2"),
            buildButtonColumn(Icons.rate_review, 'Rate session',"3"),
      ],
    ),
  )));

  Widget bottomSection = new Card(
      child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:
              Text(
                "Description",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18.1,
                  color: Colors.grey[900],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:Text(
                e.long_descr,

                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ),
          ]
      )

  );
  return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        children: [

          new Card(
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child:new Chip(
                  backgroundColor: Colors.white,
                  avatar: new CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                    child: new Text(e.tech,style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  ),
                  label: new Text(e.category,textScaleFactor: 1.2,style: new TextStyle(fontWeight: FontWeight.bold)),
                )),
          titleSection,
          ]
          )

          ),
          buttonSection,
          bottomSection

        ],
      ),


    );
  }


}