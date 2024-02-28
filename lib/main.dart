import 'package:flutter/material.dart';

void main() {
  runApp(LanguageLearningApp());
}

class LanguageLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Language Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BnavigationBar(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to Language Learning App!'),
      ),
    );
  }
}






class LessonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff514745),
        title: Text('Lessons'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _buildLessonCard(
            context,
            'Greetings',
            'Hello - مرحبا\nGoodbye - وداعا\nHow are you? - كيف حالك؟',
          ),
          _buildLessonCard(
            context,
            'Numbers',
            'One - واحد\nTwo - اثنان\nThree - ثلاثة\nFour - أربعة\nFive - خمسة',
          ),
          _buildLessonCard(
            context,
            'Colors',
            'Red - أحمر\nGreen - أخضر\nBlue - أزرق\nYellow - أصفر\nOrange - برتقالي',
          ),
        ],
      ),
    );
  }

  Widget _buildLessonCard(BuildContext context, String title, String content) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}







class VocabularyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff514745),
        title: Text('Vocabulary')

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Common Words:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            _buildWordItem('Hello', 'مرحبا'),
            _buildWordItem('Goodbye', 'وداعا'),
            _buildWordItem('Thank you', 'شكرا لك'),
            _buildWordItem('Please', 'من فضلك'),
            _buildWordItem('Sorry', 'آسف'),
          ],
        ),
      ),
    );
  }

  Widget _buildWordItem(String word, String translation) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            '$word:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10),
          Text(
            translation,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}



class PracticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff514745),
        title: Text('Practice'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Translate the following words:',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              _buildPracticeCard('Bonjour', 'Hello'),
              _buildPracticeCard('Gato', 'Cat'),
              _buildPracticeCard('Libro', 'Book'),
              // Add more practice cards as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPracticeCard(String word, String translation) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              word,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Translate: $translation',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Type your answer here',
                border: OutlineInputBorder(),
              ),
              // Add logic to check user's answer
            ),
          ],
        ),
      ),
    );
  }
}


class BnavigationBar extends StatefulWidget{
  @override
  _BnavigationBarState createState() =>  _BnavigationBarState();

}
class _BnavigationBarState extends State<BnavigationBar>{
  int index=0;
  final pages =[
    Container(
      width: double.infinity,
      height: double.infinity,
      child: LessonsPage(),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: VocabularyPage(),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: PracticePage(),
    ),

  ];

  int index2=0;
  void x1(int index){
    setState(() {
      index2=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold
      (

      bottomNavigationBar: BottomNavigationBar(
        //unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        //selectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        onTap: x1,
        currentIndex: index2,
        type: BottomNavigationBarType.fixed,
        backgroundColor:  Color(0xff514745),
        unselectedFontSize: 20,


        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xfff94a0c),
            icon: Icon(Icons.menu_book,color: Colors.white,size: 30),
            label: '',

          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xfff94a0c),
            icon: Icon(Icons.library_books_outlined,color: Colors.white,size: 30),
            label: '',

          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xfff94a0c),
            icon: Icon(Icons.book,color: Colors.white,size: 26),
            label: '',

          ),


        ],

      ),
      body: pages[index2],
    );
  }

}

