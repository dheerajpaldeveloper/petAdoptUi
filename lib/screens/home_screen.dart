import 'package:flutter/material.dart';
import 'package:petAdoptUi/models/pet_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildPetCategory(bool isSelected, String category) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 80,
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).primaryColor : Color(0xFFF8F2F7),
        borderRadius: BorderRadius.circular(20),
        border: isSelected
            ? Border.all(
                width: 8,
                color: Color(0xFFFED8D3),
              )
            : null,
      ),
      child: Center(
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 40, top: 40),
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage(owner.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              style: TextStyle(fontSize: 22),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 30.0),
                  child: Icon(
                    Icons.add_location,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                labelText: 'Location',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.only(bottom: 20),
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: IconButton(
                    onPressed: () => print('hello'),
                    icon: Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                ),
                _buildPetCategory(false, 'cats'),
                _buildPetCategory(true, 'dogs'),
                _buildPetCategory(false, 'birds'),
                _buildPetCategory(false, 'others'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
