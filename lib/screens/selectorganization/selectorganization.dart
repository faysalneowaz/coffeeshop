import 'package:coffeshop/constent/colors.dart';
import 'package:coffeshop/widget/logo.dart';
import 'package:coffeshop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SelectOrganization extends StatefulWidget {
  const SelectOrganization({Key? key}) : super(key: key);

  @override
  State<SelectOrganization> createState() => _SelectOrganizationState();
}

class _SelectOrganizationState extends State<SelectOrganization> {
  String? valueChooseCity;
  String? valueChooseOrg;
  List listItemCity = [
    "Dhaka",
    "Rajshahi",
    "Khulna",
    "Bandarban",
    "Comilla",
    "Barishal"
  ];

  List listItemOrganization = [
    "Dhaka",
    "Rajshahi",
    "Khulna",
    "Bandarban",
    "Comilla",
    "Barishal"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo container
            Center(
              child: Logo(logo_url: "assets/logo.PNG"),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: WHITE_COLOR,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Select Your Organization",
                    style: TextStyle(
                        fontSize: 24,
                        color: BOLD_TEXT_Color,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text("City",
                      style: TextStyle(
                        fontSize: 18,
                        color: BOLD_TEXT_Color,
                      )),
                  Container(
                    child: DropdownButton<String>(
                        isExpanded: true,
                        hint: Text('Select Your City'),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 40.0,
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        value: valueChooseCity,
                        onChanged: (newValue) {
                          setState(() {
                            valueChooseCity = newValue!;
                          });
                        },
                        items: listItemCity
                            .map<DropdownMenuItem<String>>((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList()),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text("Organization",
                      style: TextStyle(
                        fontSize: 18,
                        color: BOLD_TEXT_Color,
                      )),
                  DropdownButton<String>(
                      isExpanded: true,
                      hint: const Text('Select Your Organization'),
                      // dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 40.0,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                      value: valueChooseOrg,
                      onChanged: (newValue) {
                        setState(() {
                          valueChooseOrg = newValue!;
                        });
                      },
                      items: listItemOrganization
                          .map<DropdownMenuItem<String>>((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList()),
                  SaveCancel(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SaveCancel extends StatelessWidget {
  const SaveCancel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => HomeScreen())));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 40,
              decoration: BoxDecoration(
                  color: BUTTON_BACKSAVVE,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                  child: Text(
                "Save",
                style: TextStyle(color: WHITE_COLOR),
              )),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 40,
              decoration: BoxDecoration(
                  color: BUTTON_BACKSAVVE,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                  child: Text(
                "Cancel",
                style: TextStyle(color: WHITE_COLOR),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
