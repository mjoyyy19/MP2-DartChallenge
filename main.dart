import 'dart:collection';

// Song Class
class Song {
  // variables for song title, artist, and duration
  String title;
  String artist;
  Duration duration;

  // initialize song objects/constructor
  Song(this.title, this.artist, this.duration);

  @override
  String toString() {
    return "[$title - $artist (${duration.inMinutes}m ${duration.inSeconds % 60}s)]";
  }
}

// Playlist Class
class Playlist {
  String playlistName; //Initialize variable playlistName

  Playlist(this.playlistName); //Constructor

  // Declare a list to store songs in the playlist
  List<Song> songs = [];

  // Add song to playlist method
  void addSongInfo(Song song) {
    songs.add(song);
  }

  // Display all songs in the playlist with details method
  void displayPlaylist() {
    print("Playlist: ${playlistName}");
    for (Song song in songs) {
      print(song);
    }
  }
}

// MusicFestival Class
class MusicFestival {
  String stageName; //Initialize variable for stageName

  MusicFestival(this.stageName); //music festival constructor

  // Declare a list to store playlists (stages)
  List<Playlist> stages = [];

  // Method for adding stage
  void addStage(Playlist playlist) {
    stages.add(playlist);
  }

  //Method for displaying stages (playlists) with details of the song/s
  void displayList() {
    String name = this.stageName;
    for (Playlist stage in stages) {
      print("$name Stage sorted by artist");
      stage.displayPlaylist();
      print("");
    }
  }
}

// Main function to create a music festival
void main() {
  // Create a MusicFestival objects
  MusicFestival musicFestival1 = MusicFestival("Pop Music ");
  MusicFestival musicFestival2 = MusicFestival("PPop Music");
  MusicFestival musicFestival3 = MusicFestival("OPM Music");

  // Create song objects
  //pop songs
  Song song1 =
      Song("Espresso", "Sabrina Carpenter ", Duration(minutes: 3, seconds: 21));
  Song song2 =
      Song("Style", "Taylor Swift ", Duration(minutes: 4, seconds: 25));
  Song song3 =
      Song("Intro", "Ariana Grande ", Duration(minutes: 3, seconds: 24));
  Song song4 = Song("Please Please Please", "Sabrina Carpenter",
      Duration(minutes: 3, seconds: 23));
  Song song5 = Song("Halo", "Beyonce", Duration(minutes: 4, seconds: 00));
  //ppop songs
  Song song6 = Song("Lagi", "BINI", Duration(minutes: 3, seconds: 29));
  //pop song
  Song song7 = Song("Gento", "SB19", Duration(minutes: 4, seconds: 26));
  Song song8 = Song("Salamin", "BINI", Duration(minutes: 3, seconds: 36));
  //rap
  Song song9 = Song("Cherry on Top", "BINI", Duration(minutes: 3, seconds: 26));
  Song song10 = Song("Pantropiko", "BINI", Duration(minutes: 3, seconds: 26));
  //opm songs
  Song song11 = Song("Sining", "Dionela", Duration(minutes: 3, seconds: 37));
  Song song12 = Song("Hoodie", "Dionela", Duration(minutes: 3, seconds: 27));
  //rap
  Song song13 =
      Song("Gusto", "Zack Tabudlo", Duration(minutes: 3, seconds: 46));
  Song song14 = Song("Dilaw", "Maki", Duration(minutes: 3, seconds: 46));
  Song song15 =
      Song("Palagi", "TJ Monterde", Duration(minutes: 4, seconds: 37));
  // Create Playlist objects with stages
  Playlist popStage = Playlist("Pop Music");
  Playlist ppopStage = Playlist("PPop Music");
  Playlist opmStage = Playlist("OPM");

  // Add songs to playlists (stages)
  //for pop music
  popStage.addSongInfo(song1);
  popStage.addSongInfo(song2);
  popStage.addSongInfo(song3);
  popStage.addSongInfo(song4);
  popStage.addSongInfo(song5);
  //for ppop music
  ppopStage.addSongInfo(song6);
  ppopStage.addSongInfo(song7);
  ppopStage.addSongInfo(song8);
  ppopStage.addSongInfo(song9);
  ppopStage.addSongInfo(song10);
  //for opm music
  opmStage.addSongInfo(song11);
  opmStage.addSongInfo(song12);
  opmStage.addSongInfo(song13);
  opmStage.addSongInfo(song14);
  opmStage.addSongInfo(song15);

  // Add the playlists (stages) to the music festival
  musicFestival1.addStage(popStage); //pop
  musicFestival2.addStage(ppopStage); //ppop
  musicFestival3.addStage(opmStage); //opm

  print("Welcome to Mary Joy's Music Festival\n"); //header
  // Display the list
  musicFestival1.displayList();
  musicFestival2.displayList();
  musicFestival3.displayList();
}
