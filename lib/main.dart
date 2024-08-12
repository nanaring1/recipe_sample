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
      title: 'layout example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Padding titleSection = Padding(padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('아스파라거스토마토구이 & 아스라파거스마늘볶음',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        ),
        Text('맛남의 광장에서 나온 아스파라거스요리!\n'
        '입에 감기는 맛이지만, 쉬운 요리법에\n'
        '술안주, 밥반찬으로 추천!',
        style: TextStyle(
          color: Colors.grey[800],
          fontSize: 16,
        ),
        ),
      ],
    ),
    );
    Widget iconSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children : [
        buildIconLabelRow(Icons.people, '4인분', Colors.grey),
        buildIconLabelRow(Icons.alarm, '15분이내', Colors.grey),
        buildIconLabelRow(Icons.star, '아무나', Colors.grey),
    ],
    );

    Widget stepSection = Padding(padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('조리순서',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              "1",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                '[아스파라거스 토마토 구이] 아스파라거스는 4~5cm 길이로 자른다.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Image.asset('assets/step01.jpg',
            width: MediaQuery.of(context).size.width * 0.3,
            fit: BoxFit.contain,
            )
          ],
        ),
        buildIconLabelRow(Icons.lightbulb,
        '굵기가 얇은 아스파라거스를 사용해도 좋아요.',Colors.teal,),
        buildIconLabelRow(Icons.shopping_cart, '라오메뜨 천연세라믹 양면도마', Colors.grey),
      ],
    ),
    );

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Recipe Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          titleSection,
          Image.asset(
            'assets/image01.jpg',
          ),
          iconSection,
          stepSection,
          ],
      ),
      ),
    );
  }

  Row buildIconLabelRow(IconData icon, String label, Color color,) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(left: 8.0),
        child: Text( label, style: TextStyle ( fontSize: 16, fontWeight: FontWeight.w400, color: color,
        ),
          ),
        ),
    ],
  );
  }
}
