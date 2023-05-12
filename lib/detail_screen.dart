import 'package:aplikasi_wisata/tourism_place.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/farm-house.jpg"),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.nama,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Icon(Icons.calendar_today),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(place.hariBuka),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.watch_later_outlined),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(place.jamBuka)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.monetization_on),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(place.hargaTiket)
                      ],
                    )
                  ]),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.deskripsi,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        )),
      ),
    );
  }
}
