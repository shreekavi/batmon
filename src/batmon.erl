-module(batmon).
-behaviour(application).

-export([start/2, shutdown/0, stop/1]).

start(_Type, _StartArgs) ->
  inets:start(),
  application:start(ecouch),
  batmon_sup:start_link().

shutdown() ->
    application:stop(batmon).


stop(_State) ->
    ok.

