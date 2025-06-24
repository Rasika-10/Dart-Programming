class Camera
{
     int? pic;
     void displayCamera()
     {
        print("Camera Available!!..");
     }
     
}

class MusicPlayer
{
     String? favPlaylist;
     void displayMusic()
     {
        print("Music Player Available!!...");
     }
   
}

class SmartPhone 
{
    Camera c=Camera();
    MusicPlayer m=MusicPlayer();

    String? mobileName;
    void display()
    {
       c.pic=1000;
       m.favPlaylist="Melody";
       print("Mobile Name: $mobileName");
       print("Pictures : ${c.pic}");
       print("Fav PlayList: ${m.favPlaylist}");  
       c.displayCamera();
       m.displayMusic();

    }
    
}

void main()
{
    SmartPhone s=SmartPhone();
    s.mobileName="Redmi";
    s.display();
    

}