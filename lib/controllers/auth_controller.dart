import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notes/pages/authpage.dart';
import 'package:notes/pages/homepage.dart';

// Going to be used to check the auth state of the user before routing is done
class UserAuthCon extends GetxController {
  // controller methods will be called by the bindings which will in turn be called in the main method
  @override
  void onReady() {
    // this function runs 1 frame after inititialization
    initAuth();
    super.onReady();
  }

  late FirebaseAuth _auth;
  final _user = Rxn<User>();
  late Stream<User?> _authStateChanges;

  Future<void> initAuth() async {
    await Future.delayed(const Duration(seconds: 2));
    // check auth
    _auth = FirebaseAuth.instance;
    _authStateChanges = _auth.authStateChanges();
    _authStateChanges.listen((User? user) {
      _user.value = user;
    });

    // to check if user is logged in
    if (_auth.currentUser != null) {
      // if user is logged in... navigate to homescreen
      Get.offAllNamed(MyHomePage.routeName);
    } else {
      // navigate to signIn page
      Get.offAllNamed(AuthPage.routeName);
    }
  }

  Future<void> SignInWithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      GoogleSignInAccount? account = await _googleSignIn.signIn();
      if (account != null) {
        final _googleAuth = await account.authentication;
        final _credential = GoogleAuthProvider.credential(
            idToken: _googleAuth.idToken, accessToken: _googleAuth.accessToken);

        await _auth.signInWithCredential(_credential);
        // add user to the firebase
        // await saveUser(account);
      }
    } on Exception catch (error) {
      // when auth fails
    }
  }


  // Future<void> saveUser(GoogleSignInAccount account) async {
  //   try {await userRef.doc(account.email).set({
  //     "email": account.email,
  //     "name": account.displayName,
  //     "profilePhoto": account.photoUrl
  //   });
  // }catch(e){

  // }
}
