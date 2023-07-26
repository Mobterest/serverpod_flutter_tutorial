/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Attachment extends _i1.TableRow {
  Attachment({
    int? id,
    required this.userId,
    required this.cardId,
    required this.attachment,
  }) : super(id);

  factory Attachment.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Attachment(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      cardId:
          serializationManager.deserialize<int>(jsonSerialization['cardId']),
      attachment: serializationManager
          .deserialize<String>(jsonSerialization['attachment']),
    );
  }

  static final t = AttachmentTable();

  int userId;

  int cardId;

  String attachment;

  @override
  String get tableName => 'attachment';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'cardId': cardId,
      'attachment': attachment,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'userId': userId,
      'cardId': cardId,
      'attachment': attachment,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'userId': userId,
      'cardId': cardId,
      'attachment': attachment,
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
      case 'cardId':
        cardId = value;
        return;
      case 'attachment':
        attachment = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Attachment>> find(
    _i1.Session session, {
    AttachmentExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Attachment>(
      where: where != null ? where(Attachment.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Attachment?> findSingleRow(
    _i1.Session session, {
    AttachmentExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Attachment>(
      where: where != null ? where(Attachment.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Attachment?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Attachment>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required AttachmentExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Attachment>(
      where: where(Attachment.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Attachment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Attachment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Attachment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    AttachmentExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Attachment>(
      where: where != null ? where(Attachment.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AttachmentExpressionBuilder = _i1.Expression Function(AttachmentTable);

class AttachmentTable extends _i1.Table {
  AttachmentTable() : super(tableName: 'attachment');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final userId = _i1.ColumnInt('userId');

  final cardId = _i1.ColumnInt('cardId');

  final attachment = _i1.ColumnString('attachment');

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        cardId,
        attachment,
      ];
}

@Deprecated('Use AttachmentTable.t instead.')
AttachmentTable tAttachment = AttachmentTable();
