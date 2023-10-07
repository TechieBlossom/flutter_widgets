import 'package:flutter/material.dart';

class AboutListTileScreen extends StatelessWidget {
  AboutListTileScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => toggleDrawer(),
          icon: const Icon(Icons.menu),
        ),
      ),
      drawer: NavigationDrawer(
        children: [
          ListTile(
            leading: AspectRatio(
              aspectRatio: 1.0,
              child: Image.asset('assets/logo_small.png'),
            ),
            title: Text(
              'Prateek Sharma',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            subtitle: const Text('Mobile App Developer'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),
          const ListTile(
            leading: Icon(Icons.android),
            title: Text('Android'),
          ),
          const ListTile(
            leading: FlutterLogo(
              style: FlutterLogoStyle.stacked,
            ),
            title: Text('Flutter'),
          ),
          const ListTile(
            leading: Icon(Icons.settings_rounded),
            title: Text('Settings'),
          ),
          AboutListTile(
            icon: const Icon(Icons.abc_rounded),
            applicationName: 'TECHIE BLOSSOM',
            applicationIcon: Image.asset(
              'assets/logo_small.png',
              width: 50,
              height: 50,
            ),
            applicationLegalese: _legalese,
            applicationVersion: '2.0.0',
            aboutBoxChildren: [
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('TNC'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Privacy Policy'),
                  ),
                ],
              ),
            ],
            child: const Text('About'),
          ),
        ],
      ),
    );
  }

  void toggleDrawer() {
    if (scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.closeDrawer();
    } else {
      scaffoldKey.currentState!.openDrawer();
    }
  }
}

const _legalese =
    "Help you understand concepts of Flutter and Android in easy language.";
