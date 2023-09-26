import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    // init statten sonra çalışır
    super.didChangeDependencies();
    print("a");
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    // bir önceki statten gelen veriyi gönderir sanırım tam anlamadım tekrar bakıcam
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      print("b");
      setState(() {});
    }
  }

  @override
  void dispose() {
    // sayfa ile işlem yaptıktan sonra sayfada temizleme işlemleri yapar ,
    //sayfadan çıkarken sayfada istediğin işlemleri temizleyebilirsin
    super.dispose();
    print("alo");
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print("c");
  }

  void _computeName() {
    if (_isOdd) {
      _message += " tek";
    } else {
      _message += " çift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_message)),
        body: _isOdd
            ? TextButton(
                onPressed: (() {
                  setState(() {
                    _message = "değişti";
                  });
                }),
                child: Text(_message))
            : ElevatedButton(onPressed: (() {}), child: Text(_message)));
  }
}
