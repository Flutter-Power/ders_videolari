import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Containerlarr"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 300,
            child: Text("a" * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("b" * 50),
          ),
          Container(
            constraints: const BoxConstraints(
                maxWidth: 150, minWidth: 50, maxHeight: 150, minHeight: 50),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtilty.boxDecaration,
            child: Text("c" * 500),
          )
        ],
      ),
    );
  }
}

class ProjectUtilty {
  static BoxDecoration boxDecaration = BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      //color: Colors.deepPurple,
      gradient: const LinearGradient(colors: [Colors.pink, Colors.black]),
      boxShadow: const [
        BoxShadow(
            color: Colors.lightBlueAccent,
            offset: Offset(0.1, 1),
            blurRadius: 12)
      ],
      border: Border.all(width: 2, color: Colors.limeAccent));
}

class ProjectContainerDecaration extends BoxDecoration {
  ProjectContainerDecaration()
      : super(
            borderRadius: BorderRadius.circular(15),
            //color: Colors.deepPurple,
            gradient: const LinearGradient(colors: [Colors.pink, Colors.black]),
            boxShadow: [
              const BoxShadow(
                  color: Colors.lightBlueAccent,
                  offset: Offset(0.1, 1),
                  blurRadius: 12)
            ],
            border: Border.all(width: 2, color: Colors.limeAccent));
}
