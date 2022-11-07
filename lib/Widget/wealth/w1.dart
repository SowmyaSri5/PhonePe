import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Createwealth extends StatelessWidget {
  const Createwealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        // SizedBox(
        //   height: height*0.02,
        // ),
        //Icon(Icons.search_outlined),
        Container(
          width: width*0.98,
          height: height*0.08,
          padding: EdgeInsets.all(10),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon:  Icon(
                Icons.search_outlined,
                size: 30.sp,
                color: Colors.black,
              ),
              label:  Text("Search by store name or phone number",
                style: TextStyle(
                  fontSize: 10.sp,
                ),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(200),
              ),
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

          child:
                  Container(
                    height: height * 0.19,
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Create wealth with SIP",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 14.sp),
                          ),

                          subtitle:  Text(
                            "4.5cr+ SIP investments every month.Grow \n your money with SIP now.",
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                          // trailing: Image.network(
                          //   "https://st.depositphotos.com/2627021/3210/i/600/depositphotos_32108625-stock-photo-hands-of-a-child-taking.jpg",
                          //   //height: 60,width: 100,
                          // ),
                        ),
                        SizedBox(
                          height: height*0.01,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FloatingActionButton.extended(
                              onPressed: () {},
                              backgroundColor: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),

                              // icon: Icon(Icons.save),
                              label: Text(
                                "START A SIP  >",
                                style: TextStyle(
                                fontSize: 10.sp,
                                ),

                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

              ),
            ],


    );
  }
}
