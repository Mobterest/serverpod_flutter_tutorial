import 'package:flutter/material.dart';
import 'package:trelloappclone_client/trelloappclone_client.dart';
import 'package:trelloappclone_flutter/features/workspace/domain/workspace_arguments.dart';
import 'package:trelloappclone_flutter/main.dart';

import '../../../utils/color.dart';
import '../../../utils/service.dart';
import '../../workspace/presentation/index.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> with Service {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundColor: brandColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(trello.user.name!),
            ),
            Text("@${trello.user.name!.toLowerCase().replaceAll(" ", "")}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(trello.user.email),
                IconButton(
                    onPressed: () {
                      setState(() {
                        active = !active;
                      });
                    },
                    icon: Icon((active)
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up))
              ],
            )
          ],
        )),
        (active)
            ? Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.pages,
                      color: brandColor,
                    ),
                    title: const Text(
                      'Boards',
                      style: TextStyle(
                          color: brandColor, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  const Divider(
                    height: 2,
                    thickness: 2,
                    color: brandColor,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Workspaces"),
                  ),
                  FutureBuilder(
                    future: getWorkspaces(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<Workspace> children =
                            snapshot.data as List<Workspace>;

                        if (children.isNotEmpty) {
                          return Column(children: buildWorkspaces(children));
                        }
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.card_membership),
                    title: const Text("My cards"),
                    onTap: () {
                      Navigator.pushNamed(context, '/mycards');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.pages),
                    title: const Text("Offline boards"),
                    onTap: () {
                      Navigator.pushNamed(context, '/offlineboards');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                    onTap: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help_outline_rounded),
                    title: const Text("Help!"),
                    onTap: () {},
                  ),
                ],
              )
            : ListTile(
                leading: const Icon(Icons.add),
                title: const Text('Add account'),
                onTap: () {},
              )
      ]),
    );
  }

  List<Widget> buildWorkspaces(List<Workspace> wkspcs) {
    List<Widget> tiles = [];
    for (int i = 0; i < wkspcs.length; i++) {
      tiles.add(ListTile(
        leading: const Icon(Icons.people),
        title: Text(wkspcs[i].name),
        trailing: IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {
            Navigator.pushNamed(context, '/workspacemenu');
          },
        ),
        onTap: () {
          Navigator.pushNamed(context, WorkspaceScreen.routeName,
              arguments: WorkspaceArguments(wkspcs[i]));
        },
      ));
    }
    return tiles;
  }
}
