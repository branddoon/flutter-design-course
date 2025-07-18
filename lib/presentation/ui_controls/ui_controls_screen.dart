import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controls'),
      ),
      body: UiControlsView(),
    );
  }
}
class UiControlsView extends StatefulWidget {
  const UiControlsView({super.key});

  @override
  State<UiControlsView> createState() => _UiControlsViewState();
}

enum Lodging {
  hotel,
  house,
  department,
  loft
}

class _UiControlsViewState extends State<UiControlsView> {

  bool isPartner = true;
  Lodging selectedLodging = Lodging.hotel;
  bool wantsBreakfast = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: Text('Is partner?'),
          subtitle: Text('Just people that is part of our team'), 
          value: isPartner,
          onChanged: (value) => setState((){isPartner = !isPartner;}),
        ),
        ExpansionTile(
          title: Text('Choose how you will stay?'),
          children: [
            RadioListTile(title: Text('Hotel'), value: Lodging.hotel, groupValue: selectedLodging, onChanged: (value)=> setState(() {selectedLodging = Lodging.hotel;})),
            RadioListTile(title: Text('Department'), value: Lodging.department, groupValue: selectedLodging, onChanged: (value)=> setState(() {selectedLodging = Lodging.department;})),
            RadioListTile(title: Text('House'), value: Lodging.house, groupValue: selectedLodging, onChanged: (value)=> setState(() {selectedLodging = Lodging.house;})),
            RadioListTile(title: Text('Loft'), value: Lodging.loft, groupValue: selectedLodging, onChanged: (value)=> setState(() {selectedLodging = Lodging.loft;})),
          ],
        ),
        ExpansionTile(
          title: Text('Breakfast and dinner?'),
          children: [
            CheckboxListTile(title: Text('Breakfast'), value: wantsBreakfast, onChanged: (value) => setState(() {wantsBreakfast = !wantsBreakfast;})),
            CheckboxListTile(title: Text('Dinner') ,value: wantsDinner, onChanged: (value) => setState(() {wantsDinner = !wantsDinner;}))            
          ],
        ),
      ],
    );
  }
}