import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;

class Maid extends StatefulWidget {
  @override
  _MaidState createState() => _MaidState();
}

class _MaidState extends State<Maid> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Text('Maid Account',
            style: TextStyle(
              color: Color(0xfff20BDff), fontSize: 30,
              // shadows: [
              //   Shadow(color: Colors.black, offset: Offset(-1.0, 2.0)),
              //   Shadow(color: Colors.black, offset: Offset(-2.0, -2.0)),
              //   Shadow(color: Colors.black, offset: Offset(1.0, -2.0))
              // ]
            )),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xfff20BDff)),
      ),
      body: Container(
        child:
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         end: Alignment.topCenter,
            //         begin: Alignment.bottomCenter,
            //         colors: [
            //       Colors.white,
            //       Color(0xfff20BDFF),
            //       //Color(0xff1034a6)
            //     ])),
            ListView(
          children: <Widget>[
            // Container(
            //   height: 150,
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //           end: Alignment.centerLeft,
            //           begin: Alignment.centerRight,
            //           colors: [
            //         Colors.white,
            //         Color(0xfff20BDFF),
            //         //Color(0xff1034a6)
            //       ])),
            //   child: Center(
            //     child: Text('Maid Account',
            //         style:
            //             TextStyle(color: Colors.white, fontSize: 40, shadows: [
            //           Shadow(color: Colors.black, offset: Offset(-1.0, 2.0)),
            //           Shadow(color: Colors.black, offset: Offset(-2.0, -2.0)),
            //           Shadow(color: Colors.black, offset: Offset(1.0, -2.0))
            //         ])),
            //   ),
            // ),
            SizedBox(height: 30),
            Card(
                elevation: 5,
                margin: EdgeInsets.only(left: 10, right: 10),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xfff20bdff), width: 3),
                        borderRadius: BorderRadius.circular(5)),
                    child: CalendarCarousel(
                      width: double.infinity,
                      height: 400,
                      // markedDatesMap: EventList(events: <DateTime, List<dynamic>>{
                      //   new DateTime(2019, 3, 15): ["Party"]
                      // }),
                      markedDateShowIcon: false,
                      markedDateIconBorderColor: Colors.red,
                      todayButtonColor: Colors.blue,
                      todayBorderColor: Colors.black,
                      daysHaveCircularBorder: true,
                    ))),
            // Container(
            //   height: 60,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     border: Border.all(color: Color(0xfff20BDff), width: 3),
            //     //color: Color(0xfff20BDff),
            //   ),
            //   margin: EdgeInsets.only(top: 20, left: 16, right: 16),
            //   child:
            SizedBox(height: 30),
            Card(
              margin: EdgeInsets.only(left: 10, right: 10),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xfff20bdff), width: 3),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                          image: AssetImage('assets/images/maid_leave.png'),
                          height: 30,
                          width: 30),
                      Text('Number of leaves: $x',
                          style: TextStyle(
                              fontSize: 20, color: Color(0xfff20BDff))),
                      IconButton(
                        icon: Icon(Icons.add_box,
                            color: Color(0xfff20BDff), size: 35),
                        onPressed: () {
                          setState(() {
                            x++;
                          });
                        },
                      )
                    ],
                  )),
              elevation: 10,
            ),
            SizedBox(height: 30),
            Card(
              margin: EdgeInsets.only(left: 10, right: 10),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 10,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xfff20bdff), width: 3),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image(
                        image: AssetImage('assets/images/bill.png'),
                        height: 30,
                        width: 30),
                    Text('Monthly bill: Rs. 2000',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xfff20BDff))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
