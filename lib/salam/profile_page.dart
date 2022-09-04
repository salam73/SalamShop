import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileFourPage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile4.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.commentDots,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black54,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Directionality(
        
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildHeader(),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Text(
                    "نسخير ما أملكه من إحساس قوي بالمسؤولية , التفاني في العمل والاستفادة من المهارات والمؤهلات التي حصلت عليها"),
              ),
              _buildTitle("المهارات"),
              SizedBox(height: 10.0),
              _buildSkillRow("Wordpress", 0.5),
              SizedBox(height: 5.0),
              _buildSkillRow("Laravel", 0.6),
              SizedBox(height: 5.0),
              _buildSkillRow("React JS", 0.65),
              SizedBox(height: 5.0),
              _buildSkillRow("Flutter", 0.5),
              SizedBox(height: 30.0),
              _buildTitle("الخبرات"),
              _buildExperienceRow(
                  company: "Navigation ASP",
                  position: "MS Access",
                  duration: "٢٠٠٦ - ٢٠٠٨"),
              _buildExperienceRow(
                  company: "Capsize",
                  position: "تنظيم ورفع ملفات الفيديو الخاصة بالزبائن على مواقع الانترنت",
                  duration: "٢٠٠٩ - ٢٠١٠"),
              _buildExperienceRow(
                  company: "Ritter Plus",
                  position: "إعداد صفحة خاصة لبيع المنتجات عن طريق الانترنت",
                  duration: "٢٠١٥ - ٢٠١٨"),
              _buildExperienceRow(
                  company: "Popup Bits Pvt. Ltd.",
                  position: "Flutter Developer",
                  duration: "2018 - Current"),
              SizedBox(height: 20.0),
              _buildTitle("Education"),
              SizedBox(height: 5.0),
              _buildExperienceRow(
                  company: "Tribhuvan University, Nepal",
                  position: "B.Sc. Computer Science and Information Technology",
                  duration: "2011 - 2015"),
              _buildExperienceRow(
                  company: "Cambridge University, UK",
                  position: "A Level",
                  duration: "2008 - 2010"),
              _buildExperienceRow(
                  company: "Nepal Board", position: "SLC", duration: "2008"),
              SizedBox(height: 20.0),
              _buildTitle("Contact"),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 30.0),
                  Icon(
                    Icons.mail,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "dlohani48@gmail.com",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 30.0),
                  Icon(
                    Icons.phone,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "+977-9818523107",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              _buildSocialsRow(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.facebookF),
          onPressed: () {
            _launchURL("https://facebook.com/lohanidamodar");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: () {
            _launchURL("https://github.com/lohanidamodar");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.red,
          icon: Icon(FontAwesomeIcons.youtube),
          onPressed: () {
            _launchURL("https://youtube.com/c/reactbits");
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  _launchURL(String url) async {
    Uri f=Uri(host: url);
    if (await canLaunchUrl(f)) {
      await canLaunchUrl(f);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow(
      {required String company, String? position, String? duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position ($duration)", style: TextStyle(fontSize: 18),),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.left,
            )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
            backgroundColor: Colors.black12,
          ),
        ),
        SizedBox(width: 46.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        Container(
          width: 120.0,
          height: 120.0,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 55.0,
              backgroundImage:  AssetImage('assets/salamprofile.jpeg'),

            ),
          ),
        ),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "ٍسلام الكشميري",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("مطور تطبيقات موبايل"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.map,
                  size: 12.0,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Iraq, Karbala",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
