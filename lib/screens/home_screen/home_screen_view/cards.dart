import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 15, right: 20),
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(bottom: 10),
            clipBehavior: Clip.antiAlias,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 50, sigmaX: 50),
              child: ListTile(
                title: Text(
                  "edit".tr(),
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                trailing: PopupMenuButton<Locale>(
                  onSelected: context.setLocale,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        value: Locale('uz', 'UZ'),
                        child: Text("🇺🇿 UZ"),
                      ),
                      PopupMenuItem(
                          value: Locale('ru', 'RU'), child: Text("🇷🇺 RU")),
                      PopupMenuItem(
                          value: Locale('en', 'US'), child: Text("🇺🇸 EN")),
                    ];
                  },
                  icon: const Icon(Icons.translate),
                ),
              ),
            ),
          ),
          Card(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(bottom: 10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 50, sigmaX: 50),
                child: ListTile(
                  leading: Text(
                    "${"contact".tr()} : 👇👇",
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(bottom: 10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 50, sigmaX: 50),
              child: ListTile(
                title: Text(
                  "phone".tr(),
                  style: const TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                onTap: () async {
                  final url = Uri(scheme: 'tel', path: "+998936353855");
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  }
                },
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(bottom: 10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 50, sigmaX: 50),
              child: Link(
                uri: Uri.parse('https://t.me/uft0da'),
                target: LinkTarget.defaultTarget,
                builder: (context, followLink) => TextButton(
                    onPressed: followLink,
                    child: Text(
                      Uri.parse('https://t.me/uft0da').toString(),
                      style: const TextStyle(
                          color: Colors.blueGrey, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(bottom: 10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 50, sigmaX: 50),
              child: ListTile(
                title: Text(
                  "portfolio".tr(),
                  style: const TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                onTap: () => setState(() {
                  launchUrl(Uri.parse('https://t.me/by_Rustamqulov'),
                      mode: LaunchMode.externalApplication);
                }),
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(bottom: 10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 50, sigmaX: 50),
              child: ListTile(
                title: Text(
                  "my_git".tr(),
                  style: const TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                //
                onTap: () => setState(() {
                  launchUrl(
                      Uri.parse('https://github.com/qurbonpulotrustamqulov'),
                      mode: LaunchMode.inAppWebView);
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
