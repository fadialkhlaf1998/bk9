import 'package:bk9/const/app-style.dart';
import 'package:bk9/controller/intro_controller.dart';
import 'package:bk9/widgets/container_with_image.dart';
import 'package:bk9/widgets/custom_container.dart';
import 'package:bk9/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewContainer extends StatelessWidget {
  final double width;
  final double height;
  final List<Object> myList;
  final IntroController introController;


  const CustomListViewContainer({
    required this.myList,
    required this.width,
    required this.height,
    required this.introController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppStyle.getDeviceWidthPercent(90, context),
        height: height,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1
          ),
          itemCount: introController.events.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index) {
            return Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: width,
                      height: AppStyle.getDeviceHeightPercent(18, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(introController.events[index].image!),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: AppStyle.blue,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                introController.events[index].title!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonTextStyle.smallTextStyle,
                                    overflow: TextOverflow.ellipsis
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                introController.events[index].subTitle!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: CommonTextStyle.smallTextStyle,
                                    overflow: TextOverflow.ellipsis
                                ),
                              ),
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            );
          },
        )
    );
  }
}
