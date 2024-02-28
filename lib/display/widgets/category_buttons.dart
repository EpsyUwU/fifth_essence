import 'package:fifth_essence/display/screens/streams/bottonsheet_streams.dart';
import 'package:flutter/material.dart';

class CategoryButtons extends StatelessWidget {
  const CategoryButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          width: 122,
          height: 30,
          child: ElevatedButton.icon(
            onPressed: () {showBottomSheetStreams(context);},
            icon: const Icon(Icons.stream_outlined, size: 20, color: Colors.white), // Puedes cambiar este ícono
            label: const Text('Streams', style: TextStyle(color: Colors.white)), // Puedes cambiar este texto
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff9C58CB), // Color de fondo del botón
            ),
          ),
        ),
        const VerticalDivider(
          color: Color(0xff392755),
          thickness: 1,
        ),
        SizedBox(
          width: 79,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('All', style: TextStyle(color: Colors.white)), // Puedes cambiar este texto
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff9C58CB), // Color de fondo del botón
            ),
          ),
        ),
        const SizedBox(width: 5,),
        SizedBox(
          width: 100,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Popular', style: TextStyle(color: Colors.white)), // Puedes cambiar este texto
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff9C58CB), // Color de fondo del botón
            ),
          ),
        ),
      ],
    );
  }
}
