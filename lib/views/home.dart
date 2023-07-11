import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/styles/star_green_colors.dart';

import '../widgets/events_card.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<bool> _isSelected = [false, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: StarGreenColors.lowWhite,
        appBar: AppBar(
          toolbarHeight: 100,
          leading: const Icon(
            Icons.menu,
            size: 35,
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          backgroundColor: StarGreenColors.green,
          flexibleSpace: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
              ),
              padding: const EdgeInsets.only(bottom: 12),
              height: double.infinity,
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: StarGreenColors.darkGreen,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ToggleButtons(
                    fillColor: StarGreenColors.lowWhite,
                    borderWidth: null,
                    borderRadius: BorderRadius.circular(15),
                    isSelected: _isSelected,
                    children: const [
                      Text(
                        '    Eventos    ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '    Mis eventos    ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                    onPressed: (int index) {
                      setState(() {
                        switch (index) {
                          case 0:
                            _isSelected[index] = !_isSelected[index];
                            _isSelected[1] = false;
                            break;
                          case 1:
                            _isSelected[index] = !_isSelected[index];
                            _isSelected[0] = false;
                            break;
                          default:
                            _isSelected[index] = !_isSelected[index];
                        }
                      });
                    },
                  ),
                ),
              )),
        ),
        body: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: EventsCard());
            },
            itemCount: 10,
          ),
        ),
        bottomNavigationBar: Container(
          color: StarGreenColors.green,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.map),
              Icon(Icons.home),
              Icon(Icons.person),
            ],
          ),
        ),
      ),
    );
  }
}
