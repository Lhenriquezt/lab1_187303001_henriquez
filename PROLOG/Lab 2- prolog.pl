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
