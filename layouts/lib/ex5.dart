import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 45, 95),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.local_grocery_store,
              size: 30,
            ),
          ),
        ],
        title: const Text('OpenSea Market'),
        backgroundColor: const Color.fromARGB(255, 57, 75, 121),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          )
        ],
        selectedItemColor: const Color.fromARGB(255, 57, 75, 121),
      ),
      body: const CardNFT(),
    );
  }
}

class CardNFT extends StatelessWidget {
  const CardNFT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cor1 = Color.fromARGB(255, 57, 75, 121);
    const cor2 = Color.fromARGB(255, 0, 234, 255);
    const cor3 = Color.fromARGB(255, 125, 156, 236);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 100),
      color: cor1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset('assets/nftimage.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Equilibrium #3429',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: cor2,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: Text(
                    'Our collection Equilibrium promotes calm and balance.',
                    style: TextStyle(fontWeight: FontWeight.bold, color: cor3),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '0.041 ETH',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: cor2),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.access_time_filled,
                          color: cor3,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'restam 3 dias',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: cor3),
                        )
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Container(
                      width: 300,
                      height: 1,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Row(
                    children: [
                  
                      const CircleAvatar( 
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/113645063?s=400&u=901acc2c507c17f8bba725bb6231216362d7a9ec&v=4')
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RichText(
                          text: const TextSpan(
                            text: 'Criado por ',
                            style: TextStyle(color: cor3),
                            children: [
                              TextSpan(
                                text: 'Lucas Monteiro',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
