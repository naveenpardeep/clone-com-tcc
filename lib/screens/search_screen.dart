import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:PARTIU/screens/profile_screen.dart';
import 'package:PARTIU/utils/colors.dart';
import 'package:PARTIU/utils/global_variable.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();
  bool isShowUsers = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: Form(
          child: TextFormField(
            controller: searchController,
            decoration:
                const InputDecoration(labelText: 'Pesquise por um divulgador'),
            onFieldSubmitted: (String _) {
              setState(() {
                isShowUsers = true;
              });
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1582711012124-a56cf82307a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1240&q=80'),
                            fit: BoxFit.fill)
                          ),
                          child: const Text('data'),
                        ),
                      ),
                      const Text('data'),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1582711012124-a56cf82307a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1240&q=80'),
                        fit: BoxFit.fill)
                      ),
                      child: Text("caos"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
      
    );
  }
}
// isShowUsers
      //     ? FutureBuilder(
      //         future: FirebaseFirestore.instance
      //             .collection('users')
      //             .where(
      //               'username',
      //               isGreaterThanOrEqualTo: searchController.text,
      //             )
      //             .get(),
      //         builder: (context, snapshot) {
      //           if (!snapshot.hasData) {
      //             return const Center(
      //               child: CircularProgressIndicator(),
      //             );
      //           }
      //           return ListView.builder(
      //             itemCount: (snapshot.data! as dynamic).docs.length,
      //             itemBuilder: (context, index) {
      //               return InkWell(
      //                 onTap: () => Navigator.of(context).push(
      //                   MaterialPageRoute(
      //                     builder: (context) => ProfileScreen(
      //                       uid: (snapshot.data! as dynamic).docs[index]['uid'],
      //                     ),
      //                   ),
      //                 ),
      //                 child: ListTile(
      //                   leading: CircleAvatar(
      //                     backgroundImage: NetworkImage(
      //                       (snapshot.data! as dynamic).docs[index]['photoUrl'],
      //                     ),
      //                     radius: 16,
      //                   ),
      //                   title: Text(
      //                     (snapshot.data! as dynamic).docs[index]['username'],
      //                   ),
      //                 ),
      //               );
      //             },
      //           );
      //         },
      //       )
      //     : FutureBuilder(
      //         future: FirebaseFirestore.instance
      //             .collection('eventos')
      //             .orderBy('data')
      //             .get(),
      //         builder: (context, snapshot) {
      //           if (!snapshot.hasData) {
      //             return const Center(
      //               child: CircularProgressIndicator(),
      //             );
      //           }

      //           return StaggeredGridView.countBuilder(
      //             crossAxisCount: 3,
      //             itemCount: (snapshot.data! as dynamic).docs.length,
      //             itemBuilder: (context, index) => Image.network(
      //               (snapshot.data! as dynamic).docs[index]['eventoUrl'],
      //               fit: BoxFit.cover,
      //             ),
      //             staggeredTileBuilder: (index) => MediaQuery.of(context)
      //                         .size
      //                         .width >
      //                     webScreenSize
      //                 ? StaggeredTile.count(
      //                     (index % 7 == 0) ? 1 : 1, (index % 7 == 0) ? 1 : 1)
      //                 : StaggeredTile.count(
      //                     (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
      //             mainAxisSpacing: 8.0,
      //             crossAxisSpacing: 8.0,
      //           );
      //         },
      //       ),