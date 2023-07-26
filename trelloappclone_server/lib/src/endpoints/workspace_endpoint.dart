import 'package:serverpod/serverpod.dart';
import 'package:trelloappclone_server/src/generated/protocol.dart';

class WorkspaceEndpoint extends Endpoint {
  Future<Workspace> createWorkspace(
      Session session, Workspace workspace) async {
    await Workspace.insert(session, workspace);
    return workspace;
  }

  Future<List<Workspace>> getWorkspacesByUser(Session session,
      {required int userId}) async {
    List<Workspace> workspaces =
        await Workspace.find(session, where: (w) => w.userId.equals(userId));

    for (int i = 0; i < workspaces.length; i++) {
      List<Member> members = await Member.find(
        session,
        where: (m) => m.workspaceId.equals(workspaces[i].id),
      );

      workspaces[i].members = members;
    }
    return workspaces;
  }

  Future<Workspace?> getWorkspaceById(Session session,
      {required int workspaceId}) async {
    Workspace? workspace = await Workspace.findById(session, workspaceId);
    return workspace;
  }

  Future<List<Board>> getBoardsByWorkspace(Session session,
      {required int workspaceId}) async {
    List<Board> boards = await Board.find(session,
        where: (b) => b.workspaceId.equals(workspaceId));
    return boards;
  }

  Future<bool> updateWorkspace(Session session, Workspace workspace) async {
    return await session.db.update(workspace);
  }

  Future<bool> deleteWorkspace(Session session, Workspace workspace) async {
    return await Workspace.deleteRow(session, workspace);
  }
}
