/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Member extends _i1.TableRow {
  Member({
    int? id,
    required this.workspaceId,
    required this.userId,
    required this.name,
    required this.role,
  }) : super(id);

  factory Member.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Member(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      workspaceId: serializationManager
          .deserialize<int>(jsonSerialization['workspaceId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      role: serializationManager.deserialize<String>(jsonSerialization['role']),
    );
  }

  static final t = MemberTable();

  int workspaceId;

  int userId;

  String name;

  String role;

  @override
  String get tableName => 'member';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'name': name,
      'role': role,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'name': name,
      'role': role,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'name': name,
      'role': role,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'workspaceId':
        workspaceId = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'name':
        name = value;
        return;
      case 'role':
        role = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Member>> find(
    _i1.Session session, {
    MemberExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Member>(
      where: where != null ? where(Member.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Member?> findSingleRow(
    _i1.Session session, {
    MemberExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Member>(
      where: where != null ? where(Member.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Member?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Member>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required MemberExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Member>(
      where: where(Member.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    MemberExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Member>(
      where: where != null ? where(Member.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MemberExpressionBuilder = _i1.Expression Function(MemberTable);

class MemberTable extends _i1.Table {
  MemberTable() : super(tableName: 'member');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final workspaceId = _i1.ColumnInt('workspaceId');

  final userId = _i1.ColumnInt('userId');

  final name = _i1.ColumnString('name');

  final role = _i1.ColumnString('role');

  @override
  List<_i1.Column> get columns => [
        id,
        workspaceId,
        userId,
        name,
        role,
      ];
}

@Deprecated('Use MemberTable.t instead.')
MemberTable tMember = MemberTable();
