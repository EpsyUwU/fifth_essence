import 'dart:math';

import 'package:fifth_essence/display/widgets/custom_button_filled.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

void PostModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: max(0, MediaQuery.of(context).viewInsets.bottom - 100),
        ),
        child: Container(
          height: 500,
          decoration: const BoxDecoration(
            color: Color(0xFF392755),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  dashPattern: const [8, 4],
                  strokeWidth: 3,
                  color: Colors.white,
                  radius: Radius.circular(15),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const SizedBox(
                      height: 189,
                      width: 336,
                      child: Icon(Icons.add_a_photo, size: 30, color: Colors.white,),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child:
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                     TextFormField(
                       minLines: 4,
                       maxLines: 4,
                       style: const TextStyle(color: Colors.white),
                       decoration: InputDecoration(
                         hintText: 'Add Description...',
                         hintStyle: const TextStyle(color: Colors.white),
                         enabledBorder: OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.white, width: 2.0),
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.white, width: 2.0),
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                       ),
                     ),
                  ],
                )
              ),
              Padding(padding: EdgeInsets.all(10),
              child: Row(
                children: [Expanded(
                  child: CustomButtonFilled(
                    text: 'Post',
                    onPressed: () {},
                  ),
                ),
                ],
              )
              )
            ],
          ),
        ),
      );
    },
  );
}
