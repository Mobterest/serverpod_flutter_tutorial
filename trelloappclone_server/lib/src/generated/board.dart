/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Board extends _i1.TableRow {
  Board({
    int? id,
    required this.workspaceId,
    required this.userId,
    required this.name,
    this.description,
    required this.visibility,
    required this.background,
    this.starred,
    this.enableCover,
    this.watch,
    this.availableOffline,
    this.label,
    this.emailAddress,
    this.commenting,
    this.memberType,
    this.pinned,
    this.selfJoin,
    this.close,
  }) : super(id);

  factory Board.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Board(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      workspaceId: serializationManager
          .deserialize<int>(jsonSerialization['workspaceId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      visibility: serializationManager
          .deserialize<String>(jsonSerialization['visibility']),
      background: serializationManager
          .deserialize<String>(jsonSerialization['background']),
      starred:
          serializationManager.deserialize<bool?>(jsonSerialization['starred']),
      enableCover: serializationManager
          .deserialize<bool?>(jsonSerialization['enableCover']),
      watch:
          serializationManager.deserialize<bool?>(jsonSerialization['watch']),
      availableOffline: serializationManager
          .deserialize<bool?>(jsonSerialization['availableOffline']),
      label:
          serializationManager.deserialize<String?>(jsonSerialization['label']),
      emailAddress: serializationManager
          .deserialize<String?>(jsonSerialization['emailAddress']),
      commenting: serializationManager
          .deserialize<int?>(jsonSerialization['commenting']),
      memberType: serializationManager
          .deserialize<int?>(jsonSerialization['memberType']),
      pinned:
          serializationManager.deserialize<bool?>(jsonSerialization['pinned']),
      selfJoin: serializationManager
          .deserialize<bool?>(jsonSerialization['selfJoin']),
      close:
          serializationManager.deserialize<bool?>(jsonSerialization['close']),
    );
  }

  static final t = BoardTable();

  int workspaceId;

  int userId;

  String name;

  String? description;

  String visibility;

  String background;

  bool? starred;

  bool? enableCover;

  bool? watch;

  bool? availableOffline;

  String? label;

  String? emailAddress;

  int? commenting;

  int? memberType;

  bool? pinned;

  bool? selfJoin;

  bool? close;

  @override
  String get tableName => 'board';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'name': name,
      'description': description,
      'visibility': visibility,
      'background': background,
      'starred': starred,
      'enableCover': enableCover,
      'watch': watch,
      'availableOffline': availableOffline,
      'label': label,
      'emailAddress': emailAddress,
      'commenting': commenting,
      'memberType': memberType,
      'pinned': pinned,
      'selfJoin': selfJoin,
      'close': close,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'name': name,
      'description': description,
      'visibility': visibility,
      'background': background,
      'starred': starred,
      'enableCover': enableCover,
      'watch': watch,
      'availableOffline': availableOffline,
      'label': label,
      'emailAddress': emailAddress,
      'commenting': commenting,
      'memberType': memberType,
      'pinned': pinned,
      'selfJoin': selfJoin,
      'close': close,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'name': name,
      'description': description,
      'visibility': visibility,
      'background': background,
      'starred': starred,
      'enableCover': enableCover,
      'watch': watch,
      'availableOffline': availableOffline,
      'label': label,
      'emailAddress': emailAddress,
      'commenting': commenting,
      'memberType': memberType,
      'pinned': pinned,
      'selfJoin': selfJoin,
      'close': close,
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
      case 'description':
        description = value;
        return;
      case 'visibility':
        visibility = value;
        return;
      case 'background':
        background = value;
        return;
      case 'starred':
        starred = value;
        return;
      case 'enableCover':
        enableCover = value;
        return;
      case 'watch':
        watch = value;
        return;
      case 'availableOffline':
        availableOffline = value;
        return;
      case 'label':
        label = value;
        return;
      case 'emailAddress':
        emailAddress = value;
        return;
      case 'commenting':
        commenting = value;
        return;
      case 'memberType':
        memberType = value;
        return;
      case 'pinned':
        pinned = value;
        return;
      case 'selfJoin':
        selfJoin = value;
        return;
      case 'close':
        close = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Board>> find(
    _i1.Session session, {
    BoardExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Board>(
      where: where != null ? where(Board.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Board?> findSingleRow(
    _i1.Session session, {
    BoardExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Board>(
      where: where != null ? where(Board.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Board?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Board>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required BoardExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Board>(
      where: where(Board.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Board row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Board row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Board row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    BoardExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Board>(
      where: where != null ? where(Board.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef BoardExpressionBuilder = _i1.Expression Function(BoardTable);

class BoardTable extends _i1.Table {
  BoardTable() : super(tableName: 'board');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final workspaceId = _i1.ColumnInt('workspaceId');

  final userId = _i1.ColumnInt('userId');

  final name = _i1.ColumnString('name');

  final description = _i1.ColumnString('description');

  final visibility = _i1.ColumnString('visibility');

  final background = _i1.ColumnString('background');

  final starred = _i1.ColumnBool('starred');

  final enableCover = _i1.ColumnBool('enableCover');

  final watch = _i1.ColumnBool('watch');

  final availableOffline = _i1.ColumnBool('availableOffline');

  final label = _i1.ColumnString('label');

  final emailAddress = _i1.ColumnString('emailAddress');

  final commenting = _i1.ColumnInt('commenting');

  final memberType = _i1.ColumnInt('memberType');

  final pinned = _i1.ColumnBool('pinned');

  final selfJoin = _i1.ColumnBool('selfJoin');

  final close = _i1.ColumnBool('close');

  @override
  List<_i1.Column> get columns => [
        id,
        workspaceId,
        userId,
        name,
        description,
        visibility,
        background,
        starred,
        enableCover,
        watch,
        availableOffline,
        label,
        emailAddress,
        commenting,
        memberType,
        pinned,
        selfJoin,
        close,
      ];
}

@Deprecated('Use BoardTable.t instead.')
BoardTable tBoard = BoardTable();
