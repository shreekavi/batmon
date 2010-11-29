-module(batmon_sup).
-behaviour(supervisor).
-export([start_link/0]).
-export([init/1]).
-define(SERVER, ?MODULE).

start_link() ->
    %supervisor:start_link(batmon_sup, []).
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init(_Args) ->
    {ok, {{one_for_one, 1, 60},
          [{batmon_server, {batmon_server, start_link, []},
            permanent, brutal_kill, worker, [batmon_server]}]}}.

