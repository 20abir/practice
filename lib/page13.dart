import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class Page13 extends StatefulWidget {
  const Page13({Key? key}) : super(key: key);

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  List<dynamic> countries = [];

  List<dynamic> stateMasters = [];
  List<dynamic> state = [];

  String? countryId;
  String? stateId;

  @override
  void initState() {
    super.initState();

    this.countries.add({"id": 1, "name": "Bangladesh"});
    this.countries.add({"id": 2, "name": "India"});

    this.stateMasters = [
      {"ID": 1, "Name": "Dhaka", "ParentId": 1},
      {"ID": 2, "Name": "Narsingdi", "ParentId": 1},
      {"ID": 3, "Name": "Munshigonj", "ParentId": 1},
      {"ID": 4, "Name": "Bogura", "ParentId": 1},
      {"ID": 5, "Name": "Nouga", "ParentId": 1},
      {"ID": 6, "Name": "Coxs-Bazar", "ParentId": 1},
      {"ID": 1, "Name": "Asam", "ParentId": 2},
      {"ID": 2, "Name": "Dilhi", "ParentId": 2},
      {"ID": 3, "Name": "Kolkata", "ParentId": 2},
      {"ID": 4, "Name": "Pune", "ParentId": 2},
      {"ID": 5, "Name": "Punjab", "ParentId": 2},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          FormHelper.dropDownWidgetWithLabel(
            context,
            "Country",
            "Select Country",
            this.countryId,
            this.countries,
            (onChangedVal) {
              this.countryId = onChangedVal;
              print("Selected Country: $onChangedVal");

              this.state = this
                  .stateMasters
                  .where(
                    (stateItem) =>
                        stateItem["ParentId"].toString() ==
                        onChangedVal.toString(),
                  )
                  .toList();

              this.stateId = null;
            },
            (onValidateVal) {
              if (onValidateVal == null) {
                return 'Please Select Country';
              }

              return null;
            },
            borderColor: Theme.of(context).primaryColor,
            borderFocusColor: Theme.of(context).primaryColor,
            borderRadius: 10,
            // optionValue: "id",
            // optionLabel: "label",
          ),
          FormHelper.dropDownWidgetWithLabel(
            context,
            "State",
            "Selected State",
            this.stateId,
            this.state,
            (onChangedVal) {
              this.stateId = onChangedVal;
              print("Selected State: $onChangedVal");
            },
            (onValidate) {
              return null;
            },
            borderColor: Theme.of(context).primaryColor,
            borderFocusColor: Theme.of(context).primaryColor,
            borderRadius: 10,
            optionValue: "ID",
            optionLabel: "Name",
          )
        ],
      ),
    ));
  }
}
