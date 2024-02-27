import 'package:flutter/material.dart';

class CustomCardStream extends StatelessWidget {
  const CustomCardStream({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 152.0,
              height: 158.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 152.0,
                    height: 158.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage('https://picsum.photos/152/158?random'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: const Color(0xff9C58CB),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.remove_red_eye, color: Colors.white, size: 15,),
                                  SizedBox(width: 5,),
                                  Text('1.2k', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    height: 25,
                    width: 45,
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: const Color(0xff5737AC),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Center(
                        child: Text('Live', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 5,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: <Widget>[
                          Text('Vía Láctea en vivo', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Ajusta este valor para cambiar el radio del borde
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          print('Card presionada');
                          // Aquí puedes agregar la lógica que se ejecutará cuando se presione la tarjeta
                        },
                        // El resto de tu código aquí
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const   SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 18, // Ajusta este valor para cambiar el tamaño del círculo
            ),
            SizedBox(width: 8), // Espacio entre el círculo y los textos
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Jatamatza', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                Text('159k Followers', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.normal)),
              ],
            ),
            SizedBox(width: 22,)
          ],
        )
      ],
    );
  }
}