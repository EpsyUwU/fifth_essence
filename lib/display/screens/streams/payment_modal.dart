import 'package:fifth_essence/display/widgets/custom_button_donate.dart';
import 'package:fifth_essence/display/widgets/custom_button_filled.dart';
import 'package:flutter/material.dart';

void PaymentModal(BuildContext context){

  Map<String, CustomButtonDonate> donate = {
    '10': const CustomButtonDonate(price: '10'),
    '20': const CustomButtonDonate(price: '20'),
    '50': const CustomButtonDonate(price: '50'),
    '100': const CustomButtonDonate(price: '100'),
    '200': const CustomButtonDonate(price: '200'),
    '500': const CustomButtonDonate(price: '500'),
  };

  showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          height: 400,
          decoration: const BoxDecoration(
            color: Color(0xFF392755),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), // Ajusta el radio según tus preferencias
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const Row(
                children: [
                  SizedBox(width: 20,),
                  Text('Donate', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 32,),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children:
                        donate.entries.map((e) => Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 17, 15),
                            child: e.value
                        )).take(3).toList(),
                      ),
                      Column(
                        children:
                        donate.entries.map((e) => Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: e.value
                        )).skip(3).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
                      child: Row(
                          children:[
                            Expanded(child: CustomButtonFilled(text: 'Next', onPressed: (){}))
                          ]
                      )
                  ),
                ]
              )
            ],
          ),
        );
      }
  );
}