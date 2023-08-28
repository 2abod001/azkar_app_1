
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _content = 'الحمدلله ';
//home_screen
  @override
  Widget build(BuildContext context) {
    return
        // Directionality(
        //   textDirection: TextDirection.rtl,
        //   child:
        Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'مسبحة الاذكار',
          style: GoogleFonts.arefRuqaa(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        // leading: IconButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.arrow_back_ios),
        // ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about_screen',
                    arguments: {'message': 'واجهة عن التطبيق'});
              },
              icon: const Icon(Icons.info)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/faqs_screen');
                // Navigator.push(
                //   context,
                // //   MaterialPageRoute(
                // //     builder: (context) => FAQsScreen(
                // //       message: 'واجهة الاسئلة الشائعة',
                // //     ),
                // //   ),
                // // );
              },
              icon: const Icon(Icons.question_answer)),
          PopupMenuButton<String>(onSelected: (String selectedItem) {
            if (selectedItem != _content) {
              setState(() {
                print('setState');
                _content = selectedItem;
              });
            }
            debugPrint('content: $_content');
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 'الحمدلله',
                height: 0,
                child: Text(
                  'الحمدلله',
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF40513B),
                  ),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                value: 'استغفر الله',
                height: 0,
                child: Text(
                  'استغفر الله',
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF40513B),
                  ),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                value: 'لا اله الا الله',
                height: 0,
                child: Text(
                  'لا اله الا الله ',
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF40513B),
                  ),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                value: 'الله أكبر',
                height: 0,
                child: Text(
                  'الله أكبر ',
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF40513B),
                  ),
                ),
              ),
            ];
          })
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFF7EAA92),
              // Color(0xFFC3EDC0),
              Color(0xFFAAC8A7),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://modo3.com/thumbs/fit630x300/27046/1591744391/%D9%83%D9%8A%D9%81_%D8%AA%D8%B5%D9%86%D8%B9_%D9%85%D8%B3%D8%A8%D8%AD%D8%A9.jpg')),
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xFFEDF1D6),
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin:
                  EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFEDF1D6),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.arefRuqaa(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF40513B),
                      ),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.center,
                    color: Color(0xFF40513B),
                    height: 60,
                    width: 40,
                    child: Text(
                      _counter.toString(),
                      style: GoogleFonts.nunito(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFEDF1D6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF40513B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // _counter+=1; الطريقة الاولى
                        setState(() {
                          _counter++;
                        });
                        debugPrint('Counter$_counter');
                      },
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.arefRuqaa(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFEDF1D6),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEDF1D6),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      child: Text(
                        'اعادة',
                        style: GoogleFonts.arefRuqaa(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF40513B),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: const Color(0xFF40513B),
        child: Icon(Icons.add),onPressed: (){
       setState(() {
         _counter++;
       });
      },
      )
      // ),
    );
  }
}
