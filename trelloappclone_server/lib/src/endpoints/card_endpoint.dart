import 'package:serverpod/serverpod.dart';
import 'package:trelloappclone_server/src/generated/protocol.dart';

class CardEndpoint extends Endpoint {
  Future<Cardlist> createCard(Session session, Cardlist card) async {
    await Cardlist.insert(session, card);
    return card;
  }

  Future<bool> updateCard(Session session, Cardlist card) async {
    return await session.db.update(card);
  }
}
