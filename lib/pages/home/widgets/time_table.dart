import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_week_codeium/models/country.dart';

class Timetable extends StatefulWidget {
  const Timetable({super.key});

  @override
  State<Timetable> createState() => _TimetableState();
}

class _TimetableState extends State<Timetable> {
              // key  ,  value    
  // late List<Map<String, dynamic>>? _data;  // declare variable is null, but be not null
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

            // print(data.length);  // จำนวนรายการ
            // print(data[0]['name']);
            setState(() {
              var list = jsonDecode(response.data.toString());

              _countries = list.map<Country>(
                (item) => Country.fromJson(item)
              ).toList();

              // for (var i = 0; i < list!.length; i++) {
              //   var country = list![i];
              //   var name = map['name'];
              //   var capital = map['capital'];
              //   var flag = map['media']['flag'];
              //   var population = map['population'];
              //   // print(country['name']);
              //   var country = Country(
              //     name: name,
              //     capital: capital,
              //     population: population,
              //     flag: flag,
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
                            errorBuilder: (context, error, stackTrace) {   // if error, show icon error
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


/*

 return SingleChildScrollView(
      child: Column(
        children: [
          for (var i = 0; i < 20; i++)
            ListTile(
              title: Text('TimeTable ${i + 1}'),
              subtitle: Text('View your timetable'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('View timetable ${i + 1}');
              },
            ),
        ],
      ),
    );

    return ListView(
      children: [
        for (var i = 0; i < 20; i++)
          ListTile(
            title: Text('TimeTable ${i + 1}'),
            subtitle: Text('View your timetable'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              print('View timetable ${i + 1}');
            },
          ),
      ],
    );

*/