import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VideoFeed extends StatefulWidget {
  VideoFeed({Key key}) : super(key: key);

  _VideoFeedState createState() => _VideoFeedState();
}

class _VideoFeedState extends State<VideoFeed> {
  List<Map> data = [
    {
      'url': 'https://www.youtube.com/watch?v=JwA6XKmTkWQ',
      'thumbnail': "https://preview.redd.it/1spsf7jvbsn11.png?width=1024&s=6be6c5334438473ecb960ae4ccf7f83766e59800",
      'title': 'Why I left T-Series',
      'view': '19M',
      'creator': 'PewDiePie',
      'profile_url':
          'https://ichef.bbci.co.uk/news/660/cpsprodpb/BC3A/production/_92868184_gettyimages-494848232.jpg',
    },
    {
      'url': 'https://www.youtube.com/watch?v=sPW7nDBqt8w',
      'thumbnail': 'https://i.ytimg.com/vi/sPW7nDBqt8w/maxresdefault.jpg',
      'title': 'Introduction to flutter',
      'view': '3.2M',
      'creator': 'Flutter',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s88-mo-c-c0xffffffff-rj-k-no',
    },
    {
      'url': 'https://www.youtube.com/watch?v=kffacxfA7G4',
      'thumbnail': 'https://i.ytimg.com/vi/kffacxfA7G4/maxresdefault.jpg',
      'title': 'Baby Baby Official- JUSTIN BIEBER',
      'view': '2.1B',
      'creator': 'Justin Bieber',
      'profile_url':
          'https://cdn3-www.musicfeeds.com.au/assets/uploads/justin-bieber-2016-press-pic-supplied-671x377.jpg',
    },
    {
      'url': 'https://www.youtube.com/watch?v=_aCUGzvf7qw',
      'thumbnail': 'https://i.ytimg.com/vi/DqVPbEcWtA0/maxresdefault.jpg',
      'title': 'How Apple became a trillion dollar company',
      'view': '64K',
      'creator': 'Apple Explained',
      'profile_url':
          'https://i.pinimg.com/736x/33/bb/2a/33bb2aaeba7be212b2991fc60548905d--cold-fusion-rossi.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Column(
            children: <Widget>[
              AspectRatio(
                child: Image(
                  image: NetworkImage(data[index]['thumbnail']),
                  centerSlice: Rect.largest,
                ),
                aspectRatio: 16 / 9,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index]['profile_url']),
                ),
                title: Text(
                  data[index]['title'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(data[index]['creator']+"  "+data[index]['view'],
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        );
      },
    );
  }
}
