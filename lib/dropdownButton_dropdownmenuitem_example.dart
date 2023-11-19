import 'package:flutter/material.dart';

class DropdowButtonnandDropdownMenuItemExampe extends StatefulWidget {
  const DropdowButtonnandDropdownMenuItemExampe({super.key});

  @override
  State<DropdowButtonnandDropdownMenuItemExampe> createState() =>
      _DropdowButtonnandDropdownMenuItemExampeState();
}

class _DropdowButtonnandDropdownMenuItemExampeState
    extends State<DropdowButtonnandDropdownMenuItemExampe> {
  String secilenSehir = 'sivas';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownButton<String>(
      items: const [
        DropdownMenuItem<String>(
          value: 'izmir',
          child: Text('İzmir'),
        ),
        DropdownMenuItem<String>(
          value: 'sivas',
          child: Text('Sivas'),
        ),
        DropdownMenuItem<String>(
          value: 'karabuk',
          child: Text('Karabük'),
        ),
        DropdownMenuItem<String>(
          value: 'samsun',
          child: Text('Samsun'),
        )
      ],
      value: secilenSehir,
      onChanged: (yapilanSecim) {
        setState(() {
          secilenSehir = yapilanSecim!;
        });
      },
    ));
  }
}
