/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Checklist extends _i1.TableRow {
  Checklist({
    int? id,
    required this.cardId,
    required this.name,
    required this.status,
  }) : super(id);

  factory Checklist.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Checklist(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      cardId:
          serializationManager.deserialize<int>(jsonSerialization['cardId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      status:
          serializationManager.deserialize<bool>(jsonSerialization['status']),
    );
  }

  static final t = ChecklistTable();

  int cardId;

  String name;

  bool status;

  @override
  String get tableName => 'checklist';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cardId': cardId,
      'name': name,
      'status': status,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'cardId': cardId,
      'name': name,
      'status': status,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'cardId': cardId,
      'name': name,
      'status': status,
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
      case 'cardId':
        cardId = value;
        return;
      case 'name':
        name = value;
        return;
      case 'status':
        status = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Checklist>> find(
    _i1.Session session, {
    ChecklistExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Checklist>(
      where: where != null ? where(Checklist.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Checklist?> findSingleRow(
    _i1.Session session, {
    ChecklistExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Checklist>(
      where: where != null ? where(Checklist.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Checklist?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Checklist>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ChecklistExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Checklist>(
      where: where(Checklist.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Checklist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Checklist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Checklist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ChecklistExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Checklist>(
      where: where != null ? where(Checklist.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ChecklistExpressionBuilder = _i1.Expression Function(ChecklistTable);

class ChecklistTable extends _i1.Table {
  ChecklistTable() : super(tableName: 'checklist');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final cardId = _i1.ColumnInt('cardId');

  final name = _i1.ColumnString('name');

  final status = _i1.ColumnBool('status');

  @override
  List<_i1.Column> get columns => [
        id,
        cardId,
        name,
        status,
      ];
}

@Deprecated('Use ChecklistTable.t instead.')
ChecklistTable tChecklist = ChecklistTable();
