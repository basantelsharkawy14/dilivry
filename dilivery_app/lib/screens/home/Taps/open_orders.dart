import 'package:dilivery_app/screens/help/constants.dart';
import 'package:dilivery_app/screens/help/help.dart';
import 'package:dilivery_app/screens/order_details/order_details_screen.dart';
import 'package:flutter/material.dart';

class OpenedOrders extends StatefulWidget {
  const OpenedOrders({Key? key}) : super(key: key);

  @override
  _OpenedOrdersState createState() => _OpenedOrdersState();
}

class _OpenedOrdersState extends State<OpenedOrders> {
  bool _isRecieved = false;
  bool  _isNotRecieved= true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => InkWell(
          onTap: (){
            //   helpNavigateTo(context, DeviceDetails());
          },
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 12,bottom: 8),
                  child: Text("# 7472", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/t.png'),
                              fit: BoxFit.cover,
                            ),),),
                        //child: Image.asset("assets/images/t.png")),
                        Text("Call Customer", style: TextStyle(color: kColorAccent,fontSize: 11),),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/r.png'),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        //    child: Image.asset("assets/images/restaurant.png",height: 30,width: 30,)),
                        Text("Restaurant Location", style: TextStyle(color: kColorAccent,fontSize: 11),),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/map.png'),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        //   child: Image.asset("assets/images/map.png")),
                        Text("Customer Location", style: TextStyle(color: kColorAccent,fontSize: 11),),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22.0, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(onTap: (){
                        helpNavigateTo(context, OrderDetailsScreen());
                      },
                        child: Container(
                          color: kColorGray.withOpacity(.3),
                          width: 130,
                          height: 30,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Order Details", style: TextStyle(fontSize: 12),),
                              Icon(Icons.arrow_drop_down_circle_outlined, size: 15,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: _isNotRecieved,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          _isNotRecieved= false;
                          _isRecieved = true;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 33,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Recieved From The Restaurant", style: TextStyle(fontSize: 14),),
                            Icon(Icons.check_circle,color: Colors.green, size: 18,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: _isRecieved,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Delivered", style: TextStyle(fontSize: 12),),
                              Icon(Icons.check_circle,color: Colors.green, size: 15,)
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Unable To Delivered", style: TextStyle(fontSize: 12),),
                              Icon(Icons.remove_circle,color: Colors.red, size: 15,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
