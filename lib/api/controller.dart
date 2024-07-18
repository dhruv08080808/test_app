import 'package:get/get.dart';
import 'package:test_app/api/user_api.dart';
import 'package:test_app/api/user_api2.dart';
import 'package:test_app/api/user_model.dart';

class controllerrr extends GetxController{
  var isloading=true.obs;
  var userlist=<Welcome>[].obs;
  getusersdata()async{
    try{
      isloading(true);
    var response= await Userapi().getdata();
userlist.addAll(response);
    }catch(e){
print('$e');
    }finally{
      isloading(false);
    }
    
  }

  // var isloaded=true.obs;
  // var liist=<Welcomee>[].obs;
  // getuserapii()async{
  //   try{ var responsse=await User_api2().getuserdata();
  //   liist.addAll(responsse);
  //   }catch{}
   
  // }
@override
  void onInit() {
getusersdata();
    super.onInit();
  }
}