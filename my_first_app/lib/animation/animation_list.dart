import 'package:flutter/material.dart';

class AnimatedListt extends StatefulWidget {
  const AnimatedListt({super.key});

  @override
  State<AnimatedListt> createState() => _AnimatedListtState();
}

class _AnimatedListtState extends State<AnimatedListt> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItems() {
    _items.insert(0, 'Item${_items.length + 1}');
    _key.currentState!.insertItem(0, duration: const Duration(milliseconds:300 ));
  }

  // final mytile = ListTile();

  void _removeItems(int index) {
    _items.removeAt(index);
    _key.currentState!.removeItem(
        index, (context, animation) => SizeTransition(sizeFactor: animation));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated list'),
      ),
      body: AnimatedList(
        key: _key,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  _items[index],
                  style: const TextStyle(color: Colors.white),
                ),
                tileColor: Colors.indigo,
                trailing: IconButton(
                    onPressed: () => _removeItems(index),
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItems,
        child: const Icon(Icons.add),
      ),
    );
  }
}
