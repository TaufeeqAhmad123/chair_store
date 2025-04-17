
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/theme_controller.dart';
import 'package:flutter_application_1/theme/theme.dart';
import 'package:provider/provider.dart';

class rowWidget extends StatelessWidget {
  final String title,sub;
  const rowWidget({
    super.key, required this.title, required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<Themeprovider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            title,
            style:Theme.of(context).textTheme.displayLarge
          ),
          const Spacer(),
          Text(sub, style: blackTextStyle.copyWith(fontSize: 12)),
        ],
      ),
    );
  }
}

