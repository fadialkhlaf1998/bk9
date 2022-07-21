import 'package:bk9/const/app-style.dart';
import 'package:bk9/widgets/background_image.dart';
import 'package:bk9/widgets/container_with_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FAQ extends StatelessWidget {

  var open1 = (-1).obs;
  var open2 = (-1).obs;
  var open3 = (-1).obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              BackgroundImage(),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _header(context),
                    SizedBox(height: 30),
                    _body(context),
                    SizedBox(height: 20,)
                  ],
                ),
              )
            ],
          ),
        )
    ));
  }
  _header(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: AppStyle.getDeviceWidthPercent(100, context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 20,
            spreadRadius: 1,
            offset: Offset(5.0, 5.0,),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back,size: 23,)
              ),
              SizedBox(width: 25),
              Container(
                width: AppStyle.getDeviceWidthPercent(45, context),
                child: Text("FAQ",
                    style: TextStyle(
                      fontSize: CommonTextStyle.mediumTextStyle,
                      color: AppStyle.darkGrey,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 3),
              child: ContainerWithImage(
                  width: 40,
                  height: 70,
                  image: "assets/icons/wishlist.svg",
                  color: Colors.transparent,
                  option: 0)
          )
        ],
      ),
    );
  }
  _body(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              GestureDetector(
                onTap:(){
                  if(open1.value == 0){
                    open1.value = -1;
                  }
                  else{
                    open1.value = 0;
                  }
                },
                child: Container(
                  width: AppStyle.getDeviceWidthPercent(90, context),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(5.0, 5.0,),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppStyle.getDeviceWidthPercent(63, context),
                          child: Text("How do I setup an account?",
                            style: TextStyle(
                              color: AppStyle.productGrey,
                              fontSize: CommonTextStyle.mediumTextStyle,
                            ),),
                        ),
                        Icon(Icons.add, color: AppStyle.primary)
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedSize(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
                child: Container(
                  width: AppStyle.getDeviceWidthPercent(90, context),
                  child: !(open1.value == 0)
                      ? Center()
                      :  Container(
                    width: AppStyle.getDeviceWidthPercent(90, context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: AppStyle.getDeviceWidthPercent(80, context),
                            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                              style: TextStyle(
                                color: AppStyle.productGrey,
                                fontSize: CommonTextStyle.smallTextStyle,
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          child: Column(
            children: [
              GestureDetector(
                onTap:(){
                  if(open2.value == 0){
                    open2.value = -1;
                  }
                  else{
                    open2.value = 0;
                  }
                },
                child: Container(
                  width: AppStyle.getDeviceWidthPercent(90, context),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(5.0, 5.0,),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppStyle.getDeviceWidthPercent(63, context),
                          child: Text("I can't find a product",
                            style: TextStyle(
                              color: AppStyle.productGrey,
                              fontSize: CommonTextStyle.mediumTextStyle,
                            ),),
                        ),
                        Icon(Icons.add, color: AppStyle.primary)
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedSize(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
                child: Container(
                  width: AppStyle.getDeviceWidthPercent(90, context),
                  child: !(open2.value == 0)
                      ? Center()
                      :  Container(
                    width: AppStyle.getDeviceWidthPercent(90, context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: AppStyle.getDeviceWidthPercent(80, context),
                            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                              style: TextStyle(
                                color: AppStyle.productGrey,
                                fontSize: CommonTextStyle.smallTextStyle,
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          child: Column(
            children: [
              GestureDetector(
                onTap:(){
                  if(open3.value == 0){
                    open3.value = -1;
                  }
                  else{
                    open3.value = 0;
                  }
                },
                child: Container(
                  width: AppStyle.getDeviceWidthPercent(90, context),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(5.0, 5.0,),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppStyle.getDeviceWidthPercent(63, context),
                          child: Text("I can't add an item to my basket",
                            style: TextStyle(
                              color: AppStyle.productGrey,
                              fontSize: CommonTextStyle.mediumTextStyle,
                            ),),
                        ),
                        Icon(Icons.add, color: AppStyle.primary)
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedSize(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
                child: Container(
                  width: AppStyle.getDeviceWidthPercent(90, context),
                  child: !(open3.value == 0)
                      ? Center()
                      :  Container(
                    width: AppStyle.getDeviceWidthPercent(90, context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: AppStyle.getDeviceWidthPercent(80, context),
                            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                              style: TextStyle(
                                color: AppStyle.productGrey,
                                fontSize: CommonTextStyle.smallTextStyle,
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


}