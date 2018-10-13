
import './event.dart';
import 'package:flutter/material.dart';

class FullDaySchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            bottom: TabBar(
              indicatorColor: Colors.teal,

              tabs: [
                Tab(text:"Day 1:"),
                Tab(text:"Day 2"),

              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.schedule,

                ),
                Container(
                    padding: const EdgeInsets.all(8.0), child: Text('Schedule 2018')),
                Icon(
                  Icons.bookmark_border,
                )
              ],

            ),
          ),
          body:  TabBarView(
            children: [
              new DataForDay(day_number: "1",),
              new DataForDay(day_number: "2",),
              //new Text("Coming Soon",textAlign: TextAlign.center),

            ],

          ),
        ),
      ),
    );
  }
}

class DataForDay extends StatelessWidget
{
  final String day_number ;
  DataForDay({Key key, @required this.day_number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    if (day_number == "1") {
      return new Scaffold(
          body: new Container(

              child:
              new Column(
                children: <Widget>[

                  new Event(e: new EventParams(
                      "C",
                      "Microsoft Azure Cloud",
                      "UBS and the Azure world",
                      "01 pm \n|\n 02 pm",
                      "Cloud",
                      "100",
                      "7th floor, Ganga",
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                      "Paulo Shinman",
                      "Speaker detailed Info",
                      "Co-speaker name",
                      "details of co-speaker")),
                  new Event(e: new EventParams(
                      "A",
                      "VCI",
                      "Quisque porta volutpat erat.",
                      "06 am \n|\n 7 am",
                      "Automation",
                      "12",
                      "Drive",
                      "Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.",
                      "Zackariah Kalberer",
                      "Proin at turpis a pede posuere nonummy. Integer non velit.",
                      "Sheffie Tampling",
                      "Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.")),
                  new Event(e: new EventParams(
                      "B",
                      "ATR-FTIR",
                      "Suspendisse accumsan tortor quis turpis.",
                      "07 am \n|\n 08 am",
                      "Un-Bundling",
                      "79",
                      "Pass",
                      "Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.",
                      "Doug Marquez",
                      "Proin risus. Praesent lectus.",
                      "Yul Bohlsen",
                      "Fusce consequat. Nulla nisl.")),
                  new Event(e: new EventParams(
                      "C",
                      "XAUI",
                      "Donec semper sapien a libero.",
                      "08 am \n|\n 09 am",
                      "Cloud",
                      "4",
                      "Crossing",
                      "Nulla facilisi. Cras non velit nec nisi vulputate nonummy.",
                      "Pauli Tite",
                      "In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.",
                      "Sydney Lightman",
                      "Ut at dolor quis odio consequat varius. Integer ac leo.")),

                ],
              )


          )
      );
    }
    if(day_number == "2") {
      return new Scaffold(
          body: new Container(

              child:
              new Column(
                children: <Widget>[


                  new Event(e: new EventParams(
                      "D",
                      "NRC",
                      "Curabitur convallis.",
                      "09 am \n|\n 10 am",
                      "Data",
                      "69",
                      "Center",
                      "Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.",
                      "Cathee Clemits",
                      "Proin at turpis a pede posuere nonummy. Integer non velit.",
                      "Marcellina Aleksandrikin",
                      "Aenean fermentum. Donec ut mauris eget massa tempor convallis.")),
                  new Event(e: new EventParams(
                      "E",
                      "TDA",
                      "Quisque ut erat.",
                      "10 am \n|\n 11 am",
                      "Experience",
                      "81",
                      "Pass",
                      "Duis consequat duinec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.",
                      "Reta Spall",
                      "Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.",
                      "Ofelia Haylands",
                      "Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.")),

                  new Event(e: new EventParams(
                      "B",
                      "Akamai",
                      "In est risus, auctor sed, tristique in, tempus sit amet, sem.",
                      "01 pm \n|\n 02 pm",
                      "Un-Bundling",
                      "94",
                      "Avenue",
                      "Pellentesque at nulla. Suspendisse potenti.",
                      "Odette Morena",
                      "Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.",
                      "Dav Rame",
                      "Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.")),
//                  new Event(e: new EventParams("A","Pattern Recognition","How PR is changing the AI world","09 am \n|\n 10 am","Automation","45","9th floor, Raman","Lorem Ipsum is simply dummy text. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.","Paul Ohio","Speaker detailed Info","Co-speaker name","details of co-speaker")),
//
//                  new Event(e:new EventParams("B","Unbundling" ,"Seek the benefits unbundling ","10 am \n|\n 11 am","Unbundling","100","8th floor, Chakan","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.","Neuman Ohio","Speaker detailed Info","Co-speaker name","details of co-speaker")),

                ],
              )


          )
      );
    }



  }

}

