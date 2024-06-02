import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  List<dynamic> _cryptoData = [];
  List<dynamic> _filteredData = [];
  bool _isLoading = true;
  int _expandedIndex = -1;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchCryptoData();
  }

  Future<void> _fetchCryptoData() async {
    final url = 'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd';
    try {
      final response = await http.get(Uri.parse(url));
      final data = json.decode(response.body);
      setState(() {
        _cryptoData = data;
        _filteredData = data;
        _isLoading = false;
      });
    } catch (error) {
      print(error);
    }
  }

  void _filterData(String query) {
    setState(() {
      _filteredData = _cryptoData
          .where((crypto) =>
          crypto['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cryptocurrency Table'),
        backgroundColor: Colors.deepPurple,
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: _filterData,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionPanelList(
                  expandedHeaderPadding: EdgeInsets.symmetric(vertical: 5.0),
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _expandedIndex = isExpanded ? -1 : index;
                    });
                  },
                  children: _filteredData.map<ExpansionPanel>((crypto) {
                    int index = _filteredData.indexOf(crypto);
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(
                            crypto['name'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Price: \$${crypto['current_price']} \n24h Change: ${crypto['price_change_percentage_24h']}%',
                            style: TextStyle(
                              color: crypto['price_change_percentage_24h'] >= 0 ? Colors.green : Colors.red,
                            ),
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          ListTile(
                            title: Text('Market Cap: \$${crypto['market_cap']}'),
                          ),
                          ListTile(
                            title: Text('Symbol: ${crypto['symbol'].toUpperCase()}'),
                          ),
                          ListTile(
                            title: Text('24h High: \$${crypto['high_24h']}'),
                          ),
                          ListTile(
                            title: Text('24h Low: \$${crypto['low_24h']}'),
                          ),
                        ],
                      ),
                      isExpanded: _expandedIndex == index,
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}