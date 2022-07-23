import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScrren extends StatefulWidget {
  const MainScrren({Key? key}) : super(key: key);

  @override
  State<MainScrren> createState() => _MainScrrenState();
}

class _MainScrrenState extends State<MainScrren> {
  num _counter1 = 0;
  num _counter2 = 0;
  num _total = 0;
  String _mat = '';
  String _final_total = '';
  String _final_total2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                 alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      _final_total2,
                      style: const TextStyle(fontSize: 24,color: Colors.grey),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      _final_total,
                      style: const TextStyle(fontSize: 28),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _counter1 = 0;
                            _counter2 = 0;
                            _mat = '';
                            _total = 0;
                            _final_total = '$_total';
                            _final_total2 = '';
                          });
                        },
                        icon: Text(
                          'AC',
                          style: GoogleFonts.nobile(
                              color: const Color(0xffFBB454), fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 7;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 7;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '7',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 4;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 4;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '4',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 1;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 1;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '1',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.calculate_sharp,
                            color: Color(0xffFBB454),
                            size: 24,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 0;
                              _final_total = '$_counter1';
                            } else if (_mat.isNotEmpty && _counter2 == 0) {
                              _mat = '';
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 0;
                              _final_total = '$_counter1$_mat';
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.cancel_rounded,
                          color: Color(0xffFBB454),
                          size: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 8;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 8;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '8',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 5;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 5;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '5',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 2;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 2;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '2',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 0;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 0;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '0',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _mat = '%';
                          });
                        },
                        icon: const Text(
                          '%',
                          style: TextStyle(
                              color: Color(0xffFBB454),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 9;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 9;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '9',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 6;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 6;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '6',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '') {
                              _counter1 = 3;
                              _final_total = '$_counter1';
                            } else {
                              _counter2 = 3;
                              _final_total =
                                  '$_counter1$_mat$_counter2';
                            }
                          });
                        },
                        icon: Text(
                          '3',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: Text(
                          '.',
                          style: GoogleFonts.nobile(
                              color: Colors.black, fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _mat = '/';
                            _final_total = '$_counter1$_mat';
                          });
                        },
                        icon: const Text(
                          '/',
                          style: TextStyle(
                              color: Color(0xffFBB454),
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _mat = '*';
                            _final_total = '$_counter1$_mat';
                          });
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Color(0xffFBB454),
                          size: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _mat = '-';
                            _final_total = '$_counter1$_mat';
                          });
                        },
                        icon: const Text(
                          '---',
                          style: TextStyle(
                            color: Color(0xffFBB454),
                            fontSize: 24,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _mat = '+';
                            _final_total = '$_counter1$_mat';
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Color(0xffFBB454),
                          size: 24,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_mat == '%') {
                              _total = _counter1 % _counter2;
                            } else if (_mat == '/') {
                              _total = _counter1 / _counter2;
                            } else if (_mat == '*') {
                              _total = _counter1 * _counter2;
                            } else if (_mat == '-') {
                              _total = _counter1 - _counter2;
                            } else if (_mat == '+') {
                              _total = _counter1 + _counter2;
                            }

                            _final_total = '$_total';
                            _final_total2 =  '$_counter1$_mat$_counter2';
                            _counter1 = _total;
                            _counter2 = 0;
                            _mat = '';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffFBB454),
                          shape: const CircleBorder(),
                        ),
                        child: const Text(
                          '=',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
