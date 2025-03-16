import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Playlist Header Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Playlist Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://scontent.fkhi20-1.fna.fbcdn.net/v/t1.6435-9/68705809_734730673648612_8002476236632752128_n.jpg?stp=dst-jpg_p526x296_tt6&_nc_cat=107&ccb=1-7&_nc_sid=0b6b33&_nc_ohc=fp7hvCy7jJUQ7kNvgFda-HZ&_nc_oc=Adi8bOo4kqIqcOdFL-Ies5dlomIP7yHx98BlGtcSb5V-QUkHwUp_rKuAesPy97_qou4&_nc_zt=23&_nc_ht=scontent.fkhi20-1.fna&_nc_gid=WipycCGakLNBMHFWjTyvyg&oh=00_AYEYkiud73E_srmX7hFDlDYfgf9Tqz1KY_vIjecMSGEntw&oe=67FE28C8",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                // Playlist Details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PLAYLIST - 6 SONGS",
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Auj",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Shuffle Play Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shuffle, color: Colors.black, ), 
                  SizedBox(width: 100), 
                  Text(
                    "Shuffle Play",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 16),

          // Songs List
          Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.drag_indicator, color: Colors.grey[600]),
                  title: Text(
                    songs[index]["title"]!,
                    style: GoogleFonts.roboto(fontSize: 16),
                  ),
                  subtitle: Text(
                    songs[index]["artist"]!,
                    style: GoogleFonts.roboto(color: Colors.grey[600]),
                  ),
                  trailing: Icon(Icons.more_vert, color: Colors.grey[600]),
                  onTap: () {
                  },
                );
              },
            ),
          ),

          _miniMusicPlayer(),

          _bottomNavigationBar(),
        ],
      ),
    );
  }

  // Mini Music Player
  Widget _miniMusicPlayer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.white,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://i.ytimg.com/vi/DgKrsVIbG9k/maxresdefault.jpg", 
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jhalleya",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Marjaan",
                style:
                    GoogleFonts.roboto(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.play_arrow_rounded, size: 32),
        ],
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline), label: "Contribute"),
        BottomNavigationBarItem(icon: Icon(Icons.mic), label: "Identify"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      ],
    );
  }
}

// Sample Song List
List<Map<String, String>> songs = [
  {"title": "Aansu - Auj", "artist": "Auj"},
  {"title": "Raat - Auj", "artist": "Auj"},
  {"title": "Angraiziyan & Laung Gawacha", "artist": "Auj"},
  {"title": "Keh Dena - Auj", "artist": "Auj"},
  {"title": "O Jaana", "artist": "Auj"},
];
