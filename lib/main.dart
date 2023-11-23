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
    const String groupTitle = 'The Electronic Structure Research Group';
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(130.0),
            child: AppBar(
              title: const Column(
                children: [
                  Text(
                    groupTitle,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '@ Beihang University (BUAA)',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              bottom: const TabBar(
                tabs: [
                  Column(
                    children: [
                      Tab(icon: Icon(Icons.home)),
                      Text('Home'),
                    ],
                  ),
                  Column(
                    children: [
                      Tab(icon: Icon(Icons.people)),
                      Text('People'),
                    ],
                  ),
                  Column(
                    children: [
                      Tab(icon: Icon(Icons.science)),
                      Text('Research'),
                    ],
                  ),
                  Column(
                    children: [
                      Tab(icon: Icon(Icons.one_k_plus)),
                      Text('Publications'),
                    ],
                  ),
                  Column(
                    children: [
                      Tab(icon: Icon(Icons.contact_page)),
                      Text('Contact'),
                    ],
                  ),
                  Column(
                    children: [
                      Tab(icon: Icon(Icons.miscellaneous_services)),
                      Text('Miscellaneous'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              MyHomePage(
                now_page: 0,
              ),
              MyHomePage(
                now_page: 1,
              ),
              MyHomePage(
                now_page: 2,
              ),
              MyHomePage(
                now_page: 3,
              ),
              MyHomePage(
                now_page: 4,
              ),
              MyHomePage(
                now_page: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.now_page});
  final int now_page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // nowwedight(now_page: 3),
          nowwedight(now_page: now_page),
        ],
      ),
    );
  }
}

class nowwedight extends StatelessWidget {
  const nowwedight({
    super.key,
    required this.now_page,
  });
  final int now_page;
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (now_page) {
      case 0:
        page = const homePage();
        break;
      case 1:
        page = const peoplePage();
        break;
      case 2:
        page = const ResearchPage();
        break;
      case 4:
        page = const ContactPage();
        break;
      case 5:
        page = const MiscellaneousPage();
        break;
      default:
        // page = Expanded(child: Placeholder());
        page = ComingUp();
    }
    return page;
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('imgs/home1.png'),
                const Text(
                  """We are an electronic structure theory research lab within the School of Physics at Beihang University (BUAA), Beijing. Our research spans the interdisciplinary fields of physics, chemistry, and computational science, which include the development of quantum chemistry methods and codes, computational materials science, as well as the exploration of new algorithms based on machine learning and quantum computing. We are particularly interested in the study of relativistic effects and strong correlations of materials containing heavy elements.""",
                  style: TextStyle(fontSize: 30.0),
                ),
                Image.asset('imgs/home2.png'),
                SizedBox(
                  height: 500,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Text("京ICP备2023032577号"),
                    onTap: () =>
                        launchUrl(Uri.parse('https://beian.miit.gov.cn')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class peoplePage extends StatelessWidget {
  const peoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'imgs/zrd.jpeg',
                    height: 300,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Rundong Zhao(赵润东)',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      """Associate Professor, School of Physics, Behang university
2021-           Associate Professor, School of Physics, Beihang University
2018-2020   Postdoc, Duke University
2016-2017   Postdoc, Hong Kong Baptist University
2010-2015   Ph.D, College of Chemistry and Molecular Engineering, Peking University
2006-2010   B.S., School of Physics, Shandong University
""",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'imgs/hanwang.png',
                          height: 300,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Han Wang (王晗)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""PhD Student
M.S., School of Physics, Central South University
B.S. China Jiliang University
Research interest: fully relativistic DFT+U method and code development; magnetic properties of strongly correlated materials.
"""),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'imgs/zhengpan.png',
                          height: 300,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Zheng Pan (潘政)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""PhD Student
B.S. Nanjing University of Information Science and Technology
Research interest: AI-accelerated ab initio algorithms; relativistic four-component hybrid density functional theory and code development.
"""),
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
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'imgs/wenhaoli.png',
                          height: 300,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Wenhao Li (李文豪)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""Mphil (~PhD) Student
B.S. Hebei University
Research interest: Electric-driven molecular motors; intermolecular interactions.
"""),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'imgs/xinyitan.png',
                          height: 300,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Xinyi Tan (谭心怡)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""Mphil (~PhD) Student
B.S. Xiangtan University
Research interest: fullerene-based nuclear fuels; electronic properties of silicates.
"""),
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
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'imgs/zhaoyangzhang.png',
                          height: 300,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Zhaoyang Zhang (张朝阳)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""Undergraduate Student
Research interest: relativistic energy band theory; perovskites.
"""),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 300,
                          width: 200,
                          child: Placeholder(),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Huanhuan Cao (曹欢欢)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""Mphil (expected 2024)
B.S. Nanhua University (expected 2024)
Research interest: electronic properties of silicates containing lanthanide elements.
"""),
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
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'imgs/peileizuo.png',
                          height: 300,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Peilei Zuo (左沛雷)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""
Undergraduate Student
Research interest: molecular dynamics for organic-inorganic hybrid perovskites.
"""),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'imgs/deyangliang.png',
                          height: 300,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Deyang Liang (梁德杨)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""
Undergraduate Student
Research interest: Deep learning for spin-orbit splittings of perovskites.
"""),
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
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'imgs/shengriliu.png',
                          height: 300,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Shengri Liu (刘声日)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""
Undergraduate Student
Research interest: molecular dynamics and deep neuro network training for perovskites.
"""),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'imgs/siyuanzhang.png',
                          height: 300,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Siyuan Zhang (章思远)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""Undergraduate Student
Research interest: machine learning; Principal Components Analysis; spin-orbit coupling effects.
"""),
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
                Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 300,
                          width: 200,
                          child: Placeholder(),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Xifei Tian (田玺非)',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("""Undergraduate Student
Research interest: coming soon...
"""),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                ),
              ],
            ),
            SizedBox(
              height: 500,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Text("京ICP备2023032577号"),
                onTap: () => launchUrl(Uri.parse('https://beian.miit.gov.cn')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResearchPage extends StatelessWidget {
  const ResearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Text(
                'Research Areas in the Zhao Group',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    """1. Density Functional Theory (DFT) Methods for Relativistic Effects and Strong Correlations in Extended Systems:
                        """,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '''Materials containing heavy elements exhibit numerous novel properties, placing them at the forefront of physics and chemistry research. Compared to light elements, heavy atoms in the last few rows of the periodic table have much more complex electronic structures, leading to a long-standing challenge for ab initio calculations. This complexity often arises from two aspects: relativistic effects, which conceptually include the so-called scalar relativistic (SR) effects and the spin-orbit coupling (SOC) effects; and strong correlation effects, usually associated with the electron localization of unfilled d/f shells of transition metals.
In previous studies, we have developed a quasi-four-component (Q4C) relativistic energy band theory for extended systems (with hundreds of atoms in a unit cell). This approach enables accurate fully-relativistic all-electron calculations for electronic structures with much cheaper computational costs. To further address relativistic effects and strong correlations synergistically, our group is currently working on developing fully-relativistic DFT+U methods and fully-relativistic hybrid functionals, which are expected to facilitate more accurate first-principles calculations for heavy-element-containing systems.''',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Image.asset(
                'imgs/research1.png',
                height: 500,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  """2. Large-Scale DFT Code Development:""",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '''We are active developers of the FHI-aims electronic structure code package, which is an all-electron full-potential DFT code designed for large-scale parallel calculations. The ongoing in-house developments will be implemented under the framework of FHI-aims, adopting numeric atomical orbitals (NAO) as basis sets.''',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  """3. Computational Chemistry and Materials Sciences:""",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
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
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.asset('imgs/research2.png'),
                        Text('Organic-Inorganic Hybrid Perovskites'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.asset('imgs/research3.png'),
                        Text('Electric-Driven Molecular Machines'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.asset('imgs/research4.png'),
                        Text('Metallofullerenes'),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  """4. Machine Learning (ML) and Quantum Computations for Electronic Structures:""",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
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
              SizedBox(
                height: 500,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Text("京ICP备2023032577号"),
                  onTap: () =>
                      launchUrl(Uri.parse('https://beian.miit.gov.cn')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Contact',
                style: TextStyle(
                  color: Colors.blue[300],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text(
                '''Rundong Zhao, Principal Investigator
Associate Professor of Physics
Office: C734, Shahe Campus, Beihang University, Changping District, Beijing
E-mail rdzhao <at> buaa.edu.cn''',
                style: TextStyle(
                  // color: Colors.blue[300],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Openings',
                style: TextStyle(
                  color: Colors.blue[300],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text(
                '''We typically recruit 1-2 undergraduate researchers, 1-2 Mphil students (with intent to pursue PhD), and 1-2 PhD students per year. Undergraduate and prospective Mphil/PhD students are welcome to reach out for a discussion.
Please note that there are no openings for CSC international students at the Master’s degree level. Therefore, all inquiries will not receive a response—apologies!
For postdoc or visiting scholar positions, please contact the PI for more details.''',
                style: TextStyle(
                  // color: Colors.blue[300],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 500,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Text("京ICP备2023032577号"),
              onTap: () => launchUrl(Uri.parse('https://beian.miit.gov.cn')),
            ),
          ),
        ],
      )),
    );
  }
}

class MiscellaneousPage extends StatelessWidget {
  const MiscellaneousPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('imgs/msl1.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('imgs/msl2.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('imgs/msl3.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('imgs/msl4.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('imgs/msl5.png'),
            ),
            SizedBox(
              height: 500,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Text("京ICP备2023032577号"),
                onTap: () => launchUrl(Uri.parse('https://beian.miit.gov.cn')),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class ComingUp extends StatelessWidget {
  const ComingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Coming up soon!!!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                SizedBox(
                  height: 500,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Text("京ICP备2023032577号"),
                    onTap: () =>
                        launchUrl(Uri.parse('https://beian.miit.gov.cn')),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
