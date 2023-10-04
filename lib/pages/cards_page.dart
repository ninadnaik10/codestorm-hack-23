// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/card_model.dart';
import '../widgets/rating.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  handleSubmit() {
    // logic to save data
  }

  bool light1 = true;
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 10),
        //   child: TextFormField(
        //     minLines: 1,
        //     maxLines: null,
        //     keyboardType: TextInputType.multiline,
        //     decoration: InputDecoration(
        //         alignLabelWithHint: true,
        //         border: OutlineInputBorder(),
        //         labelText: 'Feedback',
        //         hintText: "Enter Feedback"),
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Perform the search here
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: ItemModel.items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: ListTile(
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          ItemModel.items[index].image,
                        )),
                    title: Text(ItemModel.items[index].name),
                    subtitle: Text(ItemModel.items[index].position),
                    trailing: InkWell(
                      child: Text(
                        "Feedback",
                        // textScaleFactor: 1.3,
                      ),
                      onTap: () => {
                        //go to rating page
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
