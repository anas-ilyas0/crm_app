import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UX extends StatefulWidget {
  const UX({super.key});

  @override
  State<UX> createState() => _UXState();
}

class _UXState extends State<UX> {
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            padding: EdgeInsets.only(top: 10, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'UX Login + Registration',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 540,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Task Info"),
                                    const SizedBox(height: 20),
                                    const Text('Reporter',
                                        style: TextStyle(color: Colors.grey)),
                                    const SizedBox(height: 10),
                                    const Row(
                                      children: [
                                        CircleAvatar(
                                            radius: 15,
                                            backgroundImage:
                                                AssetImage('images/2.png')),
                                        SizedBox(width: 10),
                                        Text('Evan Yates',
                                            style: TextStyle(fontSize: 17))
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      'Assigned',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 10),
                                    const Row(
                                      children: [
                                        CircleAvatar(
                                            radius: 15,
                                            backgroundImage:
                                                AssetImage('images/3.png')),
                                        SizedBox(width: 10),
                                        Text('Blake Silva',
                                            style: TextStyle(fontSize: 17)),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    const Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 7),
                                          child: Text('Priority',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                        ),
                                        SizedBox(width: 123),
                                        Text('Dead Line',
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const Row(
                                      children: [
                                        Icon(Icons.keyboard_arrow_up,
                                            color: Colors.amberAccent),
                                        SizedBox(width: 5),
                                        Text('Medium',
                                            style: TextStyle(
                                                color: Colors.amberAccent)),
                                        SizedBox(width: 96),
                                        Text('Feb 23, 2020'),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 16.0, top: 16.0),
                                      child: Container(
                                        height: 200,
                                        width: MediaQuery.sizeOf(context).width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFFF4F9FD),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Time tracking',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17),
                                              ),
                                              const SizedBox(height: 20),
                                              const Row(
                                                children: [
                                                  CircularProgressIndicator(
                                                    strokeWidth: 2,
                                                    backgroundColor:
                                                        Colors.grey,
                                                    value: 0.34,
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(Colors.blue),
                                                  ),
                                                  SizedBox(width: 20),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text('1d 3h 25m logged'),
                                                      SizedBox(height: 5),
                                                      Text(
                                                          'Original Estimate 3d 8h',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey))
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 25),
                                              SizedBox(
                                                width: 400,
                                                height: 60,
                                                child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15))),
                                                    onPressed: () {},
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(Icons
                                                            .watch_later_outlined),
                                                        SizedBox(width: 5),
                                                        Text(
                                                          'Log time',
                                                          style: TextStyle(
                                                              fontSize: 18),
                                                        )
                                                      ],
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
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
                                            icon: const Icon(
                                              Icons.date_range,
                                              color: Colors.grey,
                                            )),
                                        const SizedBox(width: 2),
                                        Text(
                                          'Created ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                                          style: const TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Task Details',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 650,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFF4F9FD),
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                            width: 100,
                                            height: 30,
                                            child: const Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 5,
                                                  ),
                                                  child: Text('In Progress',
                                                      style: TextStyle(
                                                          color: Colors.blue)),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Colors.blue,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 123),
                                        const Image(
                                            height: 60,
                                            image: AssetImage(
                                                'images/project.png'))
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    const Text('Task Number',
                                        style: TextStyle(color: Colors.grey)),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'PN0001245',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    const SizedBox(height: 30),
                                    const Text(
                                      'Description',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Think over UX for login and \nRegistration, create a flow using \nwireframes. Upon Completion, show \nthe team and discuss. Attach the \nsource to the task.',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                    const SizedBox(height: 25),
                                    const Row(
                                      children: [
                                        Image(
                                            height: 50,
                                            image: AssetImage(
                                                'images/attachh.png')),
                                        SizedBox(width: 15),
                                        Image(
                                            height: 50,
                                            image: AssetImage(
                                                'images/attach.png')),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    const Text('Task Attachments (3)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17)),
                                    const SizedBox(height: 15),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(17)),
                                        height: 80,
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Image(
                                                  height: 50,
                                                  image: AssetImage(
                                                      'images/attachh.png')),
                                            ),
                                            const SizedBox(width: 10),
                                            const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('site screens.png',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                SizedBox(height: 5),
                                                Text('10 MB PNG',
                                                    style: TextStyle(
                                                        color: Colors.grey))
                                              ],
                                            ),
                                            const SizedBox(width: 50),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFFF4F9FD),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              width: 50,
                                              height: 50,
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.more_vert,
                                                      size: 34)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(17)),
                                        height: 80,
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Image(
                                                  height: 50,
                                                  image: AssetImage(
                                                      'images/attachh.png')),
                                            ),
                                            const SizedBox(width: 10),
                                            const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('wireframes.png',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                SizedBox(height: 5),
                                                Text('10 MB PNG',
                                                    style: TextStyle(
                                                        color: Colors.grey))
                                              ],
                                            ),
                                            const SizedBox(width: 55),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFFF4F9FD),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              width: 50,
                                              height: 50,
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.more_vert,
                                                      size: 34)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(7),
                                          ),
                                          width: 180,
                                          height: 40,
                                          child: const Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        height: 30,
                                                        image: AssetImage(
                                                            'images/attach.png')),
                                                    SizedBox(width: 10),
                                                    Text('Invision protype',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.blueGrey,
                                                            fontSize: 17)),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 600,
                              width: MediaQuery.sizeOf(context).width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20, left: 20),
                                    child: Text(
                                      'Recent Activity',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20, left: 20),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                              AssetImage('images/3.png'),
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Oscar Holloway',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'UI/UX Designer',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Container(
                                      height: 70,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF4F9FD),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Row(children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Icon(
                                            Icons.cloud_upload,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Updated the status of Mind \nMap task to in Progress',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blueGrey),
                                        )
                                      ]),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Container(
                                      height: 70,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF4F9FD),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Row(children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Icon(Icons.attachment_rounded,
                                              color: Colors.deepPurple),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Attached files to the task',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blueGrey),
                                        )
                                      ]),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20, left: 20),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                              AssetImage('images/emily.png'),
                                        ),
                                        SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Emily Tyler',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Copy Writer',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Container(
                                      height: 70,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF4F9FD),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Row(children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Icon(
                                            Icons.cloud_upload,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Updated the status of Mind \nMap task to in Progress',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blueGrey),
                                        )
                                      ]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ].reversed.toList(),
                  ))),
        ));
  }
}
