import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide Card;
import 'package:status_alert/status_alert.dart';
import 'package:trelloappclone_client/trelloappclone_client.dart';
import 'package:trelloappclone_flutter/features/home/presentation/custom_search.dart';
import 'package:trelloappclone_flutter/utils/color.dart';

import '../main.dart';

mixin Service {
  //sign up new user
  signUp(User user, BuildContext context) async {
    try {
      await client.user.createUser(user);

      if (context.mounted) {
        Navigator.pushNamed(context, '/');
        StatusAlert.show(context,
            duration: const Duration(seconds: 5),
            title: 'Trello Clone',
            subtitle: 'Log in with your new credentials',
            configuration:
                const IconConfiguration(icon: Icons.check, color: brandColor),
            maxWidth: 260);
      }
    } on Exception catch (e) {
      StatusAlert.show(context,
          duration: const Duration(seconds: 5),
          title: 'Trello Clone',
          subtitle: e.toString(),
          configuration:
              const IconConfiguration(icon: Icons.check, color: brandColor),
          maxWidth: 260);
    }
  }

  //log in existing user
  logIn(User user, BuildContext context) async {
    try {
      User? authenticatedUser = await client.user.checkUserExists(user);
      trello.setUser(authenticatedUser!);

      //if (authenticatedUser != null) {
      if (context.mounted) {
        Navigator.pushNamed(context, '/home');
      }
      // } else {
      //   if (context.mounted) {
      //     StatusAlert.show(context,
      //         duration: const Duration(seconds: 5),
      //         title: 'Trello Clone',
      //         subtitle: "Can't log in? Create an account",
      //         configuration:
      //             const IconConfiguration(icon: Icons.check, color: brandColor),
      //         maxWidth: 260);
      //   }
      // }
    } on Exception catch (e) {
      StatusAlert.show(context,
          duration: const Duration(seconds: 5),
          title: 'Trello Clone',
          subtitle: e.toString(),
          configuration:
              const IconConfiguration(icon: Icons.check, color: brandColor),
          maxWidth: 260);
    }
  }

  //search for a board
  search(BuildContext context) async {
    List<Board> allboards = await client.board.getAllBoards();

    if (context.mounted) {
      showSearch(context: context, delegate: CustomSearchDelegate(allboards));
    }
  }

  //encrypt password
  String encryptPassword(String password) {
    final bytes = utf8.encode(password);
    final hash = sha256.convert(bytes);
    return hash.toString();
  }

  //create workspace
  createWorkspace(BuildContext context,
      {required String name,
      required String description,
      required String visibility}) async {
    Workspace workspace = Workspace(
        userId: trello.user.id ?? 0,
        name: name,
        description: description,
        visibility: visibility);

    try {
      Workspace addedWorkspace =
          await client.workspace.createWorkspace(workspace);

      Member newMember = Member(
          workspaceId: addedWorkspace.id ?? 0,
          userId: trello.user.id ?? 0,
          name: trello.user.name!,
          role: "Admin");

      await client.member.addMember(newMember);

      if (context.mounted) {
        Navigator.pushNamed(context, "/home");
      }
    } on Exception catch (e) {
      StatusAlert.show(context,
          duration: const Duration(seconds: 5),
          title: 'Trello Clone',
          subtitle: e.toString(),
          configuration:
              const IconConfiguration(icon: Icons.check, color: brandColor),
          maxWidth: 260);
    }
  }

  //get workspaces of a specific user using user ID
  Future<List<Workspace>> getWorkspaces() async {
    List<Workspace> workspaces =
        await client.workspace.getWorkspacesByUser(userId: trello.user.id!);
    trello.setWorkspaces(workspaces);
    return workspaces;
  }

  //create board
  createBoard(BuildContext context, Board brd) async {
    try {
      await client.board.createBoard(brd);
      if (context.mounted) {
        Navigator.pushNamed(context, "/home");
      }
    } on Exception catch (e) {
      StatusAlert.show(context,
          duration: const Duration(seconds: 5),
          title: 'Trello Clone',
          subtitle: e.toString(),
          configuration:
              const IconConfiguration(icon: Icons.check, color: brandColor),
          maxWidth: 260);
    }
  }

  //get boards of a specific workspace by Workspace ID
  Future<List<Board>> getBoards(int workspaceId) async {
    List<Board> boards =
        await client.workspace.getBoardsByWorkspace(workspaceId: workspaceId);
    trello.setBoards(boards);
    return boards;
  }

  //update workspace
  Future<bool> updateWorkspace(Workspace wkspc) async {
    return await client.workspace.updateWorkspace(wkspc);
  }

  //get user by Id
  Future<User?> getUserById(int userId) async {
    User? user = await client.user.getUserById(userId: userId);
    return user;
  }

  //get information of members
  Future<List<User>> getMembersInformation(List<Member> mmbrs) async {
    List<User> usrs = await client.member.getInformationOfMembers(mmbrs);
    return usrs;
  }

  //remove Member from Workspace
  Future<Workspace> removeMemberFromWorkspace(
      Member mmbr, Workspace wkspc) async {
    Workspace updatedWorkspace = await client.member.deleteMember(mmbr, wkspc);
    return updatedWorkspace;
  }

  //update offline status
  Future<bool> updateOfflineStatus(Board brd) async {
    return await client.board.updateBoard(brd);
  }

  //get lists by board
  Future<List<Listboard>> getListsByBoard(Board brd) async {
    List<Listboard> brdlist =
        await client.listboard.getListsByBoard(boardId: brd.id!);
    trello.setListBoard(brdlist);
    return brdlist;
  }

  //add list
  Future<void> addList(Listboard lst) async {
    await client.listboard.createList(lst);
    createActivity(
        description: "${trello.user.name} added a new list ${lst.name}");
  }

  //add card
  Future<void> addCard(Cardlist crd) async {
    Cardlist newcrd = await client.card.createCard(crd);
    createActivity(
        card: newcrd.id,
        description: "${trello.user.name} added a new card ${crd.name}");
  }

  //update card
  Future<void> updateCard(Cardlist crd) async {
    await client.card.updateCard(crd);

    createActivity(
        card: crd.id,
        description: "${trello.user.name} updated the card ${crd.name}");
  }

  //create activity
  Future<void> createActivity(
      {int? boardId, required String description, int? card}) async {
    await client.activity.createActivity(Activity(
        boardId: boardId,
        userId: trello.user.id!,
        cardId: card,
        description: description,
        dateCreated: DateTime.now()));
  }

  //get activities of a specific card
  Future<List<Activity>> getActivities(Cardlist crd) async {
    return client.activity.getActivities(crd);
  }

  //create comment
  Future<void> createComment(Comment cmmt) async {
    await client.comment.createComment(cmmt);
  }

  //create checklist
  Future<void> createChecklist(Checklist chcklst) async {
    await client.checklist.createChecklist(chcklst);
  }

  Future<List<Checklist>> getChecklists(Cardlist crd) async {
    List<Checklist> chcklsts = await client.checklist.getChecklists(crd);
    return chcklsts;
  }

  Future<void> updateChecklist(Checklist chcklst) async {
    await client.checklist.updateChecklist(chcklst);
  }

  Future<void> deleteChecklist(Cardlist crd) async {
    await client.checklist.deleteChecklist(crd);
  }

  Future<void> uploadFile(Cardlist crd) async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result != null) {
      addAttachment(result.files[0].path ?? "", crd);
    }
  }

  Future<bool> addAttachment(String path, Cardlist crd) async {
    var uploadDescription = await client.attachment.getUploadDescription(path);
    bool success = false;
    if (uploadDescription != null) {
      var uploader = FileUploader(uploadDescription);
      await uploader.upload(
          File(path).readAsBytes().asStream(), File(path).lengthSync());
      success = await client.attachment.verifyUpload(path);
    }
    if (success) {
      insertAttachment(crd, path);
    }
    return success;
  }

  Future<void> insertAttachment(Cardlist crd, String path) async {
    await client.attachment.addAttachment(
        Attachment(userId: trello.user.id!, cardId: crd.id!, attachment: path));
  }
}
