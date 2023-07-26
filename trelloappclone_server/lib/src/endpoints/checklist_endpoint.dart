import 'package:serverpod/serverpod.dart';
import 'package:trelloappclone_server/src/generated/protocol.dart';

class ChecklistEndpoint extends Endpoint {
  Future<Checklist> createChecklist(
      Session session, Checklist checklist) async {
    await Checklist.insert(session, checklist);
    return checklist;
  }

  Future<bool> updateChecklist(Session session, Checklist checklist) async {
    return await session.db.update(checklist);
  }

  Future<bool> deleteChecklistItem(Session session, Checklist checklist) async {
    return await Checklist.deleteRow(session, checklist);
  }

  Future<List<Checklist>> getChecklists(Session session, Cardlist crd) async {
    return await Checklist.find(session, where: (c) => c.cardId.equals(crd.id));
  }

  Future<int> deleteChecklist(Session session, Cardlist crd) async {
    return await Checklist.delete(session,
        where: (c) => c.cardId.equals(crd.id));
  }
}
