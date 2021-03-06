%% Author: Dmitry Sobinov
%% Created: May 15, 2012

% Helper functions for logging to the error-logger, or printing trace messages
% to the console.

-define(TRACE(Format, Data),
    io:format("[TRACE] ~p ~p:  " ++ Format ++ "~n", [?MODULE, self()] ++ Data)).

-define(INFO(Format, Data),
    error_logger:info_msg("~p ~p:  " ++ Format ++ "~n", [?MODULE, self()] ++ Data)).

-define(WARN(Format, Data),
    error_logger:warning_msg("~p ~p:  " ++ Format ++ "~n", [?MODULE, self()] ++ Data)).

-define(ERROR(Format, Data),
    error_logger:error_msg("~p ~p:  " ++ Format ++ "~n", [?MODULE, self()] ++ Data)).
