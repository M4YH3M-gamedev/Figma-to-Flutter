import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    final List<String> _scareLevels = const [
        'Mildly Haunted',
        'Moderately Haunted',
        'Severely Haunted',
    ];

    @override
    Widget build(BuildContext context) {
        const selectedLevel = 'Mildly Haunted';

        return Scaffold(
            appBar: const AppHeader(
                title: 'SpookyFind',
            ),
            body: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        const SizedBox(height: 24),
                        ScareLevelDropdown(
                            selectedValue: selectedLevel,
                            items: _scareLevels,
                        ),
                        const SizedBox(height: 24),
                        const MapPlaceholder(),
                        const SizedBox(height: 24),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset('assets/icons/home/camera_icon.svg',
                                    width: 40,
                                    height: 40,
                                    ),

                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset('assets/icons/home/photo_library_icon.svg',
                                    width: 40,
                                    height: 40,
                                    ),
                                ),
                            ],
                        ),
                        const SizedBox(height: 24),
                    ],
                ),
            ),
        );
    }
}
