// Commit 4: Added a ListView to display a list of songs in the playlist.

import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> songs = [
    {'title': 'Song 1', 'artist': 'Artist 1'},
    {'title': 'Song 2', 'artist': 'Artist 2'},
    {'title': 'Song 3', 'artist': 'Artist 3'},
    // Add more songs here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playlist Name'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/playlist_image.jpg',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Playlist Name',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('10 songs'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.shuffle),
              label: const Text('Shuffle Play'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.drag_handle),
                    title: Text(songs[index]['title']!),
                    subtitle: Text(songs[index]['artist']!),
                    trailing: const Icon(Icons.more_vert),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
