import 'package:Susu_Messenger/models/chatroom_list.dart';
import 'package:Susu_Messenger/models/conversation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User_DatabaseService {
  //
  final String uid;

  User_DatabaseService({this.uid});

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  // collection reference
  final CollectionReference chatroomCollection =
      FirebaseFirestore.instance.collection('chatrooms');

  Future createUserData({
    String email,
    String name,
    String gender,
    DateTime birthday,
    String university,
    String uid,
    String signInMethod,
  }) async {
    return await userCollection.doc(uid).set({
      'uid': uid,
      'name': name,
      'email': email,
      'gender': gender,
      'birthday': birthday,
      'university': university,
      'signInMethod': signInMethod,
      'chatrooms': [],
      'friends': []
    });
  }

  addConversationMessages(String chatRoomID, Map<String, dynamic> messageMap) {
    chatroomCollection
        .doc(chatRoomID)
        .collection("chats")
        .add(messageMap)
        .catchError((e) {
      print(e.toString());
    });
  }

  // all conversation
  List<Conversation> _messageList(QuerySnapshot snapshot) {
    print("Inside _messageList");

    return snapshot.docs.map((doc) {
      print("Inside snapshot");
      final dataInfo = doc.data();
      // print(dataInfo['date']);

      return Conversation(
        date: dataInfo['date'].toDate() ?? null,
        senderEmail: dataInfo['senderEmail'] ?? null,
        senderID: dataInfo['senderID'] ?? null,
        message: dataInfo['message'] ?? null,
      );
    }).toList();
  }

  //Get all conversation
  Stream<List<Conversation>> get chatroomMesssages {
    //print('in allUserData');
    print("Inside getChatroomMesssages");
    return chatroomCollection
        .doc('devil@yahoo.com_punreach@yahoo.com')
        .collection("chats")
        .orderBy("date", descending: true)
        .snapshots()
        .map(_messageList);
  }

  // all conversation
  List<ChatroomList> _userList(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      final dataInfo = doc.data();
      return ChatroomList(
        id: dataInfo["id"] ?? null,
        lastConversationTime: dataInfo["lastConversationTime"].toDate() ?? null,
        users: dataInfo["users"] ?? null,
        userID: dataInfo["users_id"] ?? null,
      );
    }).toList();
  }

  //Get all conversation
  Stream<List<ChatroomList>> allUserData(String chatRoomID) {
    //print('in allUserData');
    return chatroomCollection
        .doc(chatRoomID)
        .collection("chats")
        .snapshots()
        .map(_userList);
  }
}
