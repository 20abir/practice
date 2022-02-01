import 'dart:async';

import 'package:flutter/material.dart';

class Page14 extends StatefulWidget {
  const Page14({Key? key}) : super(key: key);

  @override
  State<Page14> createState() => _Page14State();
}

class _Page14State extends State<Page14> {
  List<String> _data = [];
  List<String> _filterData = [];
  final _searchQuary = new TextEditingController();
  Timer? _debounce;
  String searchText = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _data.add("Afghanisthan");
    _data.add("Albania");
    _data.add("Algeria");
    _data.add("Andorra");
    _data.add("Angola");
    _data.add("Antigua and Barbuda");
    _data.add("Argentina");
    _data.add("Armenia");
    _data.add("Australia");
    _data.add("Austria");
    _data.add("Azerbaijan");
    _data.add("Bahamas");
    _data.add("Bahrain");
    _data.add("Bangladesh");
    _data.add("Barbados");
    _data.add("Belarus");
    _data.add("Belgium");
    _data.add("Belize");
    _data.add("Benin");
    _data.add("Bhutan");
    _data.add("Bolivia");
    _data.add("Bosnia and Herzegovina");
    _data.add("Botswana");
    _data.add("Brazil");
    _data.add("Brunei Darussalam");
    _data.add("Bulgaria");
    _data.add("Burkina Faso");
    _data.add("Burundi");
    _data.add("Cabo Verde");
    _data.add("Cambodia");
    _data.add("Cameroon");
    _data.add("Canada");
    _data.add("Central African Republic");
    _data.add("Chad");
    _data.add("Chile");
    _data.add("China");
    _data.add("Colombia");
    _data.add("Comoros");
    _data.add("Denmark");
    _data.add("Djibouti");
    _data.add("Dominica");
    _data.add("Ecuador");
    _data.add("Egypt");
    _data.add("El Salvador");
    _data.add("Eritrea");
    _data.add("Ethiopia");
    _data.add("Faroe Islands");
    _data.add("Fiji");
    _data.add("Finland");
    _data.add("France");
    _data.add("Gabon");
    _data.add("Gambia");
    _data.add("Germany");
    _data.add("Greece");
    _data.add("Haiti");
    _data.add("Honduras");
    _data.add("Hungary");
    _data.add("India");
    _data.add("Iceland");
    _data.add("Indonesia");
    _data.add("Italy");
    _data.add("Jamaica");
    _data.add("Japan");
    _data.add("Jordan");
    _data.add("Kazakhstan");
    _data.add("Kenya");
    _data.add("Kiribati");
    _data.add("Kuwait");
    _data.add("Latvia");
    _data.add("Lebanon");
    _data.add("Lesotho");
    _data.add("Liberia");
    _data.add("Libya");
    _data.add("Lithuania");
    _data.add("Madagascar");
    _data.add("Maldives");
    _data.add("Malta");
    _data.add("Mexico");
    _data.add("Morocco");
    _data.add("Namibia");
    _data.add("Nauru");
    _data.add("Nepal");
    _data.add("Netherlands");
    _data.add("New Zealand");
    _data.add("Norway");
    _data.add("Oman");
    _data.add("Pakistan");
    _data.add("Panama");
    _data.add("Papua New Guinea");
    _data.add("Paraguay");
    _data.add("Peru");
    _data.add("Philippines");
    _data.add("Portugal");
    _data.add("Qatar");
    _data.add("Republic of Korea");
    _data.add("Republic of Moldova");
    _data.add("Romania");
    _data.add("Russian Federation");
    _data.add("Rwanda");
    _data.add("Saint Lucia");
    _data.add("Samoa");
    _data.add("San Marino");
    _data.add("Saudi Arabia");
    _data.add("Senegal");
    _data.add("Serbia");
    _data.add("Singapore");
    _data.add("Slovakia");
    _data.add("Slovenia");
    _data.add("Somalia");
    _data.add("South Africa");
    _data.add("South Sudan");
    _data.add("Spain");
    _data.add("Sri Lanka");
    _data.add("Sudan");
    _data.add("Suriname");
    _data.add("Sweden");
    _data.add("Switzerland");
    _data.add("Tajikistan");
    _data.add("Thailand");
    _data.add("Togo");
    _data.add("Tokelau");
    _data.add("Tonga");
    _data.add("Tunisia");
    _data.add("Turkey");
    _data.add("Tuvalu");
    _data.add("Uganda");
    _data.add("Ukraine");
    _data.add("United Arab Emirates");
    _data.add("Uruguay");
    _data.add("Vanuatu");
    _data.add("Viet Nam");
    _data.add("Yemen");
    _data.add("Zambia");
    _data.add("Zimbabwe");

    _filterData = this._data;
    _searchQuary.addListener(_onSearchChange);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _searchQuary,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.greenAccent,
                  width: 1,
                )),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.redAccent,
                    width: 1,
                  ),
                ),
                hintText: "Search Here",
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_filterData[index].toString()),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: _filterData.length),
            ),
          ],
        ),
      ),
    );
  }

  _onSearchChange() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();

    _debounce = Timer(
      const Duration(microseconds: 500),
      () {
        if (this.searchText != _searchQuary.text) {
          _filterData = this._data;

          setState(() {
            this._filterData = this
                ._filterData
                .where(
                  (item) => item
                      .toString()
                      .toLowerCase()
                      .contains(_searchQuary.text.toString().toLowerCase()),
                )
                .toList();
          });
        }

        this.searchText = _searchQuary.text;
      },
    );
  }

  @override
  void dispose() {
    _searchQuary.removeListener(_onSearchChange);
    _searchQuary.dispose();
    _debounce?.cancel();
    super.dispose();
  }
}
