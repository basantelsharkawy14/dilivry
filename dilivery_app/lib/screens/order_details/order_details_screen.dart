import 'package:dilivery_app/screens/help/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Order Details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Order Number: 6789",
                style: TextStyle(
                    color: kColorPrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                    child: Text(
                  "فرع المبرز Mubarraz",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ))),
            Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  padding: EdgeInsets.only(right: 20, left: 20,bottom: 15),
                  width: double.infinity,
                  child: Text(
                    "المبرز-الراشدية-طريق الملك فيصل",
                    style: TextStyle(
                        color: kColorGray.withOpacity(.4),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )),
        for(int i =0; i<3;i++)
        Container(
          height: 60,
          margin: EdgeInsets.only(bottom: 8),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color(0xffF2F2F2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                Text(
                  "1",
                  //  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.green, fontSize: 16.0,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "asli falafil",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontSize: 16.0),
                ),
              ],
            ),
              Text(
                "R.S40.0",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kColorPrimary, fontSize: 16.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20, bottom: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Method",
                    //  textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(.5), fontSize: 16.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "نقدي",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kColorPrimary, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery",
                    //  textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(.5), fontSize: 16.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "0.0 R.S",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kColorPrimary, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Value Added",
                    //  textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(.5), fontSize: 16.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "0.0 R.S",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kColorPrimary, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    //  textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(.5), fontSize: 16.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "44.0 R.S",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kColorPrimary, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20, bottom: 5,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount By Promo Code",
                    //  textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(.5), fontSize: 16.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "0.0 R.S",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kColorPrimary, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount By Substituted Points",
                    //  textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(.5), fontSize: 16.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "0.0 R.S",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kColorPrimary, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20,top: 20,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    //  textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "100.0 R.S",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kColorPrimary, fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
