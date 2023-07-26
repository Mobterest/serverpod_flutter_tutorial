/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/activity_endpoint.dart' as _i2;
import '../endpoints/attachment_endpoint.dart' as _i3;
import '../endpoints/board_endpoint.dart' as _i4;
import '../endpoints/card_endpoint.dart' as _i5;
import '../endpoints/checklist_endpoint.dart' as _i6;
import '../endpoints/comment_endpoint.dart' as _i7;
import '../endpoints/example_endpoint.dart' as _i8;
import '../endpoints/listboard_endpoint.dart' as _i9;
import '../endpoints/member_endpoint.dart' as _i10;
import '../endpoints/user_endpoint.dart' as _i11;
import '../endpoints/workspace_endpoint.dart' as _i12;
import 'package:trelloappclone_server/src/generated/activity.dart' as _i13;
import 'package:trelloappclone_server/src/generated/card.dart' as _i14;
import 'package:trelloappclone_server/src/generated/attachment.dart' as _i15;
import 'package:trelloappclone_server/src/generated/board.dart' as _i16;
import 'package:trelloappclone_server/src/generated/checklist.dart' as _i17;
import 'package:trelloappclone_server/src/generated/comment.dart' as _i18;
import 'package:trelloappclone_server/src/generated/listboard.dart' as _i19;
import 'package:trelloappclone_server/src/generated/member.dart' as _i20;
import 'package:trelloappclone_server/src/generated/workspace.dart' as _i21;
import 'package:trelloappclone_server/src/generated/user.dart' as _i22;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'activity': _i2.ActivityEndpoint()
        ..initialize(
          server,
          'activity',
          null,
        ),
      'attachment': _i3.AttachmentEndpoint()
        ..initialize(
          server,
          'attachment',
          null,
        ),
      'board': _i4.BoardEndpoint()
        ..initialize(
          server,
          'board',
          null,
        ),
      'card': _i5.CardEndpoint()
        ..initialize(
          server,
          'card',
          null,
        ),
      'checklist': _i6.ChecklistEndpoint()
        ..initialize(
          server,
          'checklist',
          null,
        ),
      'comment': _i7.CommentEndpoint()
        ..initialize(
          server,
          'comment',
          null,
        ),
      'example': _i8.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'listboard': _i9.ListboardEndpoint()
        ..initialize(
          server,
          'listboard',
          null,
        ),
      'member': _i10.MemberEndpoint()
        ..initialize(
          server,
          'member',
          null,
        ),
      'user': _i11.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
      'workspace': _i12.WorkspaceEndpoint()
        ..initialize(
          server,
          'workspace',
          null,
        ),
    };
    connectors['activity'] = _i1.EndpointConnector(
      name: 'activity',
      endpoint: endpoints['activity']!,
      methodConnectors: {
        'createActivity': _i1.MethodConnector(
          name: 'createActivity',
          params: {
            'activity': _i1.ParameterDescription(
              name: 'activity',
              type: _i1.getType<_i13.Activity>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['activity'] as _i2.ActivityEndpoint).createActivity(
            session,
            params['activity'],
          ),
        ),
        'getActivities': _i1.MethodConnector(
          name: 'getActivities',
          params: {
            'crd': _i1.ParameterDescription(
              name: 'crd',
              type: _i1.getType<_i14.Cardlist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['activity'] as _i2.ActivityEndpoint).getActivities(
            session,
            params['crd'],
          ),
        ),
      },
    );
    connectors['attachment'] = _i1.EndpointConnector(
      name: 'attachment',
      endpoint: endpoints['attachment']!,
      methodConnectors: {
        'addAttachment': _i1.MethodConnector(
          name: 'addAttachment',
          params: {
            'attachment': _i1.ParameterDescription(
              name: 'attachment',
              type: _i1.getType<_i15.Attachment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['attachment'] as _i3.AttachmentEndpoint).addAttachment(
            session,
            params['attachment'],
          ),
        ),
        'getUploadDescription': _i1.MethodConnector(
          name: 'getUploadDescription',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['attachment'] as _i3.AttachmentEndpoint)
                  .getUploadDescription(
            session,
            params['path'],
          ),
        ),
        'verifyUpload': _i1.MethodConnector(
          name: 'verifyUpload',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['attachment'] as _i3.AttachmentEndpoint).verifyUpload(
            session,
            params['path'],
          ),
        ),
      },
    );
    connectors['board'] = _i1.EndpointConnector(
      name: 'board',
      endpoint: endpoints['board']!,
      methodConnectors: {
        'createBoard': _i1.MethodConnector(
          name: 'createBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i16.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['board'] as _i4.BoardEndpoint).createBoard(
            session,
            params['board'],
          ),
        ),
        'updateBoard': _i1.MethodConnector(
          name: 'updateBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i16.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['board'] as _i4.BoardEndpoint).updateBoard(
            session,
            params['board'],
          ),
        ),
        'deleteBoard': _i1.MethodConnector(
          name: 'deleteBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i16.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['board'] as _i4.BoardEndpoint).deleteBoard(
            session,
            params['board'],
          ),
        ),
        'getWorkspaceForBoard': _i1.MethodConnector(
          name: 'getWorkspaceForBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i16.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['board'] as _i4.BoardEndpoint).getWorkspaceForBoard(
            session,
            params['board'],
          ),
        ),
        'getAllBoards': _i1.MethodConnector(
          name: 'getAllBoards',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['board'] as _i4.BoardEndpoint).getAllBoards(session),
        ),
      },
    );
    connectors['card'] = _i1.EndpointConnector(
      name: 'card',
      endpoint: endpoints['card']!,
      methodConnectors: {
        'createCard': _i1.MethodConnector(
          name: 'createCard',
          params: {
            'card': _i1.ParameterDescription(
              name: 'card',
              type: _i1.getType<_i14.Cardlist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['card'] as _i5.CardEndpoint).createCard(
            session,
            params['card'],
          ),
        ),
        'updateCard': _i1.MethodConnector(
          name: 'updateCard',
          params: {
            'card': _i1.ParameterDescription(
              name: 'card',
              type: _i1.getType<_i14.Cardlist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['card'] as _i5.CardEndpoint).updateCard(
            session,
            params['card'],
          ),
        ),
      },
    );
    connectors['checklist'] = _i1.EndpointConnector(
      name: 'checklist',
      endpoint: endpoints['checklist']!,
      methodConnectors: {
        'createChecklist': _i1.MethodConnector(
          name: 'createChecklist',
          params: {
            'checklist': _i1.ParameterDescription(
              name: 'checklist',
              type: _i1.getType<_i17.Checklist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['checklist'] as _i6.ChecklistEndpoint).createChecklist(
            session,
            params['checklist'],
          ),
        ),
        'updateChecklist': _i1.MethodConnector(
          name: 'updateChecklist',
          params: {
            'checklist': _i1.ParameterDescription(
              name: 'checklist',
              type: _i1.getType<_i17.Checklist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['checklist'] as _i6.ChecklistEndpoint).updateChecklist(
            session,
            params['checklist'],
          ),
        ),
        'deleteChecklistItem': _i1.MethodConnector(
          name: 'deleteChecklistItem',
          params: {
            'checklist': _i1.ParameterDescription(
              name: 'checklist',
              type: _i1.getType<_i17.Checklist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['checklist'] as _i6.ChecklistEndpoint)
                  .deleteChecklistItem(
            session,
            params['checklist'],
          ),
        ),
        'getChecklists': _i1.MethodConnector(
          name: 'getChecklists',
          params: {
            'crd': _i1.ParameterDescription(
              name: 'crd',
              type: _i1.getType<_i14.Cardlist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['checklist'] as _i6.ChecklistEndpoint).getChecklists(
            session,
            params['crd'],
          ),
        ),
        'deleteChecklist': _i1.MethodConnector(
          name: 'deleteChecklist',
          params: {
            'crd': _i1.ParameterDescription(
              name: 'crd',
              type: _i1.getType<_i14.Cardlist>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['checklist'] as _i6.ChecklistEndpoint).deleteChecklist(
            session,
            params['crd'],
          ),
        ),
      },
    );
    connectors['comment'] = _i1.EndpointConnector(
      name: 'comment',
      endpoint: endpoints['comment']!,
      methodConnectors: {
        'createComment': _i1.MethodConnector(
          name: 'createComment',
          params: {
            'comment': _i1.ParameterDescription(
              name: 'comment',
              type: _i1.getType<_i18.Comment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i7.CommentEndpoint).createComment(
            session,
            params['comment'],
          ),
        ),
        'deleteComment': _i1.MethodConnector(
          name: 'deleteComment',
          params: {
            'comment': _i1.ParameterDescription(
              name: 'comment',
              type: _i1.getType<_i18.Comment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i7.CommentEndpoint).deleteComment(
            session,
            params['comment'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i8.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['listboard'] = _i1.EndpointConnector(
      name: 'listboard',
      endpoint: endpoints['listboard']!,
      methodConnectors: {
        'getListsByBoard': _i1.MethodConnector(
          name: 'getListsByBoard',
          params: {
            'boardId': _i1.ParameterDescription(
              name: 'boardId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['listboard'] as _i9.ListboardEndpoint).getListsByBoard(
            session,
            boardId: params['boardId'],
          ),
        ),
        'createList': _i1.MethodConnector(
          name: 'createList',
          params: {
            'lst': _i1.ParameterDescription(
              name: 'lst',
              type: _i1.getType<_i19.Listboard>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['listboard'] as _i9.ListboardEndpoint).createList(
            session,
            params['lst'],
          ),
        ),
      },
    );
    connectors['member'] = _i1.EndpointConnector(
      name: 'member',
      endpoint: endpoints['member']!,
      methodConnectors: {
        'addMember': _i1.MethodConnector(
          name: 'addMember',
          params: {
            'member': _i1.ParameterDescription(
              name: 'member',
              type: _i1.getType<_i20.Member>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['member'] as _i10.MemberEndpoint).addMember(
            session,
            params['member'],
          ),
        ),
        'getMembersByWorkspace': _i1.MethodConnector(
          name: 'getMembersByWorkspace',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['member'] as _i10.MemberEndpoint)
                  .getMembersByWorkspace(
            session,
            workspaceId: params['workspaceId'],
          ),
        ),
        'getInformationOfMembers': _i1.MethodConnector(
          name: 'getInformationOfMembers',
          params: {
            'members': _i1.ParameterDescription(
              name: 'members',
              type: _i1.getType<List<_i20.Member>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['member'] as _i10.MemberEndpoint)
                  .getInformationOfMembers(
            session,
            params['members'],
          ),
        ),
        'deleteMember': _i1.MethodConnector(
          name: 'deleteMember',
          params: {
            'member': _i1.ParameterDescription(
              name: 'member',
              type: _i1.getType<_i20.Member>(),
              nullable: false,
            ),
            'workspace': _i1.ParameterDescription(
              name: 'workspace',
              type: _i1.getType<_i21.Workspace>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['member'] as _i10.MemberEndpoint).deleteMember(
            session,
            params['member'],
            params['workspace'],
          ),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i22.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i11.UserEndpoint).createUser(
            session,
            params['user'],
          ),
        ),
        'getUserById': _i1.MethodConnector(
          name: 'getUserById',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i11.UserEndpoint).getUserById(
            session,
            userId: params['userId'],
          ),
        ),
        'checkUserExists': _i1.MethodConnector(
          name: 'checkUserExists',
          params: {
            'existinguser': _i1.ParameterDescription(
              name: 'existinguser',
              type: _i1.getType<_i22.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i11.UserEndpoint).checkUserExists(
            session,
            params['existinguser'],
          ),
        ),
      },
    );
    connectors['workspace'] = _i1.EndpointConnector(
      name: 'workspace',
      endpoint: endpoints['workspace']!,
      methodConnectors: {
        'createWorkspace': _i1.MethodConnector(
          name: 'createWorkspace',
          params: {
            'workspace': _i1.ParameterDescription(
              name: 'workspace',
              type: _i1.getType<_i21.Workspace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .createWorkspace(
            session,
            params['workspace'],
          ),
        ),
        'getWorkspacesByUser': _i1.MethodConnector(
          name: 'getWorkspacesByUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .getWorkspacesByUser(
            session,
            userId: params['userId'],
          ),
        ),
        'getWorkspaceById': _i1.MethodConnector(
          name: 'getWorkspaceById',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .getWorkspaceById(
            session,
            workspaceId: params['workspaceId'],
          ),
        ),
        'getBoardsByWorkspace': _i1.MethodConnector(
          name: 'getBoardsByWorkspace',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .getBoardsByWorkspace(
            session,
            workspaceId: params['workspaceId'],
          ),
        ),
        'updateWorkspace': _i1.MethodConnector(
          name: 'updateWorkspace',
          params: {
            'workspace': _i1.ParameterDescription(
              name: 'workspace',
              type: _i1.getType<_i21.Workspace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .updateWorkspace(
            session,
            params['workspace'],
          ),
        ),
        'deleteWorkspace': _i1.MethodConnector(
          name: 'deleteWorkspace',
          params: {
            'workspace': _i1.ParameterDescription(
              name: 'workspace',
              type: _i1.getType<_i21.Workspace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i12.WorkspaceEndpoint)
                  .deleteWorkspace(
            session,
            params['workspace'],
          ),
        ),
      },
    );
  }
}
