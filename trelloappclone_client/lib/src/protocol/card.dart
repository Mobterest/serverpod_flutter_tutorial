/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Cardlist extends _i1.SerializableEntity {
  Cardlist({
    this.id,
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
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

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
}
