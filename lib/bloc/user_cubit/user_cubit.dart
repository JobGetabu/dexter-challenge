import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fimber/fimber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cubit.freezed.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final FirebaseFirestore firebaseFirestore;

  UserCubit(this.firebaseFirestore) : super(UserState.initial());

  //NOTE: we assume all names are unique for this test
  void registerNewUser(String name, String shift) async {
   try{
     emit(UserState.loading());
     //check if theres an existing user with this name
     var fetchUserQuery = await firebaseFirestore
         .collection('users')
         .where('name', isEqualTo: name)
         .limit(1)
         .get();

     bool isNewUser = fetchUserQuery.docs.isEmpty;

     if (isNewUser) {
       var userId = firebaseFirestore.collection('users').doc().id;

       var newUser = {
         'userId': userId,
         'name': name,
         'currentShift': shift,
         'loginAt': FieldValue.serverTimestamp(),
         'createdAt': FieldValue.serverTimestamp()
       };

       await firebaseFirestore.collection('users').doc(userId).set(newUser);

       emit(UserState.success(newUser));
     } else {
       //update existing user
       var user = fetchUserQuery.docs.first.data();
       var userId = user['userId'];

       var updateUser = {
         'currentShift': shift,
         'loginAt': FieldValue.serverTimestamp()
       };

       await firebaseFirestore
           .collection('users')
           .doc(userId)
           .set(updateUser, SetOptions(merge: true));

       user['currentShift'] = shift;
       emit(UserState.success(user));
     }
   }catch(e){
     Fimber.e('$e');
     emit(UserState.error('${e.toString()}'));
   }
  }
}
