//import 'package:crm_app_pr/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
//import 'scalling.dart';
//import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DateTime selectedDate = DateTime.now();
  DateTimeRange dateRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());

  //String currentDate = DateFormat('yyyy-mm-dd').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    void openDrawer() {
      scaffoldKey.currentState?.openDrawer();
    }

    final start = dateRange.start;
    final end = dateRange.end;

    Future pickDateRange() async {
      DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        initialDateRange: dateRange,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );
      if (newDateRange == null) {
        return;
      }
      setState(() {
        dateRange = newDateRange;
      });
    }

    List<Card> cards = const [
      Card(),
      Card(),
      Card(),
      Card(),
      Card(),
      Card(),
    ];

    return MaterialApp(
      //theme: ThemeData(dividerColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF4F9FD),
        drawer: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
          child: Drawer(
            width: 250,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.white,
            child: ListView(
              children: [
                // DrawerHeader(
                //   decoration: BoxDecoration(color: Colors.white),
                //   child: Align(
                //       alignment: Alignment.topLeft,
                //       child: Image.asset('images/crm.png')),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 13),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('images/crm.png')),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      ListTile(
                        selected: true,
                        hoverColor: Colors.blue.withOpacity(0.2),
                        leading: const Icon(Icons.dashboard),
                        title: const Text('Dashboard'),
                        onTap: () {
                          Navigator.pushNamed(context, '/dashboard');
                        },
                      ),
                      ListTile(
                        hoverColor: Colors.blue.withOpacity(0.2),
                        leading: const Icon(FontAwesomeIcons.dropbox),
                        title: const Text('Projects'),
                        onTap: () {
                          Navigator.pushNamed(context, '/projects');
                        },
                      ),
                      ListTile(
                        hoverColor: Colors.blue.withOpacity(0.2),
                        leading: const Icon(Icons.date_range),
                        title: const Text('Calender'),
                        onTap: () {},
                      ),
                      ListTile(
                        hoverColor: Colors.blue.withOpacity(0.2),
                        leading: const Icon(Icons.flight),
                        title: const Text('Vacations'),
                        onTap: () {},
                      ),
                      ListTile(
                        hoverColor: Colors.blue.withOpacity(0.2),
                        leading: const Icon(Icons.people),
                        title: const Text('Employees'),
                        onTap: () {},
                      ),
                      ListTile(
                        hoverColor: Colors.blue.withOpacity(0.2),
                        leading: const Icon(Icons.messenger),
                        title: const Text('Messenger'),
                        onTap: () {},
                      ),
                      ListTile(
                        hoverColor: Colors.blue.withOpacity(0.2),
                        leading: const Icon(Icons.folder),
                        title: const Text('Info Portal'),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 100.0, top: 32.0),
                  child: SizedBox(
                    height: 45,
                    width: 400,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.sms_outlined),
                            SizedBox(width: 10),
                            Text('Support'),
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 90),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 130),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/crm');
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.login_outlined, color: Colors.grey),
                          SizedBox(width: 15),
                          Text(
                            'Logout',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
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
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: IconButton(
                              icon: Image.asset('images/crm.png'),
                              iconSize: 40,
                              onPressed: () {
                                openDrawer();
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
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome back, Evan!',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 25),
                          const Text(
                            'Dashboard',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFEE6EDF5),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      pickDateRange();
                                    },
                                    icon:
                                        const Icon(Icons.date_range, size: 30),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    DateFormat('yyyy-MM-dd').format(start),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        '-',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    DateFormat('yyyy-MM-dd').format(end),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            //height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 10),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Workload',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24),
                                        ),
                                        const SizedBox(width: 100),
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              'View all  >',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 15),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                  ),
                                  itemCount: cards.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Card(
                                        color: const Color(0xFFF4F9FD),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(45)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const CircleAvatar(
                                                radius: 25,
                                                backgroundImage:
                                                    AssetImage('images/1.png')),
                                            const SizedBox(height: 7),
                                            const Text(
                                              'Shawn Stone',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(height: 7),
                                            const Text('UI/UX Designer'),
                                            const SizedBox(height: 7),
                                            Card(
                                              color: const Color(0xFFF4F9FD),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              child: const Text(
                                                'Junior',
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Row(
                                children: [
                                  const Text(
                                    'Projects',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  const SizedBox(width: 100),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'View all  >',
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 15),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 1.0),
                            child: Container(
                              height: 270,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(11.0),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'images/crmdash.png')),
                                        SizedBox(width: 25),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'PN0001265',
                                            ),
                                            SizedBox(height: 10),
                                            Text('Medical App (iOS native)',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
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
                                            icon: const Icon(Icons.date_range)),
                                        const SizedBox(width: 4),
                                        Text(
                                            'Created  ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
                                        const SizedBox(width: 30),
                                        const Icon(Icons.keyboard_arrow_up,
                                            color: Colors.amberAccent),
                                        const SizedBox(width: 4),
                                        const Text(
                                          'Medium',
                                          style: TextStyle(
                                              color: Colors.amberAccent),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 80),
                                    child: Divider(),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 20),
                                    child: Text(
                                      'Project Data',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 20),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      physics: NeverScrollableScrollPhysics(),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('All Tasks'),
                                                  SizedBox(
                                                    width: 30,
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Text(
                                                    '34',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('Active Tasks'),
                                                  SizedBox(
                                                    width: 30,
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Text(
                                                    '13',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('Assignees'),
                                                  SizedBox(
                                                    width: 30,
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 6),
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'images/1.png'),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'images/2.png'),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'images/3.png'),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor:
                                                        Colors.blue,
                                                    child: Text(
                                                      '+2',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 15),
                            child: Container(
                              height: 270,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(11.0),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'images/crmdashh.png')),
                                        SizedBox(width: 25),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'PN0001265',
                                            ),
                                            SizedBox(height: 10),
                                            Text('Food Delivery Service',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
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
                                            icon: const Icon(Icons.date_range)),
                                        const SizedBox(width: 4),
                                        Text(
                                            'Created  ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
                                        const SizedBox(width: 30),
                                        const Icon(Icons.keyboard_arrow_up,
                                            color: Colors.amberAccent),
                                        const SizedBox(width: 4),
                                        const Text(
                                          'Medium',
                                          style: TextStyle(
                                              color: Colors.amberAccent),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 80),
                                    child: Divider(),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 20),
                                    child: Text(
                                      'Project Data',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 20),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('All Tasks'),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Text(
                                                  '34',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Active Tasks'),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Text(
                                                  '13',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Assignees'),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundImage: AssetImage(
                                                      'images/1.png'),
                                                ),
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundImage: AssetImage(
                                                      'images/2.png'),
                                                ),
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundImage: AssetImage(
                                                      'images/3.png'),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 15.0),
                            child: Container(
                              height: 270,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(11.0),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'images/crmdashhh.png')),
                                        SizedBox(width: 25),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'PN0001265',
                                            ),
                                            SizedBox(height: 10),
                                            Text('Food Delivery Service',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
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
                                            icon: const Icon(Icons.date_range)),
                                        const SizedBox(width: 4),
                                        Text(
                                            'Created  ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
                                        const SizedBox(width: 30),
                                        const Icon(Icons.keyboard_arrow_down,
                                            color: Colors.green),
                                        const SizedBox(width: 4),
                                        const Text(
                                          'Low',
                                          style: TextStyle(color: Colors.green),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 80),
                                    child: Divider(),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 20),
                                    child: Text(
                                      'Project Data',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 20),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('All Tasks'),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Text(
                                                  '34',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Active Tasks'),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Text(
                                                  '13',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Assignees'),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundImage: AssetImage(
                                                      'images/1.png'),
                                                ),
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundImage: AssetImage(
                                                      'images/2.png'),
                                                ),
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundImage: AssetImage(
                                                      'images/3.png'),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ].reversed.toList(),
            ),
          ),
        ),
      ),
    );
  }
}
