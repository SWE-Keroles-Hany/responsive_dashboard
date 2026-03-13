import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          // 1️⃣ AppBar قابل للتمرير
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("My Custom Scroll View"),
              background: Image.network(
                "https://picsum.photos/400/200",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 2️⃣ قائمة SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: Icon(Icons.person),
                title: Text("Item $index"),
              ),
              childCount: 20,
            ),
          ),

          // 3️⃣ Grid SliverGrid
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Colors.blue[100 * ((index % 8) + 1)],
                child: Center(child: Text("Grid $index")),
              ),
              childCount: 6,
            ),
          ),

          // 4️⃣ أي Widget عادي
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: Colors.red,
              child: Center(child: Text("I'm a normal widget!")),
            ),
          ),
        ],
      ),
    );
  }
}
