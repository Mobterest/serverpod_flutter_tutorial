import 'package:serverpod/serverpod.dart';
import 'package:trelloappclone_server/src/generated/protocol.dart';

class ListboardEndpoint extends Endpoint {
  Future<List<Listboard>> getListsByBoard(Session session,
      {required int boardId}) async {
    List<Listboard> lists =
        await Listboard.find(session, where: (l) => l.boardId.equals(boardId));

    for (int i = 0; i < lists.length; i++) {
      List<Cardlist> cards = await Cardlist.find(session,
          where: (c) => c.listId.equals(lists[i].id));

      lists[i].cards = cards;
    }

    return lists;
  }

  Future<Listboard> createList(Session session, Listboard lst) async {
    await Listboard.insert(session, lst);
    return lst;
  }
}
