/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class Workspace extends _i1.TableRow {
  Workspace({
    int? id,
    required this.userId,
    required this.name,
    required this.description,
    required this.visibility,
    this.members,
  }) : super(id);

  factory Workspace.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Workspace(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      visibility: serializationManager
          .deserialize<String>(jsonSerialization['visibility']),
      members: serializationManager
          .deserialize<List<_i2.Member>?>(jsonSerialization['members']),
    );
  }

  static final t = WorkspaceTable();

  int userId;

  String name;

  String description;

  String visibility;

  List<_i2.Member>? members;

  @override
  String get tableName => 'workspace';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
      'description': description,
      'visibility': visibility,
      'members': members,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
      'description': description,
      'visibility': visibility,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
      'description': description,
      'visibility': visibility,
      'members': members,
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
      case 'userId':
        userId = value;
        return;
      case 'name':
        name = value;
        return;
      case 'description':
        description = value;
        return;
      case 'visibility':
        visibility = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Workspace>> find(
    _i1.Session session, {
    WorkspaceExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Workspace>(
      where: where != null ? where(Workspace.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Workspace?> findSingleRow(
    _i1.Session session, {
    WorkspaceExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Workspace>(
      where: where != null ? where(Workspace.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Workspace?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Workspace>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required WorkspaceExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Workspace>(
      where: where(Workspace.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Workspace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Workspace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Workspace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    WorkspaceExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Workspace>(
      where: where != null ? where(Workspace.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef WorkspaceExpressionBuilder = _i1.Expression Function(WorkspaceTable);

class WorkspaceTable extends _i1.Table {
  WorkspaceTable() : super(tableName: 'workspace');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final userId = _i1.ColumnInt('userId');

  final name = _i1.ColumnString('name');

  final description = _i1.ColumnString('description');

  final visibility = _i1.ColumnString('visibility');

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        name,
        description,
        visibility,
      ];
}

@Deprecated('Use WorkspaceTable.t instead.')
WorkspaceTable tWorkspace = WorkspaceTable();
