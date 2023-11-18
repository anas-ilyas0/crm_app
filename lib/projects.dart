import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF4F9FD),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            shrinkWrap: true,
            reverse: false,
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: IconButton(
                            icon: Image.asset('images/crm.png'),
                            iconSize: 40,
                            onPressed: () {
                              //openDrawer();
                            },
                          ),
                        ),
                        const SizedBox(width: 110),
                        const Icon(FontAwesomeIcons.magnifyingGlass),
                        const SizedBox(width: 25),
                        const Icon(FontAwesomeIcons.bell),
                        const SizedBox(width: 25),
                        const CircleAvatar(
                          backgroundImage: AssetImage('images/2.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.keyboard_backspace_rounded),
                            SizedBox(width: 5),
                            Text(
                              'Back to Projects',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Medical App (iOS Native)',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Text('Project Number',
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(width: 140),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 5,
                                  ),
                                  child: Image(
                                      height: 60,
                                      image: AssetImage('images/project.png')),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Text('PN0001245'),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Description',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                        'App for maintaining your medical record, \nmaking appointments with a doctor, \nstoring prescriptions',
                                        style: TextStyle(color: Colors.grey)),
                                    const SizedBox(height: 15),
                                    const Text('Reporter',
                                        style: TextStyle(color: Colors.grey)),
                                    const SizedBox(height: 10),
                                    const Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 10,
                                          backgroundImage:
                                              AssetImage('images/2.png'),
                                        ),
                                        SizedBox(width: 10),
                                        Text('Evan Yates')
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    const Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 0),
                                          child: Text('Assigness',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                        ),
                                        SizedBox(width: 150),
                                        Text('Priority',
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 10,
                                            backgroundImage:
                                                AssetImage('images/1.png'),
                                          ),
                                          CircleAvatar(
                                            radius: 10,
                                            backgroundImage:
                                                AssetImage('images/2.png'),
                                          ),
                                          CircleAvatar(
                                            radius: 10,
                                            backgroundImage:
                                                AssetImage('images/3.png'),
                                          ),
                                          CircleAvatar(
                                            radius: 11,
                                            backgroundColor: Colors.blue,
                                            child: Text(
                                              '+2',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                          SizedBox(width: 125),
                                          Icon(Icons.keyboard_arrow_up,
                                              color: Colors.amberAccent),
                                          SizedBox(width: 4),
                                          Text(
                                            'Medium',
                                            style: TextStyle(
                                                color: Colors.amberAccent),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text('Dead Line',
                                        style: TextStyle(color: Colors.grey)),
                                    const SizedBox(height: 15),
                                    const Text('Feb 23, 2025'),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () async {
                                              final DateTime? date =
                                                  await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: DateTime(2000),
                                                      lastDate: DateTime(3000));
                                              if (date != null) {
                                                setState(() {
                                                  selectedDate = date;
                                                });
                                              }
                                            },
                                            icon: const Icon(Icons.date_range,
                                                color: Colors.blueGrey)),
                                        const SizedBox(width: 4),
                                        Text(
                                            'Created  ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                                            style: const TextStyle(
                                                color: Colors.blueGrey)),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    const Row(
                                      children: [
                                        Image(
                                            height: 50,
                                            image: AssetImage(
                                                'images/attachh.png')),
                                        SizedBox(width: 15),
                                        Image(
                                            height: 50,
                                            image:
                                                AssetImage('images/attach.png'))
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ].reversed.toList(),
          ),
        )),
      ),
    );
  }
}
