import 'package:flutter/material.dart';
import 'package:news/widgets/catListView.dart';
import 'package:news/widgets/newsListViewBuilder.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News'),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: category_list_view(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),

            NewsListViewBuilder(
              catigory: 'general',
            ), // Use the sliver directly
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            // Use the sliver directly
          ],
        ),
      ),
    );
  }
}
