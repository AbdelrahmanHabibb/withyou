import 'dart:async';
import 'package:flutter/material.dart';
import 'package:with_me/common/custom_widgets/rating_bar.dart';
import 'package:with_me/details_page/details_page.dart';
import 'package:with_me/filter/filter_page.dart';
import 'package:with_me/notification_page/notification_page.dart';
import 'search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5661f1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Hello My Friend'),
              SizedBox(
                height: 8,
              ),
              Text('Explore The Best Places In The World.',
                  style: TextStyle(fontSize: 14, color: Colors.white54)),
            ]),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationPage(),
                ));
              },
              icon: const Icon(Icons.notifications_rounded))
        ],
      ),
      body: Column(
        children: [
          Row(children: [
            Expanded(child: SearchWidget(
              onChanged: (value) {

              },
            )),
            IconButton(
                constraints: const BoxConstraints(maxWidth: 25),
                padding: EdgeInsets.zero,
                onPressed: () {
                },
                icon: const Icon(
                  Icons.sort,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: _navigateToFilter,
                icon: const Icon(
                  Icons.filter_alt,
                  color: Colors.white,
                )),
          ]),
          Expanded(
            child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DetailsPage(),));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://thumbs.dreamstime.com/b/surprised-female-person-confused-isolated-surprised-female-person-confused-isolated-168304856.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Sama"),
                                  const RatingBar(rate: 0),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 17,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text( 'Egypt/cairo'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("2500 \$"),
                                ],
                              ))
                            ]),
                      ),
                    );
                  },
                )

          ),
        ],
      ),
    );
  }



  Future<void> _navigateToFilter() async {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (context) => const FilterPage(),
    ));

  }
}
