// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Class Room',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   // show screen
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           // Row(
//           //   children: [
//           //     // - pattern button
//           //      ElevatedButton(onPressed: () {}, child: Text('aaa')),
//           //      OutlinedButton(onPressed: () {}, child: Text('bbb')),
//           //      TextButton(onPressed: () {}, child: Text('ccc')),
//           //   ],
//           // ),
//           // Expanded(
//           //   child:
//           //       Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
//           //     _buildButton(1),
//           //     _buildButton(2),
//           //     _buildButton(3),
//           //   ]),
//           // ),
//           // Expanded(
//           //   child:
//           //       Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
//           //     _buildButton(4),
//           //     _buildButton(5),
//           //     _buildButton(6),
//           //   ]),
//           // ),
//           // Expanded(
//           //   child:
//           //       Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
//           //     _buildButton(7),
//           //     _buildButton(8),
//           //     _buildButton(9),
//           //   ]),
//           // ),

//           _buildRow([1, 2, 3]),
//           _buildRow([4, 5, 6]),
//           _buildRow([7, 8, 9]),
//         ],
//       ),
//     );
//   }

//   Widget func(int num) {
//     Widget w = _buildButton(num);
//     return w;
//   }

//   // method add button numbers
//   Expanded _buildRow(List<int> numlist) {
//     // - List empty
//     // List<Widget> _list = [];
//     // - add number to list
//     // for (var num in numlist) {
//     //   Widget w = _buildButton(num);
//     //   _list.add(_buildButton(num));
//     // }

//     // - map add number to list
//     // numlist.map((num) {
//     //   Widget w = _buildButton(num);
//     //   _list.add(w);
//     // });
//     // _list = numlist.map(func).toList();

//     List<Widget> _list = numlist.map(func).toList();

//     return Expanded(
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: _list,
//       ),
//     );
//   }

//   Widget _buildButton(int num) {
//     String _text;
//     // - if else for 1 to 9
//     // if (num == 1) {
//     //   _text = 'one';
//     // } else if (num == 2) {
//     //   _text = 'two';
//     // } else if (num == 3) {
//     //   _text = 'three';
//     // } else if (num == 4) {
//     //   _text = 'four';
//     // } else if (num == 5) {
//     //   _text = 'five';
//     // } else if (num == 6) {
//     //   _text = 'six';
//     // } else if (num == 7) {
//     //   _text = 'seven';
//     // } else if (num == 8) {
//     //   _text = 'eight';
//     // } else if (num == 9) {
//     //   _text = 'nine';
//     // } else {
//     //   _text = ' ';
//     // }

//     // - switch case for 1 to 9
//     switch (num) {
//       case 1:
//         _text = 'one';
//         break;
//       case 2:
//         _text = 'two';
//         break;
//       case 3:
//         _text = 'three';
//         break;
//       case 4:
//         _text = 'four';
//         break;
//       case 5:
//         _text = 'five';
//         break;
//       case 6:
//         _text = 'six';
//         break;
//       case 7:
//         _text = 'seven';
//         break;
//       case 8:
//         _text = 'eight';
//         break;
//       case 9:
//         _text = 'nine';
//         break;
//       default:
//         _text = ' ';
//         break;
//     }

//     // - list for one to nine
//     List<String> textlist = [
//       'zero',
//       'one',
//       'two',
//       'three',
//       'four',
//       'five',
//       'six',
//       'seven',
//       'eight',
//       'nine'
//     ];

//     // - Expanded ยืดหด ตามขนาดจอ
//     return Expanded(
//       flex: 2,
//       child: Container(
//         width: 60.0,
//         height: 60.0,
//         margin: EdgeInsets.all(8.0), // ระยะห่างของสี่เหลี่ยม
//         decoration: BoxDecoration(
//           border: Border.all(color: Color.fromARGB(255, 16, 95, 232)),
//         ),
//         child: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               num.toString(),
//               // style: TextStyle(
//               //   fontSize: 20.0,
//               //   color: Colors.yellowAccent
//               // ),
//             ),
//             Text(
//               textlist[num],
//             ),
//           ],
//         )),
//       ),
//     );
//   }
// }


// /////////////////////
// ///
// import 'package:flutter/material.dart';
// import 'package:flutter/classroom/pages/home_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Class Room',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class PinLoginPage extends StatefulWidget {
//   const PinLoginPage({super.key});

//   static const keyped = [
//     [1, 2, 3],
//     [4, 5, 6],
//     [7, 8, 9],
//   ];
  
//   @override
//   State<PinLoginPage> createState() => _HomePageState();
// }

// class _HomePageState extends State<PinLoginPage> {
//   static const inputlenght = 6;  
//   static String _input = '';

//   static String const _password = '157903';

//   // show screen
//   @override
//   Widget build(BuildContext context) {
//     print('Your input: $_input');
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Column(
//             children: [
//               Icon(Icons.security, size: 100),
//               Text(
//                 'PIN LOGIN',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                 ),
//                 ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               for (int i = 0; i < _input.length; i++)
//                 Icon(Icons.radio_button_checked),
//               for (int i = 0; i < inputlenght - _input.length; i++)
//                 Icon(Icons.radio_button_unchecked),
              
//             ],
//           ),
//           _biuldKeyPad(),
//         ],
//       ),
//     );
//   }

//   Column _biuldKeyPad() {
//     return Column(
//       children: [
//         for (var row in [
//             [1, 2, 3],
//             [4, 5, 6],
//             [7, 8, 9],
//             [-2, 0, -1],
//           ])
//             _buildRow(row),

//           // for (var row in keyped) _buildRow(row),  

//       ],
//     );
//   }

//   // arrow syntax  => = return
//   Widget func(int num) => _buildButton(num);

//   // method add button numbers
//   Widget _buildRow(List<int> numlist) {
//     List<int> mylist = [
//       for (var i = 0; i <= 100; i++)
//         if (i % 2 == 0) i
//     ];

//     // - List empty
//     // List<Widget> _list = [];
//     // - add number to list
//     // for (var num in numlist) {
//     //   Widget w = _buildButton(num);
//     //   _list.add(_buildButton(num));
//     // }

//     // - map add number to list
//     // numlist.map((num) {
//     //   Widget w = _buildButton(num);
//     //   _list.add(w);
//     // });
//     // _list = numlist.map(func).toList();

//     // - ไม่ต้องใข้ for loop แค่เก็บค่าจาก list แล้วใช้ map
//     Widget Function(int) f = func;
//     // - Higher order function  > map(func)
//     // var widgets = numlist.map((int num)  =>  _buildButton(num)).toList();

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       // children: numlist.map((int num)  =>  _buildButton(num)).toList(),
//       children: [for (var num in numlist) func(num)],
//     );
//   }

//   Widget _buildButton(int num) {
//     String _text;
//     String? label = '';
//     // - switch case for 1 to 9
//     switch (num) {
//       case 1:
//         _text = 'one';
//         break;
//       case 2:
//         _text = 'two';
//         break;
//       case 3:
//         _text = 'three';
//         break;
//       case 4:
//         _text = 'four';
//         break;
//       case 5:
//         _text = 'five';
//         break;
//       case 6:
//         _text = 'six';
//         break;
//       case 7:
//         _text = 'seven';
//         break;
//       case 8:
//         _text = 'eight';
//         break;
//       case 9:
//         _text = 'nine';
//         break;
//       default:
//         _text = ' ';
//         break;
//     }

//     // - list for one to nine
//     List<String> textlist = [
//       'zero',
//       'one',
//       'two',
//       'three',
//       'four',
//       'five',
//       'six',
//       'seven',
//       'eight',
//       'nine'
//     ];

//     if (num >= 0 && num <= 9) {
//       label = textlist[num];
//     }

//   // - setting border กำหนดเงื่อนไขการมี border (สี่เหลี่ยม) 
//     // BoxBorder? border;
//     // if (num >= 0 && num <= 9) {
//     //   border = Border.all(color: Color.fromARGB(255, 16, 95, 232));
//     // }
    
//     // var border = num >= 0 && num <= 9
//     //   ? Border.all(color: Color.fromARGB(255, 16, 95, 232))
//     //   : null;

//     // - Expanded ยืดหด ตามขนาดจอ
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         splashColor: Colors.yellowAccent,
//         highlightColor: Colors.red,
//         onTap: () {
//          // print(num);

//           setState(() {
//             if(_input.length >= inputlenght) {
//               return;
//             }
//             // _input = num == -1 
//             // ? _input.substring(0, _input.length - 1) 
//             // : num == -2 
//             //   ? '' 
//             //   : _input + num.toString();
             
//             if (_input == -1){
//               _input = _input.substring(0, _input.length - 1) ;
//             } else if (_input == -2){
//               _input = '';
//             } else {
//               _input = _input + num.toString();
//             }
             
//             if (_input == _password) {
//               print('Password correct!!');
//             } else {
//               print('Password incorrect!!');
//             }
//           });         
//         },
//         child: Container(
//           width: 60.0, // 160 = 1 inch
//           height: 60.0,
//           // margin: EdgeInsets.all(8.0), // ระยะห่างของสี่เหลี่ยม
//           decoration: BoxDecoration(
//             border: num >= 0 && num <= 9
//               ? Border.all(color: Color.fromARGB(255, 16, 95, 232))
//               : null,
//           ),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 if (num >= 0 && num <= 9) Text(num.toString()),
//                 if (num >= 0 && num <= 9) Text(label ?? ''),
//                 if (num == -2) Icon(Icons.close),
//                 if (num == -1) Icon(Icons.backspace_outlined),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ///
// ///


import 'dart:convert';

import 'package:classroom/models/country.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  List<Country>? _countries;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            var dio = Dio(BaseOptions(responseType: ResponseType.plain));
            var response =
                await dio.get('https://api.sampleapis.com/countries/countries');
            print('Status code: ${response.statusCode}');
            response.headers.forEach((name, values) {
              print('$name: $values');
            });
            print(response.data.toString());

            setState(() {
              var list = jsonDecode(response.data.toString());

              _countries =
                  list.map<Country>(
                    (item) => Country.fromJson(item)
                  ).toList();

              // for (var i = 0; i < list!.length; i++) {
              //   var map = list![i];
              //   //var name = map['name'];
              //   //var capital = map['capital'];
              //   //var flag = map['media']['flag'];
              //   //var population = map['population'];

              //   var country = Country(
              //     name: 'Thailand',
              //     //capital: capital,
              //     //population: population,
              //     //flag: flag,
              //   );
              //   _countries!.add(country);
              // }
            });
          },
          child: Text('Test API'),
        ),
        Expanded(
          child: _countries == null
              ? SizedBox.shrink()
              : ListView.builder(
                  itemCount: _countries!.length,
                  itemBuilder: (context, index) {
                    var country = _countries![index];

                    return ListTile(
                      title: Text(country.name ?? ''),
                      subtitle: Text(country.capital ?? ''),
                      trailing: country.flag == ''
                          ? null
                          : Image.network(
                              country.flag ?? '',
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(Icons.error, color: Colors.red);
                              },
                            ),
                      onTap: () {
                        print('You click ${country.name}');
                      },
                    );
                  },
                ),
        ),
      ],
    );
  }
}



*/