import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoView extends StatefulWidget {
  @override
  _InfoViewState createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Image.asset('assets/logo/mlc.png'),
            SizedBox(height: 10),
            Text(
              'O ZapDirect é um aplicativo desenvolvido por MLCdigital, para criar um atalho '
              'entre você e a pessoa que deseja conversar no WhatsApp sem a necessidade '
              'de salvar o contato na sua agenda.',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'Está precisando de uma solução para sua empresa?',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Entre em contato.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Row(children: <Widget>[
              Expanded(
                child: RaisedButton(
                  color: Colors.teal[100],
                  onPressed: () => launch("tel:43996730232"),
                  child: Text(
                    'Ligar',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: RaisedButton(
                  color: Colors.teal[100],
                  onPressed: () => launch('mailto:murilolcabral@gmail.com'),
                  child: Text('E-mail',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: RaisedButton(
                    color: Colors.teal[100],
                    onPressed: () => launch(
                        'https://api.whatsapp.com/send?phone=5543996730232'),
                    child: Text(
                      'WhatsApp',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )),
              ),
            ]),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text('Estamos a disposição para participar do seu projeto que vai inovar a forma de fazer algo!',
              textAlign: TextAlign.center,),
            ),
          ]),
        ),
      ),
    );
  }
}