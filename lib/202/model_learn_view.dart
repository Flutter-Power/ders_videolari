import 'package:flutter/material.dart';
import 'package:youtube1/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: "a");

  @override
  void initState() {
    super.initState();
    final user0 = PostModel0()
      ..id = 1
      ..title = "hello";
    user0.body = "maraba";
    final user1 = PostModel1()
      ..id = 1
      ..title = "hello";
    user1.body = "maraba";

    final user2 = PostModel2(1, 2, "title", "body");
    user2.body = "a";

    final user3 = PostModel3(1, 1, "title", "body");
    //user3.body="a"    final  olarak verildiği için  user3 üzerinde işlem yapılmaz

    final user4 = PostModel4(userId: 1, id: 2, title: "title", body: "body");
    //user4.id=1    final  olarak verildiği için  user4 üzerinde işlem yapılmaz

    final user5 = PostModel5(userId: 1, id: 2, title: "title", body: "body");
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 2, title: "title", body: "body");
    // user 5 te ki gibi private  veriable atadık doğrudan verilere erişilemiyor getle getirmen lazım

    final user7 = PostModel7();

    // service
    final user8 = PostModel8(body: "a");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: "vb");
            user9.updateBody(null);
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? "hiç bir veri atanmamis"),
      ),
    );
  }
}
