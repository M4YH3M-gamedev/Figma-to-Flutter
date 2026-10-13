import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
    final String title;
    const AppHeader({
        super.key,
        required this.title,
    });

    @override
    Widget build(BuildContext) {
        return AppBar(
            title: Row(
                children: [
                SvgPicture.asset('assets/icons/home/header_icon.svg',
                width: 50,
                height: 50,),
                const SizedBox(width: 8),
                Text(title),
                ],
            ),
        );
    }

    @override
    Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
