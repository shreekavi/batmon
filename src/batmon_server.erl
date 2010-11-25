-module(batmon_server).
-behaviour(gen_server).
-export([start_link/0]).
-export([init/1]).
start_link() ->
    gen_server:start_link({local, batmon_server}, batmon_server, [], []).
init(_Args) ->
    {ok, channels()}.

channels() ->
    ok.

