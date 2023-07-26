import 'package:serverpod/serverpod.dart';
import 'package:trelloappclone_server/src/generated/protocol.dart';

class BoardEndpoint extends Endpoint {
  Future<Board> createBoard(Session session, Board board) async {
    await Board.insert(session, board);
    return board;
  }

  Future<bool> updateBoard(Session session, Board board) async {
    return await session.db.update(board);
  }

  Future<bool> deleteBoard(Session session, Board board) async {
    return await Board.deleteRow(session, board);
  }

  Future<Workspace?> getWorkspaceForBoard(Session session, Board board) async {
    Workspace? workspace = await Workspace.findSingleRow(
      session,
      where: (w) => w.id.equals(board.workspaceId),
    );
    return workspace;
  }

  Future<List<Board>> getAllBoards(Session session) async {
    List<Board> boards = await Board.find(
      session,
      where: (b) => b.id > 0,
    );
    return boards;
  }
}
