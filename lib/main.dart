import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String groupTitle = 'The Electronic Structure Theory  Group';
    const String browserTitle = 'The Electronic Structure Theory Group @ BUAA';
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return MaterialApp(
          title: browserTitle,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: DefaultTabController(
            length: 6,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(150),
                child: AppBar(
                  toolbarHeight: 100,
                  title: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: groupTitle,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n@ Beihang University (BUAA)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                  ),
                  bottom: const TabBar(
                    padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.home),
                        text: 'Home',
                      ),
                      Tab(
                        icon: Icon(Icons.people),
                        text: 'People',
                      ),
                      Tab(
                        icon: Icon(Icons.science),
                        text: 'Research',
                      ),
                      Tab(
                        icon: Icon(Icons.one_k_plus),
                        text: 'Publications',
                      ),
                      Tab(
                        icon: Icon(Icons.contact_page),
                        text: 'Contact',
                      ),
                      Tab(
                        icon: Icon(Icons.miscellaneous_services),
                        text: 'Miscellaneous',
                      ),
                    ],
                  ),
                ),
              ),
              body: const TabBarView(
                children: [
                  MyHomePage(
                    nowPage: 0,
                  ),
                  MyHomePage(
                    nowPage: 1,
                  ),
                  MyHomePage(
                    nowPage: 2,
                  ),
                  MyHomePage(
                    nowPage: 3,
                  ),
                  MyHomePage(
                    nowPage: 4,
                  ),
                  MyHomePage(
                    nowPage: 5,
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        return MaterialApp(
          title: browserTitle,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: DefaultTabController(
            length: 6,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(130),
                child: AppBar(
                  toolbarHeight: 100,
                  title: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: groupTitle,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n@ Beihang University (BUAA)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                  ),
                  bottom: const TabBar(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.home),
                      ),
                      Tab(
                        icon: Icon(Icons.people),
                      ),
                      Tab(
                        icon: Icon(Icons.science),
                      ),
                      Tab(
                        icon: Icon(Icons.one_k_plus),
                      ),
                      Tab(
                        icon: Icon(Icons.contact_page),
                      ),
                      Tab(
                        icon: Icon(Icons.miscellaneous_services),
                      ),
                    ],
                  ),
                ),
              ),
              body: const TabBarView(
                children: [
                  MyHomePage(
                    nowPage: 0,
                  ),
                  MyHomePage(
                    nowPage: 1,
                  ),
                  MyHomePage(
                    nowPage: 2,
                  ),
                  MyHomePage(
                    nowPage: 3,
                  ),
                  MyHomePage(
                    nowPage: 4,
                  ),
                  MyHomePage(
                    nowPage: 5,
                  ),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.nowPage});
  final int nowPage;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return Scaffold(
          body: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 150,
              width: MediaQuery.of(context).size.width - 300,
              child: NowWidget(nowPage: nowPage),
            ),
          ),
        );
      } else {
        return Scaffold(
          body: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 130,
              width: MediaQuery.of(context).size.width,
              child: NowWidget(nowPage: nowPage),
            ),
          ),
        );
      }
    });
  }
}

class NowWidget extends StatelessWidget {
  const NowWidget({
    super.key,
    required this.nowPage,
  });
  final int nowPage;
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (nowPage) {
      case 0:
        page = const HomePage();
        break;
      case 1:
        page = const PeoplePage();
        break;
      case 2:
        page = const ResearchPage();
        break;
      case 4:
        page = const ContactPage();
        break;
      default:
        page = const ComingUp();
    }
    return page;
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return SizedBox(
          height: MediaQuery.of(context).size.height - 150,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/imgs/home1.png'),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: SelectableText(
                              """We are an electronic structure theory research lab within the School of Physics at Beihang University (BUAA), Beijing. Our research spans the interdisciplinary fields of physics, chemistry, and computational science, which include the development of quantum chemistry methods and codes, computational materials science, as well as the exploration of new algorithms based on machine learning and quantum computing. We are particularly interested in the study of relativistic effects and strong correlations of materials containing heavy elements.""",
                              style: TextStyle(fontSize: 19.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/imgs/home2.png',
                width: MediaQuery.of(context).size.width * 0.7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: const Text("京ICP备2023032577号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                    onTap: () =>
                        launchUrl(Uri.parse('https://beian.miit.gov.cn')),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                    child: Text("京公网安备11011402053652号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                  ),
                ],
              ),
            ],
          ),
        );
      } else {
        return SizedBox(
          height: MediaQuery.of(context).size.height - 150,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/imgs/home1.png'),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: SelectableText(
                              """We are an electronic structure theory research lab within the School of Physics at Beihang University (BUAA), Beijing. Our research spans the interdisciplinary fields of physics, chemistry, and computational science, which include the development of quantum chemistry methods and codes, computational materials science, as well as the exploration of new algorithms based on machine learning and quantum computing. We are particularly interested in the study of relativistic effects and strong correlations of materials containing heavy elements.""",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Image.asset('assets/imgs/home2.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: const Text("京ICP备2023032577号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                    onTap: () =>
                        launchUrl(Uri.parse('https://beian.miit.gov.cn')),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                    child: Text("京公网安备11011402053652号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    });
  }
}

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: SelectableText(
                  'Current Group Members',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      'assets/imgs/zrd.jpeg',
                      width: MediaQuery.of(context).size.width * 0.1 * 0.9,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Rundong Zhao(赵润东)',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """Associate Professor, School of Physics, Beihang university
2021-           Associate Professor, School of Physics, Beihang University
2018-2020   Postdoc, Duke University
2016-2017   Postdoc, Hong Kong Baptist University
2010-2015   Ph.D, College of Chemistry and Molecular Engineering, Peking University
2006-2010   B.S., School of Physics, Shandong University
                        """,
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // width: 600,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/imgs/hanwang.png',
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Han Wang (王晗)',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""PhD Student
M.S., School of Physics, Central South University
B.S. China Jiliang University
Research interest: fully relativistic DFT+U method and code development; magnetic properties of strongly correlated materials."""),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/imgs/zhengpan.png',
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Zheng Pan (潘政)',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""PhD Student
B.S. Nanjing University of Information Science and Technology
Research interest: AI-accelerated ab initio algorithms; relativistic four-component hybrid density functional theory and code development."""),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/imgs/wenhaoli.png',
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Wenhao Li (李文豪)',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""MPhil (~PhD) Student
B.S. Hebei University
Research interest: electric-field-driven molecular machines; intermolecular interactions."""),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/imgs/xinyitan.png',
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Xinyi Tan (谭心怡)',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""MPhil (~PhD) Student
B.S. Xiangtan University
Research interest: metallofullerenes; electronic properties of silicates."""),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/imgs/zhaoyangzhang.png',
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Zhaoyang Zhang (张朝阳)',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""Undergraduate Student
Research interest: relativistic energy band theory; perovskites.
                              """),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            height: 200,
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                            child: const Placeholder(),
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Huanhuan Cao (曹欢欢)',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""MPhil (expected 2024)
B.S. Nanhua University (expected 2024)
Research interest: electronic properties of silicates containing lanthanide elements."""),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/imgs/peileizuo.png',
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Peilei Zuo (左沛雷)',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""
Undergraduate Student
Research interest: molecular dynamics for organic-inorganic hybrid perovskites.
                              """),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/imgs/deyangliang.png',
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Deyang Liang (梁德杨)',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""
Undergraduate Student
Research interest: Deep learning for spin-orbit splittings of perovskites.
                              """),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/imgs/shengriliu.png',
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Shengri Liu (刘声日)',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""
Undergraduate Student
Research interest: molecular dynamics and deep neuro network training for perovskites."""),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/imgs/siyuanzhang.png',
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Siyuan Zhang (章思远)',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""Undergraduate Student
Research interest: machine learning; Principal Components Analysis; spin-orbit coupling effects.
                              """),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            height: 200,
                            width:
                                MediaQuery.of(context).size.width * 0.1 * 0.8,
                            child: const Placeholder(),
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  'Xifei Tian (田玺非)',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText("""Undergraduate Student
Research interest: coming soon...
                              """),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ],
              ),
              const SizedBox(
                height: 500,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: const Text("京ICP备2023032577号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                    onTap: () =>
                        launchUrl(Uri.parse('https://beian.miit.gov.cn')),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                    child: Text("京公网安备11011402053652号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                  ),
                ],
              ),
            ],
          ),
        );
      } else {
        return SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SelectableText(
                    'Current Group Members',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              //Rundong Zhao
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/zrd.jpeg',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Rundong Zhao\n(赵润东)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """Associate Professor, School of Physics, Beihang university
2021-           Associate Professor, School of Physics, Beihang University
2018-2020   Postdoc, Duke University
2016-2017   Postdoc, Hong Kong Baptist University
2010-2015   Ph.D, College of Chemistry and Molecular Engineering, Peking University
2006-2010   B.S., School of Physics, Shandong University
                        """,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Han Wang
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/hanwang.png',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Han Wang\n(王晗)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """PhD Student
M.S., School of Physics, Central South University
B.S. China Jiliang University
Research interest: fully relativistic DFT+U method and code development; magnetic properties of strongly correlated materials.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Zheng Pan
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/zhengpan.png',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Zheng Pan\n(潘政)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """PhD Student
B.S. Nanjing University of Information Science and Technology
Research interest: AI-accelerated ab initio algorithms; relativistic four-component hybrid density functional theory and code development.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Wenhao Li
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/wenhaoli.png',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Wenhao Li\n(李文豪)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """MPhil (~PhD) Student
B.S. Hebei University
Research interest: electric-field-driven molecular machines; intermolecular interactions.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Xinyi Tan
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/xinyitan.png',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Xinyi Tan\n(谭心怡)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """MPhil (~PhD) Student
B.S. Xiangtan University
Research interest: metallofullerenes; electronic properties of silicates.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Zhaoyang Zhang
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/zhaoyangzhang.png',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Zhaoyang Zhang\n(张朝阳)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """Undergraduate Student
Research interest: relativistic energy band theory; perovskites.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Huanhuan Cao
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: const Placeholder(),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Huanhuan Cao\n(曹欢欢)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """MPhil (expected 2024)
B.S. Nanhua University (expected 2024)
Research interest: electronic properties of silicates containing lanthanide elements.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Peilei Zuo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/peileizuo.png',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Peilei Zuo\n(左沛雷)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """Undergraduate Student
Research interest: molecular dynamics for organic-inorganic hybrid perovskites.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Deyang Liang (梁德杨)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/deyangliang.png',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Deyang Liang\n(梁德杨)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """Undergraduate Student
Research interest: Deep learning for spin-orbit splittings of perovskites.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/shengriliu.png',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Shengri Liu\n(刘声日)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """Undergraduate Student
Research interest: molecular dynamics and deep neuro network training for perovskites.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/imgs/siyuanzhang.png',
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Siyuan Zhang\n(章思远)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """Undergraduate Student
Research interest: machine learning; Principal Components Analysis; spin-orbit coupling effects.""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: const Placeholder(),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            'Xifei Tian\n(田玺非)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SelectableText(
                            """Undergraduate Student
Research interest: coming soon...""",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 500,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: const Text("京ICP备2023032577号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                    onTap: () =>
                        launchUrl(Uri.parse('https://beian.miit.gov.cn')),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                    child: Text("京公网安备11011402053652号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    });
  }
}

class ResearchPage extends StatelessWidget {
  const ResearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: SelectableText(
                  'Research Areas in the Zhao Group',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: SelectableText(
                  """1. Density Functional Theory (DFT) Methods for Relativistic Effects and Strong Correlations in Extended Systems:""",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: SelectableText(
                  '''Materials containing heavy elements exhibit numerous novel properties, placing them at the forefront of physics and chemistry research. Compared to light elements, heavy atoms in the last few rows of the periodic table have much more complex electronic structures, leading to a long-standing challenge for ab initio calculations. This complexity often arises from two aspects: relativistic effects, which conceptually include the so-called scalar relativistic (SR) effects and the spin-orbit coupling (SOC) effects; and strong correlation effects, usually associated with the electron localization of unfilled d/f shells of transition metals.
          In previous studies, we have developed a quasi-four-component (Q4C) relativistic energy band theory for extended systems (with hundreds of atoms in a unit cell). This approach enables accurate fully-relativistic all-electron calculations for electronic structures with much cheaper computational costs. To further address relativistic effects and strong correlations synergistically, our group is currently working on developing fully-relativistic DFT+U methods and fully-relativistic hybrid functionals, which are expected to facilitate more accurate first-principles calculations for heavy-element-containing systems.''',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Image.asset(
                'assets/imgs/research1.png',
                width: MediaQuery.of(context).size.width * 0.35,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: SelectableText(
                  """2. Large-Scale DFT Code Development:""",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: SelectableText(
                  '''We are active developers of the FHI-aims electronic structure code package, which is an all-electron full-potential DFT code designed for large-scale parallel calculations. The ongoing in-house developments will be implemented under the framework of FHI-aims, adopting numeric atomical orbitals (NAO) as basis sets.''',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: SelectableText(
                  """3. Computational Chemistry and Materials Sciences:""",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: SelectableText(
                  '''The aforementioned methods will be applied to materials containing heavy elements, such as perovskites, nuclear fuels, and magnetic materials.''',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imgs/research2.png',
                          width: MediaQuery.of(context).size.width * 0.5 / 3,
                        ),
                        const SelectableText(
                            'Organic-Inorganic Hybrid Perovskites'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imgs/research3.png',
                          width: MediaQuery.of(context).size.width * 0.5 / 3,
                        ),
                        const SelectableText(
                            'Electric-Driven Molecular Machines'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imgs/research4.png',
                          width: MediaQuery.of(context).size.width * 0.35 / 3,
                        ),
                        const SelectableText('Metallofullerenes'),
                      ],
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: SelectableText(
                  """4. Machine Learning (ML) and Quantum Computations for Electronic Structures:""",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: SelectableText(
                  '''
          Through deep learning with convolutional neuro networks on large datasets, we aim to reveal the influence of structural information, such as bond lengths and angles, on the spin-orbit splitting magnitude in perovskite systems.
          Our group is also involved in developing deep learning (or other ML algorithms)-based ab initio methods that can accelerate electronic structure calculations.
          Another new direction is quantum computation. We will be collaborating with teams from Institute of Software, CAS and from University of Science and Technology of China (USTC), on one of the leading quantum computers located at USTC. The main interest will be developing ab initio algorithms for near-term quantum computers, and also early-stage applications to quantum chemistry.
          ''',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 500,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: const Text("京ICP备2023032577号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                    onTap: () =>
                        launchUrl(Uri.parse('https://beian.miit.gov.cn')),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                    child: Text("京公网安备11011402053652号",
                        style: TextStyle(
                            color: Color.fromARGB(120, 180, 180, 180))),
                  ),
                ],
              ),
            ],
          ),
        );
      } else {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SelectableText(
                    'Research Areas in the Zhao Group',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    """1. Density Functional Theory (DFT) Methods for Relativistic Effects and Strong Correlations in Extended Systems:""",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    '''Materials containing heavy elements exhibit numerous novel properties, placing them at the forefront of physics and chemistry research. Compared to light elements, heavy atoms in the last few rows of the periodic table have much more complex electronic structures, leading to a long-standing challenge for ab initio calculations. This complexity often arises from two aspects: relativistic effects, which conceptually include the so-called scalar relativistic (SR) effects and the spin-orbit coupling (SOC) effects; and strong correlation effects, usually associated with the electron localization of unfilled d/f shells of transition metals.
In previous studies, we have developed a quasi-four-component (Q4C) relativistic energy band theory for extended systems (with hundreds of atoms in a unit cell). This approach enables accurate fully-relativistic all-electron calculations for electronic structures with much cheaper computational costs. To further address relativistic effects and strong correlations synergistically, our group is currently working on developing fully-relativistic DFT+U methods and fully-relativistic hybrid functionals, which are expected to facilitate more accurate first-principles calculations for heavy-element-containing systems.''',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/imgs/research1.png',
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    """2. Large-Scale DFT Code Development:""",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    '''We are active developers of the FHI-aims electronic structure code package, which is an all-electron full-potential DFT code designed for large-scale parallel calculations. The ongoing in-house developments will be implemented under the framework of FHI-aims, adopting numeric atomical orbitals (NAO) as basis sets.''',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    """3. Computational Chemistry and Materials Sciences:""",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    '''The aforementioned methods will be applied to materials containing heavy elements, such as perovskites, nuclear fuels, and magnetic materials.''',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/imgs/research2.png',
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        const SelectableText(
                            'Organic-Inorganic\nHybrid Perovskites'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/imgs/research3.png',
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        const SelectableText(
                            'Electric-Driven\nMolecular Machines'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/imgs/research4.png',
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        const SelectableText('Metallofullerenes'),
                      ],
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    """4. Machine Learning (ML) and Quantum Computations for Electronic Structures:""",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    '''
Through deep learning with convolutional neuro networks on large datasets, we aim to reveal the influence of structural information, such as bond lengths and angles, on the spin-orbit splitting magnitude in perovskite systems.
Our group is also involved in developing deep learning (or other ML algorithms)-based ab initio methods that can accelerate electronic structure calculations.
Another new direction is quantum computation. We will be collaborating with teams from Institute of Software, CAS and from University of Science and Technology of China (USTC), on one of the leading quantum computers located at USTC. The main interest will be developing ab initio algorithms for near-term quantum computers, and also early-stage applications to quantum chemistry.
''',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 500,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: const Text("京ICP备2023032577号",
                          style: TextStyle(
                              color: Color.fromARGB(120, 180, 180, 180))),
                      onTap: () =>
                          launchUrl(Uri.parse('https://beian.miit.gov.cn')),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                      child: Text("京公网安备11011402053652号",
                          style: TextStyle(
                              color: Color.fromARGB(120, 180, 180, 180))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 150,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SelectableText(
                        'Contact',
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: SelectableText(
                        '''Rundong Zhao, Principal Investigator
Associate Professor of Physics
Office: C734, Shahe Campus, Beihang University, Changping District, Beijing
E-mail rdzhao <at> buaa.edu.cn''',
                        style: TextStyle(
                          // color: Colors.blue[300],
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SelectableText(
                        'Openings',
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: SelectableText(
                        '''We typically recruit 1-2 undergraduate researchers, 1-2 MPhil students (with intent to pursue PhD), and 1-2 PhD students per year. Undergraduate and prospective MPhil/PhD students are welcome to reach out for a discussion.
Please note that there are no openings for CSC international students at the Master’s degree level. Therefore, all inquiries will not receive a response—apologies!
For postdoc or visiting scholar positions, please contact the PI for more details.''',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: const Text("京ICP备2023032577号",
                    style:
                        TextStyle(color: Color.fromARGB(120, 180, 180, 180))),
                onTap: () => launchUrl(Uri.parse('https://beian.miit.gov.cn')),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                child: Text("京公网安备11011402053652号",
                    style:
                        TextStyle(color: Color.fromARGB(120, 180, 180, 180))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MiscellaneousPage extends StatelessWidget {
  const MiscellaneousPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/imgs/msl1.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/imgs/msl2.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/imgs/msl3.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/imgs/msl4.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/imgs/msl5.png'),
          ),
          const SizedBox(
            height: 500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: const Text("京ICP备2023032577号",
                    style:
                        TextStyle(color: Color.fromARGB(120, 180, 180, 180))),
                onTap: () => launchUrl(Uri.parse('https://beian.miit.gov.cn')),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                child: Text("京公网安备11011402053652号",
                    style:
                        TextStyle(color: Color.fromARGB(120, 180, 180, 180))),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class ComingUp extends StatelessWidget {
  const ComingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height - 150,
      child: Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: [
                      SelectableText(
                        'Coming up soon!!!',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: const Text("京ICP备2023032577号",
                    style:
                        TextStyle(color: Color.fromARGB(120, 180, 180, 180))),
                onTap: () => launchUrl(Uri.parse('https://beian.miit.gov.cn')),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                child: Text("京公网安备11011402053652号",
                    style:
                        TextStyle(color: Color.fromARGB(120, 180, 180, 180))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
