import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/config/config.dart';
import 'package:whatsapp_ui_clone/models/ChatListItem.dart';

class CallsTab extends StatelessWidget {


  final List<ChatListItem> chatListItems = [
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Tremaine",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Cletus",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Cecil",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Sigrid",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/2092474/pexels-photo-2092474.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Hilton",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Newton",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/2613260/pexels-photo-2613260.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Novella",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/2100035/pexels-photo-2100035.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Charley",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/2625122/pexels-photo-2625122.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Sigmund",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Connie",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Loma",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/999515/pexels-photo-999515.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Clarabelle",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/2744193/pexels-photo-2744193.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Darrell",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/2098707/pexels-photo-2098707.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Miles",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
    ChatListItem(
      profileURL: "https://images.pexels.com/photos/735552/pexels-photo-735552.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      personName: "Clint",
      date: "9:10 am",
      lastMessage: "beatae quasi sed" 
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chatListItems.length,
      separatorBuilder: (ctx, i) {
        return Divider();
      },
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text(chatListItems[i].personName),
          subtitle: Text(chatListItems[i].lastMessage),
          trailing: IconButton(
            onPressed: (){},
            icon: Icon(
              i%6!=0?Icons.call:Icons.videocam,
              color: primaryColor,
            ),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
              chatListItems[i].profileURL
            ),
          ),
          onTap: () {},
        );
      },
    );
  }
}