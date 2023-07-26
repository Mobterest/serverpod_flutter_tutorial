/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Activity extends _i1.TableRow {
  Activity({
    int? id,
    this.boardId,
    required this.userId,
    this.cardId,
    required this.description,
    required this.dateCreated,
  }) : super(id);

  factory Activity.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Activity(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      boardId:
          serializationManager.deserialize<int?>(jsonSerialization['boardId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      cardId:
          serializationManager.deserialize<int?>(jsonSerialization['cardId']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      dateCreated: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateCreated']),
    );
  }

  static final t = ActivityTable();

  int? boardId;

  int userId;

  int? cardId;

  String description;

  DateTime dateCreated;

  @override
  String get tableName => 'activity';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'boardId': boardId,
      'userId': userId,
      'cardId': cardId,
      'description': description,
      'dateCreated': dateCreated,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'boardId': boardId,
      'userId': userId,
      'cardId': cardId,
      'description': description,
      'dateCreated': dateCreated,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'boardId': boardId,
      'userId': userId,
      'cardId': cardId,
      'description': description,
      'dateCreated': dateCreated,
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
      case 'boardId':
        boardId = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'cardId':
        cardId = value;
        return;
      case 'description':
        description = value;
        return;
      case 'dateCreated':
        dateCreated = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Activity>> find(
    _i1.Session session, {
    ActivityExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Activity>(
      where: where != null ? where(Activity.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Activity?> findSingleRow(
    _i1.Session session, {
    ActivityExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Activity>(
      where: where != null ? where(Activity.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Activity?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Activity>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ActivityExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Activity>(
      where: where(Activity.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Activity row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Activity row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Activity row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ActivityExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Activity>(
      where: where != null ? where(Activity.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ActivityExpressionBuilder = _i1.Expression Function(ActivityTable);

class ActivityTable extends _i1.Table {
  ActivityTable() : super(tableName: 'activity');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final boardId = _i1.ColumnInt('boardId');

  final userId = _i1.ColumnInt('userId');

  final cardId = _i1.ColumnInt('cardId');

  final description = _i1.ColumnString('description');

  final dateCreated = _i1.ColumnDateTime('dateCreated');

  @override
  List<_i1.Column> get columns => [
        id,
        boardId,
        userId,
        cardId,
        description,
        dateCreated,
      ];
}

@Deprecated('Use ActivityTable.t instead.')
ActivityTable tActivity = ActivityTable();
