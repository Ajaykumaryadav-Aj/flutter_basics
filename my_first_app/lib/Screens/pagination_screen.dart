import 'package:flutter/material.dart';
import 'package:my_first_app/models/photo_model.dart';
import 'package:my_first_app/providers/page_provider.dart';
import 'package:my_first_app/utils/utils.dart';
import 'package:provider/provider.dart';

class PaginationScreen extends StatefulWidget {
  const PaginationScreen({super.key});

  @override
  State<PaginationScreen> createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen> {
  late PageProvider provider;
  bool isLoading = true;
  bool loader = false;

  @override
  void initState() {
    provider = Provider.of<PageProvider>(context, listen: false);
    provider.getPhotos().then((value) {
      isLoading = false;
      pagination();
    });
    super.initState();
  }

  int offset = 1;
  bool paginate = true;

  void pagination() {
    if (!paginate) return;
    setState(() {
      loader = true;
    });
    provider.getPhotos().then((value) {
      // isLoading = false;

      if (value < 10) paginate = false;
      loader = false;
      offset++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photos'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
            children: [
              Expanded(
                child: Selector<PageProvider, List<PhotoModel>>(
                    selector: (p0, p1) => p1.photos,
                    builder: (context, list, child) {
                      return NotificationListener(
                        onNotification: (notification) =>
                            Utils.scrollNotification(notification, pagination),
                        child: GridView.builder(
                          padding: const EdgeInsets.all(10),
                          itemCount: list.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) => GridTile(
                            footer: Text(list[index].author),
                            child: Image.network(list[index].pic),
                          ),
                        ),
                      );
                    }),
              ),
            if(loader)const Center(child: CircularProgressIndicator(),)
            ],
          ),
    );
  }
}
