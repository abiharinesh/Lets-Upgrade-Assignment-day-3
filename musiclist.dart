import 'package:flutter/material.dart';
class musiclist extends StatefulWidget {
  const musiclist({super.key});

  @override
  State<musiclist> createState() => _musiclistState();
}

class _musiclistState extends State<musiclist> {

List songs=[
  {
    "Name":"we don't talk about bruno",
    "thumbnail":"https://i.scdn.co/image/ab67616d00001e02726aa2479a45abb603d9b408",
    "path":"songs/001. Carolina Gaitán - La Gaita - We Don't Talk About Bruno.mp3",
    "artist":"carolina gaitan",
    "genre":"sad"
  },
  {
    "Name":"fireboy",
    "thumbnail":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReof3QpGlmb9_BgmXSMXjTfZY-Y1h-SxyaiA&usqp=CAU",
    "path":"songs/002. Fireboy DML - Peru.mp3",
    "artist":"peru",
    "genre":"sad"
  },
  {
    "Name":"surface",
    "thumbnail":"https://m.media-amazon.com/images/M/MV5BODAzNmY0M2EtOTE3MS00Y2ZmLTljNGUtMjJkZTAxZmE1MWRiXkEyXkFqcGdeQXVyMzM0NTc2MTE@._V1_.jpg",
    "path":"songs/003. Jessica Darrow - Surface Pressure.mp3",
    "artist":"jessica",
    "genre":"sad"
  },
  {
    "Name":"abcdefu",
    "thumbnail":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzjLGTUzgguuQwCu318IiQYxvv1u_d1LvUWQ&usqp=CAU",
    "path":"songs/004. GAYLE - abcdefu.mp3",
    "artist":"gayle",
    "genre":"sad"
  },
  {
    "Name":"where are you now",
    "thumbnail":"https://i1.sndcdn.com/artworks-Ic6bvucerIp9vH5z-mmQhgQ-t500x500.jpg",
    "path":"songs/005. Lost Frequencies - Where Are You Now.mp3",
    "artist":"lost frequencies",
    "genre":"sad"
  },
  {
    "Name":"war",
    "thumbnail":"https://cdns-images.dzcdn.net/images/cover/d88210792db188d66e4cba4278ab51b2/264x264.jpg",
    "path":"songs/006. ArrDee - War.mp3",
    "artist":"ArrDee",
    "genre":"sad"
  },
  {
    "Name":"seventeen going under",
    "thumbnail":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC_68wcswi1_28R28C-3__XGK5vht0JF7mbA&usqp=CAU",
    "path":"songs/007. Sam Fender - Seventeen Going Under.mp3",
    "artist":"sam fender",
    "genre":"sad"
  },
  {
    "Name":"make me feel good",
    "thumbnail":"https://i1.sndcdn.com/artworks-ZHgRcfyllDPNKyTZ-yzzizA-t500x500.jpg",
    "path":"songs/008. Belters Only - Make Me Feel Good.mp3",
    "artist":"Belters",
    "genre":"sad"
  },
  {
    "Name":"the famliy madrigal",
    "thumbnail":"https://featuredanimation.com/wp-content/uploads/2022/07/The-family-Madrigal-quote-thats-life-in-the-family-Madrigal-.jpg",
    "path":"songs/009. Stephanie Beatriz - The Family Madrigal.mp3",
    "artist":"Stephanie",
    "genre":"sad"
  },
  {
    "Name":"overseas",
    "thumbnail":"https://i.scdn.co/image/ab67616d0000b27352d196df1bf2cf160d5e137d",
    "path":"songs/010. D-Block Europe - Overseas.mp3",
    "artist":"D-Block europe",
    "genre":"sad"
  },
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music List"),
        
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Image.network(songs[index]["thumbnail"],width: 60,),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(songs[index]["name"],
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),),
                    Text(songs[index]["artist"],textAlign: TextAlign.left,)
                  ],
                ),
                CircleAvatar(
                  child: IconButton(onPressed: (){
                    Navigator.pushNamed(context, "/player",arguments: {'index':index});
                  }, icon: Icon(Icons.play_arrow)),
                )
              ]),
            );
          }
          ),
      ),
     
    );
  }
}