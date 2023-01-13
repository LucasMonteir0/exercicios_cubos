import 'package:api_consumption/ui/components/tabs/details_movies_tab.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DetailsMoviesTab(id: id),
      ),
    );
  }
}
