import 'package:flutter/material.dart';
import 'package:flutter_design/data/data_items_menu.dart';
import 'package:flutter_design/model/ItemMenu/item_menu.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter desing'),
        backgroundColor: colors.primary,
      ),
      body: const Center(
        child: HomeView()
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: dataItemsMenu.length,
      itemBuilder: (context, index){
        return CustomListTile(itemMenu: dataItemsMenu[index]);
    });  
    }
}

class CustomListTile extends StatelessWidget {

  final ItemMenu itemMenu;

  const CustomListTile({ super.key, required this.itemMenu});

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;
    
    return ListTile(
      title: Text(itemMenu.title),
      subtitle: Text(itemMenu.subtitle),
      leading: Icon(itemMenu.icon, color: colors.primary, ),
      onTap: (){
        context.push(itemMenu.url);        
      },
      trailing: Icon(Icons.arrow_forward_ios_outlined),
    );
  }
}