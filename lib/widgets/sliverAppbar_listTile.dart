import 'package:flutter/material.dart';

class Sliver_Appbar extends StatefulWidget {
  const Sliver_Appbar({Key? key}) : super(key: key);

  @override
  State<Sliver_Appbar> createState() => _Sliver_AppbarState();
}

class _Sliver_AppbarState extends State<Sliver_Appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("This is sliver appbar"),
            centerTitle: true,
            backgroundColor: Colors.purple,
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            //expandedHeight: 200,
            floating: false,
          ),

          
          SliverList(delegate: SliverChildListDelegate(
            [

              Contract_List(
                img: 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
                name: "Kazi Masum",
                number: "01310317475",
              ),
              SizedBox(height: 10,),

              Contract_List(
                img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwwleRUfpgxI1lkv4QADeBTChb42Bdw-u9gesXuVsmvaGnk0S03x0cf4I6ER5ZuN3XJBw&usqp=CAU",
                name: "Jhon",
                number: "0132121212",
              ), SizedBox(height: 10,),
              Contract_List(
                img: "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80",
                name: "Kalvin",
                number: "019888888",
              ), SizedBox(height: 10,),
              Contract_List(
                img: "https://media.istockphoto.com/id/899699408/photo/portrait-of-handsome-bearded-man-with-blue-eyes-against-white-background.jpg?s=612x612&w=0&k=20&c=TqN9Lf-RjY3Y8jvCtzwRu8iXI-cUzxxAzXWvppSFC0E=",
                name: "Lisan",
                number: "019000888",
              ), SizedBox(height: 10,),
              Contract_List(
                img: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
                name: "Kylin",
                number: "019800000",
              ), SizedBox(height: 10,),
              Contract_List(
                img: "https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg",
                name: "Kalvin",
                number: "019888888",
              ), SizedBox(height: 10,),
              Contract_List(
                img: "https://cdn-icons-png.flaticon.com/512/21/21104.png",
                name: "Kalin",
                number: "019000000000",
              ), SizedBox(height: 10,),
              Contract_List(
                img: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
                name: "Kylin",
                number: "019800000",
              ), SizedBox(height: 10,),
              Contract_List(
                  img: "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80",
                  name: "Kalvin",
                  number: "019888888",
              ), SizedBox(height: 10,),
              Contract_List(
                img: "https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg",
                name: "Kalvin",
                number: "019888888",
              ),

            ]
          ))

        ],
      ),
    );
  }
}

class Contract_List extends StatelessWidget {
   Contract_List({
    Key? key,
     this.img,this.name,this.number
  }) : super(key: key);

  String ?img;
  String ?name;
  String ?number;



  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text("$name"),
      leading: CircleAvatar(backgroundImage: NetworkImage("$img")),
      trailing: Icon(Icons.call),
      subtitle: Text("$number"),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.purple)
      ),

    );
  }
}
