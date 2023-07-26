/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Cardlist extends _i1.TableRow {
  Cardlist({
    int? id,
    required this.listId,
    required this.userId,
    required this.name,
    this.description,
    this.startDate,
    this.dueDate,
    this.attachment,
    this.archived,
    this.checklist,
    this.comments,
  }) : super(id);

  factory Cardlist.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Cardlist(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      listId:
          serializationManager.deserialize<int>(jsonSerialization['listId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      startDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['startDate']),
      dueDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['dueDate']),
      attachment: serializationManager
          .deserialize<bool?>(jsonSerialization['attachment']),
      archived: serializationManager
          .deserialize<bool?>(jsonSerialization['archived']),
      checklist: serializationManager
          .deserialize<bool?>(jsonSerialization['checklist']),
      comments: serializationManager
          .deserialize<bool?>(jsonSerialization['comments']),
    );
  }

  static final t = CardlistTable();

  int listId;

  int userId;

  String name;

  String? description;

  DateTime? startDate;

  DateTime? dueDate;

  bool? attachment;

  bool? archived;

  bool? checklist;

  bool? comments;

  @override
  String get tableName => 'card';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'listId': listId,
      'userId': userId,
      'name': name,
      'description': description,
      'startDate': startDate,
      'dueDate': dueDate,
      'attachment': attachment,
      'archived': archived,
      'checklist': checklist,
      'comments': comments,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'listId': listId,
      'userId': userId,
      'name': name,
      'description': description,
      'startDate': startDate,
      'dueDate': dueDate,
      'attachment': attachment,
      'archived': archived,
      'checklist': checklist,
      'comments': comments,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'listId': listId,
      'userId': userId,
      'name': name,
      'description': description,
      'startDate': startDate,
      'dueDate': dueDate,
      'attachment': attachment,
      'archived': archived,
      'checklist': checklist,
      'comments': comments,
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
      case 'listId':
        listId = value;
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
      case 'startDate':
        startDate = value;
        return;
      case 'dueDate':
        dueDate = value;
        return;
      case 'attachment':
        attachment = value;
        return;
      case 'archived':
        archived = value;
        return;
      case 'checklist':
        checklist = value;
        return;
      case 'comments':
        comments = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Cardlist>> find(
    _i1.Session session, {
    CardlistExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Cardlist>(
      where: where != null ? where(Cardlist.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Cardlist?> findSingleRow(
    _i1.Session session, {
    CardlistExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Cardlist>(
      where: where != null ? where(Cardlist.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Cardlist?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Cardlist>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required CardlistExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Cardlist>(
      where: where(Cardlist.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Cardlist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Cardlist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Cardlist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    CardlistExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Cardlist>(
      where: where != null ? where(Cardlist.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef CardlistExpressionBuilder = _i1.Expression Function(CardlistTable);

class CardlistTable extends _i1.Table {
  CardlistTable() : super(tableName: 'card');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final listId = _i1.ColumnInt('listId');

  final userId = _i1.ColumnInt('userId');

  final name = _i1.ColumnString('name');

  final description = _i1.ColumnString('description');

  final startDate = _i1.ColumnDateTime('startDate');

  final dueDate = _i1.ColumnDateTime('dueDate');

  final attachment = _i1.ColumnBool('attachment');

  final archived = _i1.ColumnBool('archived');

  final checklist = _i1.ColumnBool('checklist');

  final comments = _i1.ColumnBool('comments');

  @override
  List<_i1.Column> get columns => [
        id,
        listId,
        userId,
        name,
        description,
        startDate,
        dueDate,
        attachment,
        archived,
        checklist,
        comments,
      ];
}

@Deprecated('Use CardlistTable.t instead.')
CardlistTable tCardlist = CardlistTable();
