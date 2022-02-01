import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  late String value;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('suhaushuahusha'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: TextFormField(
                controller: controller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FloatingActionButton(
                onPressed: () => {
                  if (_formKey.currentState!.validate())
                    {
                      /*ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('process...'))),*/
                      setState(
                        (() => {controller.text}),
                      )
                    }
                },
                child: const Text('Submit'),
              ),
            ),
            Text(controller.text)
          ],
        ),
      ),
    );
  }
}
