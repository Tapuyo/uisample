import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
          color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [

                  Expanded(
                    flex: 1,
                    child:Container(
                      color: Colors.black,
                      width: 20,height: 20,
                      child: Image.asset('assets/images/addcir.png'),),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 2,
                    child:Container(
                      color: Colors.black,
                      child: Image.asset('assets/images/insta.png',),),
                  ),

                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 1,
                    child:Container(
                      color: Colors.black,
                      width: 20,height: 20,
                      child: Image.asset('assets/images/chaticon.png'),),
                  ),



                ],
              ),

              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                height: 100,
                child: Container(

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      HorizontalList()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Text("Explorar", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                            color: Colors.white12,
                            child: TextField(
                              controller: _controller,

                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              )
                            ),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
              ),


              Container(

                padding: EdgeInsets.fromLTRB(10,20,10,20),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20,20,20,20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),

                      color: Colors.white12,
                    ),
                    //height: MediaQuery.of(context).size.height/2,

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage('assets/images/employee_1.jpg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Maoo.lopez", style: TextStyle(color: Colors.white,fontSize: 14),),
                                  Text("Maoo.lopez", style: TextStyle(color: Colors.grey,fontSize: 10,),),
                                ],
                              )
                            ],),
                            Spacer(),

                            Row(children: [
                              Icon(Icons.send, color: Colors.white,),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.menu, color: Colors.white,),
                            ],)
                          ],
                        ),

                        Stack(
                          children: [

                            Container(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: Container(
                                child: Image.asset('assets/images/postimage.png',

                                    fit:BoxFit.fill  ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(10, 400, 0, 0),
                                child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pink,
                                    ),
                                    // width: 100,
                                    // height: 100,

                                      child: Icon(Icons.favorite, color: Colors.white,size: 20,)
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(40, 404, 0, 0),
                                child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(

                                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        color: Colors.grey
                                      ),
                                      // width: 100,
                                      // height: 100,

                                      child: Text("2,122", style: TextStyle(fontSize: 8),)
                                  ),
                                ),
                              ),
                            ),



                          ],
                        ),






                      ],
                    ),
                  )
              )

            ],
          ),
        ),
      ),
    );
  }


  HorizontalList(){
    return Row(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/employee_1.jpg'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(

                padding: EdgeInsets.fromLTRB(23,0,0,0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 10,
                    child: Icon(Icons.add,size: 15,),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
          decoration: new BoxDecoration(
            color: Colors.pink,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/employee_2.jpg'),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
          decoration: new BoxDecoration(
            color: Colors.pink,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/employee_1.jpg'),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
          decoration: new BoxDecoration(
            color: Colors.pink,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/instagramfont.png'),
          ),
        )

      ],
    );
  }
}