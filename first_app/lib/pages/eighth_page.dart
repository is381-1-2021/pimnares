import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class EightPage extends StatefulWidget {
  @override
  _EightPageState createState() => _EightPageState();
}

class _EightPageState extends State<EightPage> {
  final TextEditingController _controller = TextEditingController();
  final _channel = WebSocketChannel.connect(Uri.parse('wss://demo.piesocket.com/v3/channel_1?api_key=oCdCMcMPQpbvNjUIzqtvF1d2X2okWpDQj4AwARJuAgtjhzKxVEjQU6IdCjwm&notify_self'));
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Web Socket'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Form(
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Sent a message'
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              StreamBuilder(
                stream: _channel.stream,
                builder: (context, snapshot) {
                  return Text(snapshot.hasData ? '${snapshot.data}': '');
                },
              )
            ],
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_controller.text.isNotEmpty) {
              _channel.sink.add(_controller.text);
            }
          },
          tooltip: 'Send message',
        ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
