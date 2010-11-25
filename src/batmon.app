{application, batmon,
 [
  {description, "Battery Monitoring Solution"},
  {vsn, "0.0.1"},
  {id, "batmon"},
  {modules,      [batmon, batmon_sup,batmon_server]},
  {registered,   [batmon, batmon_sup,batmon_server]},
  {applications, [kernel,stdlib]},
  %%
  %% mod: Specify the module name to start the application, plus args
  %%
  {mod, {batmon, []}},
  {env, []}
 ]
}.

