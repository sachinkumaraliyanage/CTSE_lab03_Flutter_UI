import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//sachin kumara Liyanage
//IT17152938

class ReviewsPage extends StatelessWidget {
  int k=dislist.length;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Reviews",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.centerLeft,
              child: new Text("Reviews",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,),),
            ),
            new Container(height: 10,),
            new Row(
              children: <Widget>[
                new Icon(Icons.star,color: Colors.amber,),
                new Icon(Icons.star,color: Colors.amber,),
                new Icon(Icons.star,color: Colors.amber,),
                new Icon(Icons.star_half,color: Colors.amber,),
                new Icon(Icons.star_border,color: Colors.black12,),
                new Text('  $k Reviews',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold),),
              ],
            ),
            new Divider(
              height: 30,
              thickness: 2.0,
            ),
            new Expanded(
                child:BodyLayout(),
            )
          ],
        ),
      );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

final List<String> dislist=<String>[
  "I personally have no issue with the WhatsApp system but it is quite irritating that you can only remove a person from a group chat, it would be much helpful if you could make it so that you can mute them from sending messages, please make it optional for the admin to restrict a person from sending either messages, stickers, images, audio notes, etc. I appreciate that you took the time to read this.",
  "One of my best chatting apps. But there is something wrong happening with me the last 4 days : when i receive a message i can't see it when i open the chat ! It disappears ! And suddenly after that the message reappear especially if i restart my phone. I did restore the factory settings and redownload the app but the problem persists. I hope you can help me.",
  "well it's good actually. better than others messaging apps because it's easier to use and control. but it's too plain because we couldn't change the theme into dark mode or maybe for the next update, developers can give us more freedom to choose and apply the theme as we want. especially me who loves dark mode/theme. because my phone already set up with fully dark mode and for every app except WhatsApp only. Thank you!",
  "It's great, buttttt I have a suggestion. It would be so great if you know how on emojis, it has all the different sections: animals, people/faces, food, etc? It would be cool if you put in an LGBTQ+ section with the flags, rainbows and the same gender couple emojis on it. You could also include the different gender signs: Male, female, etc. I would love it and so would soooo many people,",
  "This app is very useful in many ways. It gives you the accessibility to call, FaceTime, or text your family , loved ones, and whoever you have in your contacts. This app is also free (with free call and texts) and is one of my favourite things to use when I need to call and text. 5 star quality right here.",
  "Great app. With great condition s. 1.Video call and voice call. 2.have nice privacy 3. Privat chat security 4.safe app with nice speed for Communication , voice call , video call , chatting, its depend your Internet connection speed , and your phone model, and where are you in. .. Thank you very much Whats App Team . All the best... From:kiarash.G Since:2020/2/24 GMT Time: 8:56= 8:56 AM",
  "The app is very useful. I have two recommendations. First, like facebook user should be allowed to invite ppl to whatsapp. Currently anybody who is in the contact list becomes a whatsapp contact too. Secondly, can the call icon , both voice and video be a part of the drop-down? There are many times that we erroneously call as the icon are on the page and very easily accessible.",
  "All the experience I got using Whatsapp is Excellent, it's its features are Useful and Communication made easy! Especially Dark theme feature is a plus point of the app Overall performance is Decent. If the two step verification code is asked everytime when the app is launched, it would be better to those users where finger prints are not available in their devises It would be Great Privacy Feature. Consider it as a request. Thank you.",
  "This app is good. Can I suggest something? Can WhatsApp do something so that we can group people to form a contact group (not WhatsApp group) so that when they message me, I can have one notification sound that differs with another group. Other function is that so I can mute that one particular group for certain hours/days (especially for off working hours). Thanks.",
  "I was going to rate it 5 star . But what I noticed is that it reduces the quality of the photos and videos . When we put it on our status the quality of the video and the images reduce . The quality of the video and images reduces even when we share it to our Contact friends . So I will request not reduce the quality of the videos and images in WhatsApp 🙏",
  "The app is useful in communicating with low data. I recommend if it could bring an update for which it could show the number of last seen looks, looked by a person on a specific person. For example, if I looked at the last seen of my friend for 5 times that friend should know that I looked at his/her last seen 5 times .",
];


Widget _myListView(BuildContext context) {
  List<Widget> data = <Widget>[
    new Entry('February 24, 2020', dislist[0], 'assets/img/a1.jpg'),
    new Entry('February 15, 2020', dislist[1], 'assets/img/a2.jpg'),
    new Entry('February 7, 2020', dislist[2], 'assets/img/a3.jpg'),
    new Entry('February 8, 2020', dislist[3], 'assets/img/a4.jpg'),
    new Entry('February 6, 2020', dislist[4], 'assets/img/a5.jpg'),
    new Entry('February 18, 2020', dislist[5], 'assets/img/a6.jpg'),
    new Entry('February 1, 2020', dislist[6], 'assets/img/a7.png'),
    new Entry('December 28, 2019', dislist[7], 'assets/img/a8.png'),
    new Entry('December 20, 2019', dislist[8], 'assets/img/a9.png'),
    new Entry('December 15, 2019', dislist[9], 'assets/img/a10.png'),
    new Entry('December 1, 2019', dislist[10], 'assets/img/a11.png'),
  ];

  return ListView.separated(
    itemCount: data.length,
    separatorBuilder: (BuildContext context, int index) => const Divider(
      thickness: 3.0,
      height: 30,
    ),
    itemBuilder: (context, index) {
      return Container(
        child: data[index],
      );
    },
  );
}

class Entry extends StatelessWidget {

  final String date;
  final String dis;
  final String img;

  Entry( this.date, this.dis, this.img);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 150,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

             new Container(
                width: 50.0,
                height: 50.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage(img),
                    ))),
          new Container(width: 20,),

          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Icon(Icons.star,color: Colors.amber,),
                    new Icon(Icons.star,color: Colors.amber,),
                    new Icon(Icons.star,color: Colors.amber,),
                    new Icon(Icons.star_half,color: Colors.amber,),
                    new Icon(Icons.star_border,color: Colors.black12,),
                    new Text('  $date',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold),),
                  ],
                ),
                new Expanded(
                  child: new Text(dis,style: TextStyle(color: Colors.black38),),
                ),
              ],
            ),
          ),
        ],
      ),
//      ],
    );
  }



}



