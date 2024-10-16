import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Uint8List? signaturePadKey;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Signature Pad',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 110),
                child: SizedBox(
                  height: 250,
                  width: 380,
                  child: Signature(controller: _controller),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    _controller.undo();
                  },
                  icon: const Icon(Icons.undo),
                  label: const Text('undo'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  _controller.clear();
                },
                icon: const Icon(Icons.clear),
                label: const Text('Clear'),
              ),
              const SizedBox(
                width: 25,
              ),
              ElevatedButton.icon(
                onPressed: () => _controller.redo(),
                icon: const Icon(Icons.redo),
                label: const Text('Redo'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
