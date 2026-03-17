import 'package:flutter/material.dart';
import 'package:weather_app/ui/search_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _cityController = TextEditingController();

  @override
  void initState() {
    _getWeatherInCurrentCity();
    super.initState();
  }

  Future<void> _getWeatherInCurrentCity() async {
    // TODO: Get location and load weather for current city.
  }

  void _loadByCity({String? currentCity}) {
    final city = currentCity ?? _cityController.text.trim();
    if (city.isEmpty) {
      return;
    }

    // TODO: Load weather for the given city and update the UI.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App 🌤️',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0D47A1), Color(0xFF42A5F5)],
              begin: .topCenter,
              end: .bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 16,
                children: [
                  SearchRow(
                    textEditingController: _cityController,
                    loadWeatherCallback: _loadByCity,
                  ),
                  // TODO: Show weather result or loading/error state here.
                  Expanded(child: Placeholder()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }
}
