%Laboratorio 2 EDA

%TDA Repository
%PERTENENCIA
is_repo([Date, Name, Workspace,Index,Local,Remote]):-
    string(Date),
    string(Name),
    is_list(Workspace),
    is_stringList(Workspace),
    is_list(Index),
    is_stringList(Index),
    is_list(Local),
    is_list(Remote).

%SELECTORES
%Fecha
repo_getDate([Date, Name, Workspace,Index,Local,Remote], Date):-
      is_repo([Date,Name, Workspace,Index,Local,Remote]).

%Nombre
repo_getName([Date, Name, Workspace,Index,Local,Remote], Name):-
     is_repo([Date, Name, Workspace,Index,Local,Remote]).

%Workspace
repo_getWorkspace([Date, Name, Workspace,Index,Local,Remote], Workspace):-
          is_repo([Date, Name, Workspace,Index,Local,Remote]).

%Index
repo_getIndex([Date, Name, Workspace,Index,Local,Remote], Index):-
      is_repo([Date, Name, Workspace,Index,Local,Remote]).

%LocalRepository
repo_getLocal([Date, Name, Workspace, Index, Local, Remote], Local):-
      is_repo([Date, Name, Workspace, Index, Local, Remote]).

%RemoteRepository
repo_getRemote([Date, Name, Workspace, Index, Local, Remote], Remote):-
       is_repo([Date, Name, Workspace, Index, Local, Remote]).


%MODIFICADORES
%Nombre
repo_setName([Date, Name, Workspace, Index, LocalRepository, RemoteRepository], NewName, [Date, NewName, Workspace, Index, LocalRepository, RemoteRepository]):-
     is_repo([Date, Name, Workspace, Index, LocalRepository, RemoteRepository]),
     string(NewName).

%Workspace
repo_setWorkspace([Date, Name,  Workspace,Index, LocalRepository, RemoteRepository], NewWorkspace,[Date, Name, NewWorkspace, Index, LocalRepository, RemoteRepository]):-
          is_repo([Date, Name, Workspace, Index, LocalRepository, RemoteRepository]),
          is_list(NewWorkspace),
          is_stringList(NewWorkspace).

%Index
repo_setIndex([Date, Name, Workspace,Index,LocalRepository,RemoteRepository], NewIndex,[Date, Name, Workspace, NewIndex, LocalRepository, RemoteRepository]):-
      is_repo([Date, Name, Workspace, Index, LocalRepository, RemoteRepository]),
      is_list(NewIndex),
      is_stringList(NewIndex).

%LocalRepository
repo_setLocal([Date, Name, Workspace, Index, LocalRepository, RemoteRepository], NewLocalRepository,[Date, Name, Workspace, Index, NewLocalRepository, RemoteRepository]):-
      is_repo([Date, Name, Workspace, Index, LocalRepository, RemoteRepository]),
      is_list(NewLocalRepository),
      is_stringList(NewLocalRepository).

%RemoteRepository
repo_setRemote([Date, Name, Workspace, Index, LocalRepository, RemoteRepository], NewRemoteRepository,[Date, Name, Workspace, Index, LocalRepository, NewRemoteRepository]):-
       is_repo([Date, Name, Workspace, Index, LocalRepository, RemoteRepository]),
       is_list(NewRemoteRepository),
       is_stringList(NewRemoteRepository).

