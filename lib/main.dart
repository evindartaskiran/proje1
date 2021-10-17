import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity:VisualDensity.adaptivePlatformDensity
      ),
      home: const MyHomePage(title: "Yemek Tarifleri"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.menu),
        title: Text(widget.title),
        actions: [
          Icon(Icons.fastfood_outlined)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.only(top:ekranYuksekligi/25,bottom:ekranYuksekligi/25),
            child: SizedBox(
              width: ekranGenisligi/2,
              child:Image.asset("resimler/balli-pancake.gif"),
            ),
          ),

          Text("🅟🅐🅝🅚🅔🅚 🅣🅐🅡🅘🅕🅘",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: ekranGenisligi/15,
          ),
          ),

          Padding(
            padding: EdgeInsets.only(left:ekranGenisligi/100, right:ekranGenisligi/100),
            child: Text("Süt, un, kabartma tozu, vanilya ilave çırpma teli ile çırpalım. Siz dilerseniz mikser ile de çırpabilirsiniz. Kek kıvamından biraz daha koyu olacak şekilde hamur hazırlayalım. Teflon ya da yapışmaz bir tavaya az sıvı yağı dökelim, fırça yardımı ile her tarafına dağıtalım. Sıvı yağı az kullanmak pankek yapmanın püf noktalarındandır.",
            textAlign: TextAlign.center,
              style:TextStyle(
                fontSize: ekranGenisligi/30,

              ),
            ),
          ),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(bottom: ekranYuksekligi/25),
            child: SizedBox(
              width: ekranGenisligi/2,
              height: ekranYuksekligi/15,
              child: ElevatedButton(


                  child:Text("Okay",style: TextStyle(fontSize: ekranGenisligi/15)),
                  onPressed: (){
                    print("Tarif Onaylandı");
                  },

              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


