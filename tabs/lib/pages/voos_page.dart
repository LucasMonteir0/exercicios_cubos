import 'package:flutter/material.dart';

class VoosPage extends StatelessWidget {
  const VoosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          const Text(
            'PARTIDA',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 40),
            child: Text(
              'Dezembro 13, 2022',
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(children: const [
              Text('GRU',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text('Guarulhos, Brasil'),
              ),
            ]),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Icon(
                Icons.flight_takeoff,
                size: 43,
              ),
            ),
            Column(children: const [
              Text('OPO',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text('Porto, Portugal'),
              ),
            ]),
          ])
        ],
      ),
    );
  }
}
