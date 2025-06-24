
//When you use implements, you must override all methods,properties
// including concrete ones — otherwise Dart will throw a compile-time error.

abstract class Camera
{
     int? pic;  //again we declare
     void displayQuality();
     void displayCamera() //we can override this method also
     {
        print("Camera Available!!..");
     }
     
}

abstract class MusicPlayer
{
     void displaySong();
     void displayMusic()
     {
        print("Music Player Available!!...");
     }
   
}

class SmartPhone implements Camera,MusicPlayer
{
    int? pic;
    String? favPlaylist;
    String? mobileName;

    @override
    void displayQuality()
    {
        print("Camera Quality is average");
    }

    @override
    void displaySong()
    {
        print("Song is Adi Penne from Stephen");
    }

    @override
    void displayCamera() //we can override this method also
    {
        print("Camera Available!!..");
    }

    @override
    void displayMusic()
    {
        print("Music Player Available!!...");
    }
    void display()
    {
       print("Mobile Name: $mobileName");
       print("Pictures : $pic");
       print("Fav PlayList: $favPlaylist");  
    }
    
}

void main()
{
    SmartPhone s=SmartPhone();
    s.pic=1000;
    s.favPlaylist="Melody";
    s.mobileName="Redmi";
    s.display();
    s.displayCamera();
    s.displayQuality();
    s.displayMusic();
    s.displaySong();
}