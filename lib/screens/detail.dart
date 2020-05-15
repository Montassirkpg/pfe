import 'package:flutter/material.dart';
import 'package:fluttergameapp/provider/appProvider.dart';
import 'package:fluttergameapp/screens/games.dart';
import 'package:fluttergameapp/screens/home.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context,listen : false);
    return Scaffold(

      body: Stack(
        children: [
        Container(height: MediaQuery.of(context).size.height,alignment:Alignment(0,1),child:Container(height: MediaQuery.of(context).size.height/8, decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1, -1),
              end: Alignment(-1, 1),
              colors: [
                const Color.fromRGBO(255, 155, 112, 1),
                const Color.fromRGBO(255, 74, 105, 1),
              ], // whitish to gray

            ),
          ),),),
          Positioned(
            bottom: 22.0,
            child: Container(

              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.3), size: 11.0),
                    Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.5), size: 12.0),
                    Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.7), size: 13.0),
                    Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.9), size: 14.0),
                    RotatedBox(child: Icon(Icons.local_airport, color: Colors.white), quarterTurns: 1),
                  ],
                ),
              )
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35.0), bottomRight: Radius.circular(30.0)),
              color: Colors.white
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 310.0,
            child: 
                Image.network(appProvider.currentProduct.picture,width: 600,height: 400,fit: BoxFit.contain,),

          ),
          Positioned(
            top: 400.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 35.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 7.0,
                            ),
                            Text(appProvider.currentProduct.name,
                            style: TextStyle(
                              fontFamily: 'Opensans',
                              fontSize: 27.0,
                              fontWeight: FontWeight.w600
                            )
                            )
                          ],
                        ),
                        Container(
                          height: 60.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: new IconButton(
                            icon: Icon(
                              Icons.play_arrow,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            onPressed: _lunchURL,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                  child: Row(
                  children: <Widget>[
                    Text(appProvider.currentProduct.category,
                        style: TextStyle(
                            fontFamily: 'Opensans',
                            fontSize: 15.0,
                            color: Color(0xFF6A6A6A),
                            fontWeight: FontWeight.w600)),
                    SizedBox(width: 25.0),
                    Stack(
                      children: <Widget>[
                        Container(height: 40.0, width: 100.0),
                        Container(
                          height: 40.0,
                          width: 40.0,
                        ),
                        Positioned(
                          left: 30.0,
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Color(0xFFFE7050)),
                            child: Center(
                              child: Text(appProvider.currentProduct.reviews.toString(),
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white)),
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                    appProvider.currentProduct.price.toString()+'\$',
                    style:
                        TextStyle(color: Color(0xFF6A6A6A), fontFamily: 'Opensans', fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 7.0),
                  Icon(Icons.arrow_drop_down, color: Color(0xFF6A6A6A), size: 25.0)
                  ],
              ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Container(
                    width: 250.0,
                    child: Text('We are happy to have you with us',
                    style:
                        TextStyle(color: Color(0xFF6A6A6A), fontFamily: 'Opensans', fontWeight: FontWeight.w300)
                    ),
                  )
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.0, left: 15.0, right: 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 15.0,
             
            ),
          )
        ]
      ),
    );
  }

  void _lunchURL() async{
    AppProvider appProvider2 = Provider.of<AppProvider>(context,listen : false);
    if(await canLaunch(appProvider2.currentProduct.videourl)){
      await launch(appProvider2.currentProduct.videourl);
    }else{
      throw 'Could not launch the link';
    }
  }
}