mixin Camera
{
     int? pic;
     void displayCamera()
     {
        print("Camera Available!!..");
     }
     
}

mixin MusicPlayer
{
     String? favPlaylist;
     void displayMusic()
     {
        print("Music Player Available!!...");
     }
   
}

class SmartPhone with Camera,MusicPlayer
{
    String? mobileName;
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
    s.displayMusic();

}