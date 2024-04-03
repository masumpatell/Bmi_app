import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var weight = TextEditingController();
  var height = TextEditingController();
  var age = TextEditingController();
  var name = TextEditingController();
  String result = "";
  var bg;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: bg,
              ),

              height: 600,
              width: 390,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Center(
                        child: Text(
                      "Welcome To Masum BMI App",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.deepPurple, width: 4)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Colors.deepPurple, width: 4),
                          ),
                          hintText: "Enter Your Name",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        controller: weight,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.deepPurple, width: 4)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Colors.deepPurple, width: 4),
                          ),
                          hintText: "Enter Your Weight",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        controller: height,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.deepPurple, width: 4)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Colors.deepPurple, width: 4),
                          ),
                          hintText: "Enter Your Height In Meters",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        controller: age,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.deepPurple, width: 4)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Colors.deepPurple, width: 4),
                          ),
                          hintText: "Enter Your Age",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: 350,
                      child: Center(child: Text(result,style: const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                        width: 300,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            var h=height.text;
                            var w=weight.text;
                            var a=age.text;
                            var n=name.text;
                            var x=int.parse(h);
                            var y=int.parse(w);
                            var o=(y)/(x*2);

                            if(o>=18 && o<=25){
                              bg=Colors.pink[200];
                            }
                            else if(25>o){
                              bg=Colors.red[200];
                            }
                            else{
                              bg=Colors.green[200];
                            }

                            if(h!="" && w!="" && a!="" && n!=""){
                                setState(() {
                                  result="Your BMI Data Is $o";
                                });
                            }
                            else{
                              setState(() {
                                result="Please Fill All Details";
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple),
                          child: const Text(
                            "Check Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}


