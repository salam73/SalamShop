import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class SalamMainController extends GetxController {
  var myText = 'not active'.obs;
  var active = false.obs;
  var mText='m not active';
  var bagdesCount=0;



  getStream(){
    DatabaseReference starCountRef =
    FirebaseDatabase.instance.ref('users/12');
    starCountRef.onValue.listen((DatabaseEvent event) {
      if(event.snapshot.exists) {
         final data = event.snapshot.value;
      }
    });
  }
  getBadge(){
    bagdesCount= bagdesCount+1;
    update();

  }

  getData()async{
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('users/12').get();
    if (snapshot.exists) {
      print(snapshot.value);
    } else {
      print('No data available.');
    }
  }

  changeText() {
    active.value = !active.value;

    if (active.value) {
      myText.value = 'active';
      mText = 'm active';
    } else {
      myText.value = 'not active';
      mText = 'm not active';
    }
    // update();
  }
}