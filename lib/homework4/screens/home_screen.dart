import 'package:flutter/material.dart';
import 'package:sala_it/homework4/constant.dart';
import 'package:sala_it/homework4/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _lstImagesMoviesTrending = [
    'https://static.wikia.nocookie.net/kpop/images/d/d0/N.Flying_Lovely_Runner_OST_Part.2_album_cover.png/revision/latest/scale-to-width/360?cb=20240409230314',
    'https://i.ebayimg.com/images/g/h1MAAOSwQs9lVWkv/s-l1200.webp',
    'https://m.media-amazon.com/images/M/MV5BOTgxN2VhNTktY2NhNC00ODIxLWFjMjUtNTUzYWZmNTcyYmE0XkEyXkFqcGdeQXVyNDI3NjU1NzQ@._V1_.jpg',
    'https://i.scdn.co/image/ab67616d0000b273253f5d418130c00bf7af7384',
    'https://asianwiki.com/images/d/d9/Start-Up-CP1.jpg'
  ];

  final _lstImageMovies = [
    'https://0.soompi.io/wp-content/uploads/2024/03/14171637/Kim-Hye-Yoon-Byun-Woo-Seok.jpeg',
    'https://ih1.redbubble.net/image.5344784621.9085/flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
    'https://media.themoviedb.org/t/p/w500/ecF1kGP2tlCpoWXVsaeYP3W6dZb.jpg',
    'https://i.mydramalist.com/x4vJO3_4f.jpg',
    'https://m.media-amazon.com/images/M/MV5BYWE3MDVkN2EtNjQ5MS00ZDQ4LTliNzYtMjc2YWMzMDEwMTA3XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BNWYzODM2NGEtOWUyZi00MmEyLWFmYmItZDI3NDYzMGI0NWI2XkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_.jpg',
  ];

  final _lstCategories = [
    'All',
    'Mystery',
    'Romance',
    'Comedy',
    'Romance',
    'Thriller'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          // Trending TV Show Section
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: _lstImagesMoviesTrending.length,
                  itemBuilder: (context, index) {
                    var img = _lstImagesMoviesTrending[index];
                    return Image.network(
                      img,
                      fit: BoxFit.cover,
                    );
                  },
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _lstImagesMoviesTrending
                          .map(
                            (e) => Container(
                              margin: const EdgeInsets.only(right: 20),
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                color: kButtonPrimaryColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Catagories section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView(
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Categories Buttons
                  Container(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _lstCategories.length,
                      itemBuilder: (context, index) {
                        if (selectedIndex != index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              width: 85,
                              margin: EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white.withOpacity(0.1)),
                              child: Text(
                                _lstCategories[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          );
                        }
                        return Container(
                          width: 85,
                          margin: EdgeInsets.only(right: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kButtonPrimaryColor,
                          ),
                          child: Text(
                            _lstCategories[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Most Popular
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Most Popular',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _lstImageMovies.length,
                      itemBuilder: (Context, index) {
                        final img = _lstImageMovies[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              // do something
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailScreen(imgUrl: img),
                                ),
                              );
                            },
                            child: Container(
                              width: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  img,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // Latest Release
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest Release',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _lstImageMovies.length,
                      itemBuilder: (Context, index) {
                        final img = _lstImageMovies[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                img,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff26233e),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download_outlined), label: 'Downloads'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile'),
        ],
      ),
    );
  }
}
