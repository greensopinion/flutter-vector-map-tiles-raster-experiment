import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:vector_map_raster/future_tile_provider.dart';
import 'package:vector_map_raster/map.dart';
import 'package:vector_map_raster/tile_loader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vector_map_tiles examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
              title: const Text(
            'vector_map_raster example',
          )),
          body: const SafeArea(child: MainPage())),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => MapWidget(
        layerFactory: (context) => TileLayer(
          tileProvider: FutureTileProvider(loader: tileLoader),
        ),
      );
}
