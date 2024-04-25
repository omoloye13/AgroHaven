import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowHandler extends StatelessWidget {
  const ShowHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: ScreenUtil().setWidth(
            MediaQuery.of(context).size.width,
          ),
          // height: MediaQuery.of(context).size.height * 0.9,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Set Filters',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Category',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'UI/Ux Design',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sub-Category',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Graphics Design',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ],
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Text('Location'),
            //     Text('Salary')

            // ]
            // ),
          ),
        ),
      ],
    );
  }
}
