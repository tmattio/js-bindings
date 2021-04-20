[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type inspector_Console_ConsoleMessage =
      [ `Inspector_Console_ConsoleMessage ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Console_MessageAddedEventDataType =
      [ `Inspector_Console_MessageAddedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_BreakLocation =
      [ `Inspector_Debugger_BreakLocation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_BreakpointId = string

    and inspector_Debugger_BreakpointResolvedEventDataType =
      [ `Inspector_Debugger_BreakpointResolvedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_CallFrame = [ `Inspector_Debugger_CallFrame ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_CallFrameId = string

    and inspector_Debugger_ContinueToLocationParameterType =
      [ `Inspector_Debugger_ContinueToLocationParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_EnableReturnType =
      [ `Inspector_Debugger_EnableReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_EvaluateOnCallFrameParameterType =
      [ `Inspector_Debugger_EvaluateOnCallFrameParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_EvaluateOnCallFrameReturnType =
      [ `Inspector_Debugger_EvaluateOnCallFrameReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_GetPossibleBreakpointsParameterType =
      [ `Inspector_Debugger_GetPossibleBreakpointsParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_GetPossibleBreakpointsReturnType =
      [ `Inspector_Debugger_GetPossibleBreakpointsReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_GetScriptSourceParameterType =
      [ `Inspector_Debugger_GetScriptSourceParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_GetScriptSourceReturnType =
      [ `Inspector_Debugger_GetScriptSourceReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_GetStackTraceParameterType =
      [ `Inspector_Debugger_GetStackTraceParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_GetStackTraceReturnType =
      [ `Inspector_Debugger_GetStackTraceReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_Location = [ `Inspector_Debugger_Location ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_PauseOnAsyncCallParameterType =
      [ `Inspector_Debugger_PauseOnAsyncCallParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_PausedEventDataType =
      [ `Inspector_Debugger_PausedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_RemoveBreakpointParameterType =
      [ `Inspector_Debugger_RemoveBreakpointParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_RestartFrameParameterType =
      [ `Inspector_Debugger_RestartFrameParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_RestartFrameReturnType =
      [ `Inspector_Debugger_RestartFrameReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_Scope = [ `Inspector_Debugger_Scope ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_ScriptFailedToParseEventDataType =
      [ `Inspector_Debugger_ScriptFailedToParseEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_ScriptParsedEventDataType =
      [ `Inspector_Debugger_ScriptParsedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_ScriptPosition =
      [ `Inspector_Debugger_ScriptPosition ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SearchInContentParameterType =
      [ `Inspector_Debugger_SearchInContentParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SearchInContentReturnType =
      [ `Inspector_Debugger_SearchInContentReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SearchMatch =
      [ `Inspector_Debugger_SearchMatch ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetAsyncCallStackDepthParameterType =
      [ `Inspector_Debugger_SetAsyncCallStackDepthParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetBlackboxPatternsParameterType =
      [ `Inspector_Debugger_SetBlackboxPatternsParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetBlackboxedRangesParameterType =
      [ `Inspector_Debugger_SetBlackboxedRangesParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetBreakpointByUrlParameterType =
      [ `Inspector_Debugger_SetBreakpointByUrlParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetBreakpointByUrlReturnType =
      [ `Inspector_Debugger_SetBreakpointByUrlReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetBreakpointParameterType =
      [ `Inspector_Debugger_SetBreakpointParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetBreakpointReturnType =
      [ `Inspector_Debugger_SetBreakpointReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetBreakpointsActiveParameterType =
      [ `Inspector_Debugger_SetBreakpointsActiveParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetPauseOnExceptionsParameterType =
      [ `Inspector_Debugger_SetPauseOnExceptionsParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetReturnValueParameterType =
      [ `Inspector_Debugger_SetReturnValueParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetScriptSourceParameterType =
      [ `Inspector_Debugger_SetScriptSourceParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetScriptSourceReturnType =
      [ `Inspector_Debugger_SetScriptSourceReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetSkipAllPausesParameterType =
      [ `Inspector_Debugger_SetSkipAllPausesParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_SetVariableValueParameterType =
      [ `Inspector_Debugger_SetVariableValueParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Debugger_StepIntoParameterType =
      [ `Inspector_Debugger_StepIntoParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_AddHeapSnapshotChunkEventDataType =
      [ `Inspector_HeapProfiler_AddHeapSnapshotChunkEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_AddInspectedHeapObjectParameterType =
      [ `Inspector_HeapProfiler_AddInspectedHeapObjectParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_GetHeapObjectIdParameterType =
      [ `Inspector_HeapProfiler_GetHeapObjectIdParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_GetHeapObjectIdReturnType =
      [ `Inspector_HeapProfiler_GetHeapObjectIdReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_GetObjectByHeapObjectIdParameterType =
      [ `Inspector_HeapProfiler_GetObjectByHeapObjectIdParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_GetObjectByHeapObjectIdReturnType =
      [ `Inspector_HeapProfiler_GetObjectByHeapObjectIdReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_GetSamplingProfileReturnType =
      [ `Inspector_HeapProfiler_GetSamplingProfileReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_HeapSnapshotObjectId = string

    and inspector_HeapProfiler_HeapStatsUpdateEventDataType =
      [ `Inspector_HeapProfiler_HeapStatsUpdateEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_LastSeenObjectIdEventDataType =
      [ `Inspector_HeapProfiler_LastSeenObjectIdEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_ReportHeapSnapshotProgressEventDataType =
      [ `Inspector_HeapProfiler_ReportHeapSnapshotProgressEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_SamplingHeapProfile =
      [ `Inspector_HeapProfiler_SamplingHeapProfile ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_SamplingHeapProfileNode =
      [ `Inspector_HeapProfiler_SamplingHeapProfileNode ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_StartSamplingParameterType =
      [ `Inspector_HeapProfiler_StartSamplingParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_StartTrackingHeapObjectsParameterType =
      [ `Inspector_HeapProfiler_StartTrackingHeapObjectsParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_StopSamplingReturnType =
      [ `Inspector_HeapProfiler_StopSamplingReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_StopTrackingHeapObjectsParameterType =
      [ `Inspector_HeapProfiler_StopTrackingHeapObjectsParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_HeapProfiler_TakeHeapSnapshotParameterType =
      [ `Inspector_HeapProfiler_TakeHeapSnapshotParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T inspector_InspectorNotification =
      [ `Inspector_InspectorNotification of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and inspector_NodeRuntime_NotifyWhenWaitingForDisconnectParameterType =
      [ `Inspector_NodeRuntime_NotifyWhenWaitingForDisconnectParameterType ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeTracing_DataCollectedEventDataType =
      [ `Inspector_NodeTracing_DataCollectedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeTracing_GetCategoriesReturnType =
      [ `Inspector_NodeTracing_GetCategoriesReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeTracing_StartParameterType =
      [ `Inspector_NodeTracing_StartParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeTracing_TraceConfig =
      [ `Inspector_NodeTracing_TraceConfig ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeWorker_AttachedToWorkerEventDataType =
      [ `Inspector_NodeWorker_AttachedToWorkerEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeWorker_DetachParameterType =
      [ `Inspector_NodeWorker_DetachParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeWorker_DetachedFromWorkerEventDataType =
      [ `Inspector_NodeWorker_DetachedFromWorkerEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeWorker_EnableParameterType =
      [ `Inspector_NodeWorker_EnableParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeWorker_ReceivedMessageFromWorkerEventDataType =
      [ `Inspector_NodeWorker_ReceivedMessageFromWorkerEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeWorker_SendMessageToWorkerParameterType =
      [ `Inspector_NodeWorker_SendMessageToWorkerParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_NodeWorker_SessionID = string

    and inspector_NodeWorker_WorkerID = string

    and inspector_NodeWorker_WorkerInfo =
      [ `Inspector_NodeWorker_WorkerInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_ConsoleProfileFinishedEventDataType =
      [ `Inspector_Profiler_ConsoleProfileFinishedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_ConsoleProfileStartedEventDataType =
      [ `Inspector_Profiler_ConsoleProfileStartedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_CoverageRange =
      [ `Inspector_Profiler_CoverageRange ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_FunctionCoverage =
      [ `Inspector_Profiler_FunctionCoverage ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_GetBestEffortCoverageReturnType =
      [ `Inspector_Profiler_GetBestEffortCoverageReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_PositionTickInfo =
      [ `Inspector_Profiler_PositionTickInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_Profile = [ `Inspector_Profiler_Profile ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_ProfileNode =
      [ `Inspector_Profiler_ProfileNode ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_ScriptCoverage =
      [ `Inspector_Profiler_ScriptCoverage ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_ScriptTypeProfile =
      [ `Inspector_Profiler_ScriptTypeProfile ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_SetSamplingIntervalParameterType =
      [ `Inspector_Profiler_SetSamplingIntervalParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_StartPreciseCoverageParameterType =
      [ `Inspector_Profiler_StartPreciseCoverageParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_StopReturnType =
      [ `Inspector_Profiler_StopReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_TakePreciseCoverageReturnType =
      [ `Inspector_Profiler_TakePreciseCoverageReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_TakeTypeProfileReturnType =
      [ `Inspector_Profiler_TakeTypeProfileReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_TypeObject = [ `Inspector_Profiler_TypeObject ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Profiler_TypeProfileEntry =
      [ `Inspector_Profiler_TypeProfileEntry ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_AwaitPromiseParameterType =
      [ `Inspector_Runtime_AwaitPromiseParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_AwaitPromiseReturnType =
      [ `Inspector_Runtime_AwaitPromiseReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_CallArgument =
      [ `Inspector_Runtime_CallArgument ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_CallFrame = [ `Inspector_Runtime_CallFrame ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_CallFunctionOnParameterType =
      [ `Inspector_Runtime_CallFunctionOnParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_CallFunctionOnReturnType =
      [ `Inspector_Runtime_CallFunctionOnReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_CompileScriptParameterType =
      [ `Inspector_Runtime_CompileScriptParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_CompileScriptReturnType =
      [ `Inspector_Runtime_CompileScriptReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ConsoleAPICalledEventDataType =
      [ `Inspector_Runtime_ConsoleAPICalledEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_CustomPreview =
      [ `Inspector_Runtime_CustomPreview ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_EntryPreview =
      [ `Inspector_Runtime_EntryPreview ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_EvaluateParameterType =
      [ `Inspector_Runtime_EvaluateParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_EvaluateReturnType =
      [ `Inspector_Runtime_EvaluateReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ExceptionDetails =
      [ `Inspector_Runtime_ExceptionDetails ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ExceptionRevokedEventDataType =
      [ `Inspector_Runtime_ExceptionRevokedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ExceptionThrownEventDataType =
      [ `Inspector_Runtime_ExceptionThrownEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ExecutionContextCreatedEventDataType =
      [ `Inspector_Runtime_ExecutionContextCreatedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ExecutionContextDescription =
      [ `Inspector_Runtime_ExecutionContextDescription ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ExecutionContextDestroyedEventDataType =
      [ `Inspector_Runtime_ExecutionContextDestroyedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ExecutionContextId = int

    and inspector_Runtime_GetPropertiesParameterType =
      [ `Inspector_Runtime_GetPropertiesParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_GetPropertiesReturnType =
      [ `Inspector_Runtime_GetPropertiesReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_GlobalLexicalScopeNamesParameterType =
      [ `Inspector_Runtime_GlobalLexicalScopeNamesParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_GlobalLexicalScopeNamesReturnType =
      [ `Inspector_Runtime_GlobalLexicalScopeNamesReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_InspectRequestedEventDataType =
      [ `Inspector_Runtime_InspectRequestedEventDataType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_InternalPropertyDescriptor =
      [ `Inspector_Runtime_InternalPropertyDescriptor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ObjectPreview =
      [ `Inspector_Runtime_ObjectPreview ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_PropertyDescriptor =
      [ `Inspector_Runtime_PropertyDescriptor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_PropertyPreview =
      [ `Inspector_Runtime_PropertyPreview ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_QueryObjectsParameterType =
      [ `Inspector_Runtime_QueryObjectsParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_QueryObjectsReturnType =
      [ `Inspector_Runtime_QueryObjectsReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ReleaseObjectGroupParameterType =
      [ `Inspector_Runtime_ReleaseObjectGroupParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ReleaseObjectParameterType =
      [ `Inspector_Runtime_ReleaseObjectParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_RemoteObject =
      [ `Inspector_Runtime_RemoteObject ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_RemoteObjectId = string

    and inspector_Runtime_RunScriptParameterType =
      [ `Inspector_Runtime_RunScriptParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_RunScriptReturnType =
      [ `Inspector_Runtime_RunScriptReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_ScriptId = string

    and inspector_Runtime_SetCustomObjectFormatterEnabledParameterType =
      [ `Inspector_Runtime_SetCustomObjectFormatterEnabledParameterType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_StackTrace = [ `Inspector_Runtime_StackTrace ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_StackTraceId =
      [ `Inspector_Runtime_StackTraceId ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Runtime_Timestamp = int

    and inspector_Runtime_UniqueDebuggerId = string

    and inspector_Runtime_UnserializableValue = string

    and inspector_Schema_Domain = [ `Inspector_Schema_Domain ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Schema_GetDomainsReturnType =
      [ `Inspector_Schema_GetDomainsReturnType ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and inspector_Session = [ `Inspector_Session ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Inspector : sig
  module InspectorNotification : sig
    type 'T t = 'T inspector_InspectorNotification

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_method : 'T t -> string [@@js.get "method"]

    val set_method : 'T t -> string -> unit [@@js.set "method"]

    val get_params : 'T t -> 'T [@@js.get "params"]

    val set_params : 'T t -> 'T -> unit [@@js.set "params"]
  end
  [@@js.scope "InspectorNotification"]

  module Schema : sig
    module Domain : sig
      type t = inspector_Schema_Domain

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_version : t -> string [@@js.get "version"]

      val set_version : t -> string -> unit [@@js.set "version"]
    end
    [@@js.scope "Domain"]

    module GetDomainsReturnType : sig
      type t = inspector_Schema_GetDomainsReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_domains : t -> inspector_Schema_Domain list [@@js.get "domains"]

      val set_domains : t -> inspector_Schema_Domain list -> unit
        [@@js.set "domains"]
    end
    [@@js.scope "GetDomainsReturnType"]
  end
  [@@js.scope "Schema"]

  module Runtime : sig
    module ScriptId : sig
      type t = inspector_Runtime_ScriptId

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module RemoteObjectId : sig
      type t = inspector_Runtime_RemoteObjectId

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module UnserializableValue : sig
      type t = inspector_Runtime_UnserializableValue

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module RemoteObject : sig
      type t = inspector_Runtime_RemoteObject

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_subtype : t -> string [@@js.get "subtype"]

      val set_subtype : t -> string -> unit [@@js.set "subtype"]

      val get_className : t -> string [@@js.get "className"]

      val set_className : t -> string -> unit [@@js.set "className"]

      val get_value : t -> any [@@js.get "value"]

      val set_value : t -> any -> unit [@@js.set "value"]

      val get_unserializableValue : t -> inspector_Runtime_UnserializableValue
        [@@js.get "unserializableValue"]

      val set_unserializableValue
        :  t
        -> inspector_Runtime_UnserializableValue
        -> unit
        [@@js.set "unserializableValue"]

      val get_description : t -> string [@@js.get "description"]

      val set_description : t -> string -> unit [@@js.set "description"]

      val get_objectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "objectId"]

      val set_objectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "objectId"]

      val get_preview : t -> inspector_Runtime_ObjectPreview
        [@@js.get "preview"]

      val set_preview : t -> inspector_Runtime_ObjectPreview -> unit
        [@@js.set "preview"]

      val get_customPreview : t -> inspector_Runtime_CustomPreview
        [@@js.get "customPreview"]

      val set_customPreview : t -> inspector_Runtime_CustomPreview -> unit
        [@@js.set "customPreview"]
    end
    [@@js.scope "RemoteObject"]

    module CustomPreview : sig
      type t = inspector_Runtime_CustomPreview

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_header : t -> string [@@js.get "header"]

      val set_header : t -> string -> unit [@@js.set "header"]

      val get_hasBody : t -> bool [@@js.get "hasBody"]

      val set_hasBody : t -> bool -> unit [@@js.set "hasBody"]

      val get_formatterObjectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "formatterObjectId"]

      val set_formatterObjectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "formatterObjectId"]

      val get_bindRemoteObjectFunctionId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "bindRemoteObjectFunctionId"]

      val set_bindRemoteObjectFunctionId
        :  t
        -> inspector_Runtime_RemoteObjectId
        -> unit
        [@@js.set "bindRemoteObjectFunctionId"]

      val get_configObjectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "configObjectId"]

      val set_configObjectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "configObjectId"]
    end
    [@@js.scope "CustomPreview"]

    module ObjectPreview : sig
      type t = inspector_Runtime_ObjectPreview

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_subtype : t -> string [@@js.get "subtype"]

      val set_subtype : t -> string -> unit [@@js.set "subtype"]

      val get_description : t -> string [@@js.get "description"]

      val set_description : t -> string -> unit [@@js.set "description"]

      val get_overflow : t -> bool [@@js.get "overflow"]

      val set_overflow : t -> bool -> unit [@@js.set "overflow"]

      val get_properties : t -> inspector_Runtime_PropertyPreview list
        [@@js.get "properties"]

      val set_properties : t -> inspector_Runtime_PropertyPreview list -> unit
        [@@js.set "properties"]

      val get_entries : t -> inspector_Runtime_EntryPreview list
        [@@js.get "entries"]

      val set_entries : t -> inspector_Runtime_EntryPreview list -> unit
        [@@js.set "entries"]
    end
    [@@js.scope "ObjectPreview"]

    module PropertyPreview : sig
      type t = inspector_Runtime_PropertyPreview

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_value : t -> string [@@js.get "value"]

      val set_value : t -> string -> unit [@@js.set "value"]

      val get_valuePreview : t -> inspector_Runtime_ObjectPreview
        [@@js.get "valuePreview"]

      val set_valuePreview : t -> inspector_Runtime_ObjectPreview -> unit
        [@@js.set "valuePreview"]

      val get_subtype : t -> string [@@js.get "subtype"]

      val set_subtype : t -> string -> unit [@@js.set "subtype"]
    end
    [@@js.scope "PropertyPreview"]

    module EntryPreview : sig
      type t = inspector_Runtime_EntryPreview

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_key : t -> inspector_Runtime_ObjectPreview [@@js.get "key"]

      val set_key : t -> inspector_Runtime_ObjectPreview -> unit
        [@@js.set "key"]

      val get_value : t -> inspector_Runtime_ObjectPreview [@@js.get "value"]

      val set_value : t -> inspector_Runtime_ObjectPreview -> unit
        [@@js.set "value"]
    end
    [@@js.scope "EntryPreview"]

    module PropertyDescriptor : sig
      type t = inspector_Runtime_PropertyDescriptor

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_value : t -> inspector_Runtime_RemoteObject [@@js.get "value"]

      val set_value : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "value"]

      val get_writable : t -> bool [@@js.get "writable"]

      val set_writable : t -> bool -> unit [@@js.set "writable"]

      val get_get : t -> inspector_Runtime_RemoteObject [@@js.get "get"]

      val set_get : t -> inspector_Runtime_RemoteObject -> unit [@@js.set "get"]

      val get_set : t -> inspector_Runtime_RemoteObject [@@js.get "set"]

      val set_set : t -> inspector_Runtime_RemoteObject -> unit [@@js.set "set"]

      val get_configurable : t -> bool [@@js.get "configurable"]

      val set_configurable : t -> bool -> unit [@@js.set "configurable"]

      val get_enumerable : t -> bool [@@js.get "enumerable"]

      val set_enumerable : t -> bool -> unit [@@js.set "enumerable"]

      val get_wasThrown : t -> bool [@@js.get "wasThrown"]

      val set_wasThrown : t -> bool -> unit [@@js.set "wasThrown"]

      val get_isOwn : t -> bool [@@js.get "isOwn"]

      val set_isOwn : t -> bool -> unit [@@js.set "isOwn"]

      val get_symbol : t -> inspector_Runtime_RemoteObject [@@js.get "symbol"]

      val set_symbol : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "symbol"]
    end
    [@@js.scope "PropertyDescriptor"]

    module InternalPropertyDescriptor : sig
      type t = inspector_Runtime_InternalPropertyDescriptor

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_value : t -> inspector_Runtime_RemoteObject [@@js.get "value"]

      val set_value : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "value"]
    end
    [@@js.scope "InternalPropertyDescriptor"]

    module CallArgument : sig
      type t = inspector_Runtime_CallArgument

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_value : t -> any [@@js.get "value"]

      val set_value : t -> any -> unit [@@js.set "value"]

      val get_unserializableValue : t -> inspector_Runtime_UnserializableValue
        [@@js.get "unserializableValue"]

      val set_unserializableValue
        :  t
        -> inspector_Runtime_UnserializableValue
        -> unit
        [@@js.set "unserializableValue"]

      val get_objectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "objectId"]

      val set_objectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "objectId"]
    end
    [@@js.scope "CallArgument"]

    module ExecutionContextId : sig
      type t = inspector_Runtime_ExecutionContextId

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ExecutionContextDescription : sig
      type t = inspector_Runtime_ExecutionContextDescription

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> inspector_Runtime_ExecutionContextId [@@js.get "id"]

      val set_id : t -> inspector_Runtime_ExecutionContextId -> unit
        [@@js.set "id"]

      val get_origin : t -> string [@@js.get "origin"]

      val set_origin : t -> string -> unit [@@js.set "origin"]

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_auxData : t -> anonymous_interface_0 [@@js.get "auxData"]

      val set_auxData : t -> anonymous_interface_0 -> unit [@@js.set "auxData"]
    end
    [@@js.scope "ExecutionContextDescription"]

    module ExceptionDetails : sig
      type t = inspector_Runtime_ExceptionDetails

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_exceptionId : t -> int [@@js.get "exceptionId"]

      val set_exceptionId : t -> int -> unit [@@js.set "exceptionId"]

      val get_text : t -> string [@@js.get "text"]

      val set_text : t -> string -> unit [@@js.set "text"]

      val get_lineNumber : t -> int [@@js.get "lineNumber"]

      val set_lineNumber : t -> int -> unit [@@js.set "lineNumber"]

      val get_columnNumber : t -> int [@@js.get "columnNumber"]

      val set_columnNumber : t -> int -> unit [@@js.set "columnNumber"]

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_stackTrace : t -> inspector_Runtime_StackTrace
        [@@js.get "stackTrace"]

      val set_stackTrace : t -> inspector_Runtime_StackTrace -> unit
        [@@js.set "stackTrace"]

      val get_exception : t -> inspector_Runtime_RemoteObject
        [@@js.get "exception"]

      val set_exception : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "exception"]

      val get_executionContextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "executionContextId"]

      val set_executionContextId
        :  t
        -> inspector_Runtime_ExecutionContextId
        -> unit
        [@@js.set "executionContextId"]
    end
    [@@js.scope "ExceptionDetails"]

    module Timestamp : sig
      type t = inspector_Runtime_Timestamp

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module CallFrame : sig
      type t = inspector_Runtime_CallFrame

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_functionName : t -> string [@@js.get "functionName"]

      val set_functionName : t -> string -> unit [@@js.set "functionName"]

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_lineNumber : t -> int [@@js.get "lineNumber"]

      val set_lineNumber : t -> int -> unit [@@js.set "lineNumber"]

      val get_columnNumber : t -> int [@@js.get "columnNumber"]

      val set_columnNumber : t -> int -> unit [@@js.set "columnNumber"]
    end
    [@@js.scope "CallFrame"]

    module StackTrace : sig
      type t = inspector_Runtime_StackTrace

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_description : t -> string [@@js.get "description"]

      val set_description : t -> string -> unit [@@js.set "description"]

      val get_callFrames : t -> inspector_Runtime_CallFrame list
        [@@js.get "callFrames"]

      val set_callFrames : t -> inspector_Runtime_CallFrame list -> unit
        [@@js.set "callFrames"]

      val get_parent : t -> t [@@js.get "parent"]

      val set_parent : t -> t -> unit [@@js.set "parent"]

      val get_parentId : t -> inspector_Runtime_StackTraceId
        [@@js.get "parentId"]

      val set_parentId : t -> inspector_Runtime_StackTraceId -> unit
        [@@js.set "parentId"]
    end
    [@@js.scope "StackTrace"]

    module UniqueDebuggerId : sig
      type t = inspector_Runtime_UniqueDebuggerId

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module StackTraceId : sig
      type t = inspector_Runtime_StackTraceId

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> string [@@js.get "id"]

      val set_id : t -> string -> unit [@@js.set "id"]

      val get_debuggerId : t -> inspector_Runtime_UniqueDebuggerId
        [@@js.get "debuggerId"]

      val set_debuggerId : t -> inspector_Runtime_UniqueDebuggerId -> unit
        [@@js.set "debuggerId"]
    end
    [@@js.scope "StackTraceId"]

    module EvaluateParameterType : sig
      type t = inspector_Runtime_EvaluateParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_expression : t -> string [@@js.get "expression"]

      val set_expression : t -> string -> unit [@@js.set "expression"]

      val get_objectGroup : t -> string [@@js.get "objectGroup"]

      val set_objectGroup : t -> string -> unit [@@js.set "objectGroup"]

      val get_includeCommandLineAPI : t -> bool
        [@@js.get "includeCommandLineAPI"]

      val set_includeCommandLineAPI : t -> bool -> unit
        [@@js.set "includeCommandLineAPI"]

      val get_silent : t -> bool [@@js.get "silent"]

      val set_silent : t -> bool -> unit [@@js.set "silent"]

      val get_contextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "contextId"]

      val set_contextId : t -> inspector_Runtime_ExecutionContextId -> unit
        [@@js.set "contextId"]

      val get_returnByValue : t -> bool [@@js.get "returnByValue"]

      val set_returnByValue : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generatePreview : t -> bool [@@js.get "generatePreview"]

      val set_generatePreview : t -> bool -> unit [@@js.set "generatePreview"]

      val get_userGesture : t -> bool [@@js.get "userGesture"]

      val set_userGesture : t -> bool -> unit [@@js.set "userGesture"]

      val get_awaitPromise : t -> bool [@@js.get "awaitPromise"]

      val set_awaitPromise : t -> bool -> unit [@@js.set "awaitPromise"]
    end
    [@@js.scope "EvaluateParameterType"]

    module AwaitPromiseParameterType : sig
      type t = inspector_Runtime_AwaitPromiseParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_promiseObjectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "promiseObjectId"]

      val set_promiseObjectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "promiseObjectId"]

      val get_returnByValue : t -> bool [@@js.get "returnByValue"]

      val set_returnByValue : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generatePreview : t -> bool [@@js.get "generatePreview"]

      val set_generatePreview : t -> bool -> unit [@@js.set "generatePreview"]
    end
    [@@js.scope "AwaitPromiseParameterType"]

    module CallFunctionOnParameterType : sig
      type t = inspector_Runtime_CallFunctionOnParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_functionDeclaration : t -> string [@@js.get "functionDeclaration"]

      val set_functionDeclaration : t -> string -> unit
        [@@js.set "functionDeclaration"]

      val get_objectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "objectId"]

      val set_objectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "objectId"]

      val get_arguments : t -> inspector_Runtime_CallArgument list
        [@@js.get "arguments"]

      val set_arguments : t -> inspector_Runtime_CallArgument list -> unit
        [@@js.set "arguments"]

      val get_silent : t -> bool [@@js.get "silent"]

      val set_silent : t -> bool -> unit [@@js.set "silent"]

      val get_returnByValue : t -> bool [@@js.get "returnByValue"]

      val set_returnByValue : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generatePreview : t -> bool [@@js.get "generatePreview"]

      val set_generatePreview : t -> bool -> unit [@@js.set "generatePreview"]

      val get_userGesture : t -> bool [@@js.get "userGesture"]

      val set_userGesture : t -> bool -> unit [@@js.set "userGesture"]

      val get_awaitPromise : t -> bool [@@js.get "awaitPromise"]

      val set_awaitPromise : t -> bool -> unit [@@js.set "awaitPromise"]

      val get_executionContextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "executionContextId"]

      val set_executionContextId
        :  t
        -> inspector_Runtime_ExecutionContextId
        -> unit
        [@@js.set "executionContextId"]

      val get_objectGroup : t -> string [@@js.get "objectGroup"]

      val set_objectGroup : t -> string -> unit [@@js.set "objectGroup"]
    end
    [@@js.scope "CallFunctionOnParameterType"]

    module GetPropertiesParameterType : sig
      type t = inspector_Runtime_GetPropertiesParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_objectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "objectId"]

      val set_objectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "objectId"]

      val get_ownProperties : t -> bool [@@js.get "ownProperties"]

      val set_ownProperties : t -> bool -> unit [@@js.set "ownProperties"]

      val get_accessorPropertiesOnly : t -> bool
        [@@js.get "accessorPropertiesOnly"]

      val set_accessorPropertiesOnly : t -> bool -> unit
        [@@js.set "accessorPropertiesOnly"]

      val get_generatePreview : t -> bool [@@js.get "generatePreview"]

      val set_generatePreview : t -> bool -> unit [@@js.set "generatePreview"]
    end
    [@@js.scope "GetPropertiesParameterType"]

    module ReleaseObjectParameterType : sig
      type t = inspector_Runtime_ReleaseObjectParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_objectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "objectId"]

      val set_objectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "objectId"]
    end
    [@@js.scope "ReleaseObjectParameterType"]

    module ReleaseObjectGroupParameterType : sig
      type t = inspector_Runtime_ReleaseObjectGroupParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_objectGroup : t -> string [@@js.get "objectGroup"]

      val set_objectGroup : t -> string -> unit [@@js.set "objectGroup"]
    end
    [@@js.scope "ReleaseObjectGroupParameterType"]

    module SetCustomObjectFormatterEnabledParameterType : sig
      type t = inspector_Runtime_SetCustomObjectFormatterEnabledParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_enabled : t -> bool [@@js.get "enabled"]

      val set_enabled : t -> bool -> unit [@@js.set "enabled"]
    end
    [@@js.scope "SetCustomObjectFormatterEnabledParameterType"]

    module CompileScriptParameterType : sig
      type t = inspector_Runtime_CompileScriptParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_expression : t -> string [@@js.get "expression"]

      val set_expression : t -> string -> unit [@@js.set "expression"]

      val get_sourceURL : t -> string [@@js.get "sourceURL"]

      val set_sourceURL : t -> string -> unit [@@js.set "sourceURL"]

      val get_persistScript : t -> bool [@@js.get "persistScript"]

      val set_persistScript : t -> bool -> unit [@@js.set "persistScript"]

      val get_executionContextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "executionContextId"]

      val set_executionContextId
        :  t
        -> inspector_Runtime_ExecutionContextId
        -> unit
        [@@js.set "executionContextId"]
    end
    [@@js.scope "CompileScriptParameterType"]

    module RunScriptParameterType : sig
      type t = inspector_Runtime_RunScriptParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_executionContextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "executionContextId"]

      val set_executionContextId
        :  t
        -> inspector_Runtime_ExecutionContextId
        -> unit
        [@@js.set "executionContextId"]

      val get_objectGroup : t -> string [@@js.get "objectGroup"]

      val set_objectGroup : t -> string -> unit [@@js.set "objectGroup"]

      val get_silent : t -> bool [@@js.get "silent"]

      val set_silent : t -> bool -> unit [@@js.set "silent"]

      val get_includeCommandLineAPI : t -> bool
        [@@js.get "includeCommandLineAPI"]

      val set_includeCommandLineAPI : t -> bool -> unit
        [@@js.set "includeCommandLineAPI"]

      val get_returnByValue : t -> bool [@@js.get "returnByValue"]

      val set_returnByValue : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generatePreview : t -> bool [@@js.get "generatePreview"]

      val set_generatePreview : t -> bool -> unit [@@js.set "generatePreview"]

      val get_awaitPromise : t -> bool [@@js.get "awaitPromise"]

      val set_awaitPromise : t -> bool -> unit [@@js.set "awaitPromise"]
    end
    [@@js.scope "RunScriptParameterType"]

    module QueryObjectsParameterType : sig
      type t = inspector_Runtime_QueryObjectsParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_prototypeObjectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "prototypeObjectId"]

      val set_prototypeObjectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "prototypeObjectId"]
    end
    [@@js.scope "QueryObjectsParameterType"]

    module GlobalLexicalScopeNamesParameterType : sig
      type t = inspector_Runtime_GlobalLexicalScopeNamesParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_executionContextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "executionContextId"]

      val set_executionContextId
        :  t
        -> inspector_Runtime_ExecutionContextId
        -> unit
        [@@js.set "executionContextId"]
    end
    [@@js.scope "GlobalLexicalScopeNamesParameterType"]

    module EvaluateReturnType : sig
      type t = inspector_Runtime_EvaluateReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Runtime_RemoteObject [@@js.get "result"]

      val set_result : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "result"]

      val get_exceptionDetails : t -> inspector_Runtime_ExceptionDetails
        [@@js.get "exceptionDetails"]

      val set_exceptionDetails : t -> inspector_Runtime_ExceptionDetails -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "EvaluateReturnType"]

    module AwaitPromiseReturnType : sig
      type t = inspector_Runtime_AwaitPromiseReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Runtime_RemoteObject [@@js.get "result"]

      val set_result : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "result"]

      val get_exceptionDetails : t -> inspector_Runtime_ExceptionDetails
        [@@js.get "exceptionDetails"]

      val set_exceptionDetails : t -> inspector_Runtime_ExceptionDetails -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "AwaitPromiseReturnType"]

    module CallFunctionOnReturnType : sig
      type t = inspector_Runtime_CallFunctionOnReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Runtime_RemoteObject [@@js.get "result"]

      val set_result : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "result"]

      val get_exceptionDetails : t -> inspector_Runtime_ExceptionDetails
        [@@js.get "exceptionDetails"]

      val set_exceptionDetails : t -> inspector_Runtime_ExceptionDetails -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "CallFunctionOnReturnType"]

    module GetPropertiesReturnType : sig
      type t = inspector_Runtime_GetPropertiesReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Runtime_PropertyDescriptor list
        [@@js.get "result"]

      val set_result : t -> inspector_Runtime_PropertyDescriptor list -> unit
        [@@js.set "result"]

      val get_internalProperties
        :  t
        -> inspector_Runtime_InternalPropertyDescriptor list
        [@@js.get "internalProperties"]

      val set_internalProperties
        :  t
        -> inspector_Runtime_InternalPropertyDescriptor list
        -> unit
        [@@js.set "internalProperties"]

      val get_exceptionDetails : t -> inspector_Runtime_ExceptionDetails
        [@@js.get "exceptionDetails"]

      val set_exceptionDetails : t -> inspector_Runtime_ExceptionDetails -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "GetPropertiesReturnType"]

    module CompileScriptReturnType : sig
      type t = inspector_Runtime_CompileScriptReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_exceptionDetails : t -> inspector_Runtime_ExceptionDetails
        [@@js.get "exceptionDetails"]

      val set_exceptionDetails : t -> inspector_Runtime_ExceptionDetails -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "CompileScriptReturnType"]

    module RunScriptReturnType : sig
      type t = inspector_Runtime_RunScriptReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Runtime_RemoteObject [@@js.get "result"]

      val set_result : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "result"]

      val get_exceptionDetails : t -> inspector_Runtime_ExceptionDetails
        [@@js.get "exceptionDetails"]

      val set_exceptionDetails : t -> inspector_Runtime_ExceptionDetails -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "RunScriptReturnType"]

    module QueryObjectsReturnType : sig
      type t = inspector_Runtime_QueryObjectsReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_objects : t -> inspector_Runtime_RemoteObject [@@js.get "objects"]

      val set_objects : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "objects"]
    end
    [@@js.scope "QueryObjectsReturnType"]

    module GlobalLexicalScopeNamesReturnType : sig
      type t = inspector_Runtime_GlobalLexicalScopeNamesReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_names : t -> string list [@@js.get "names"]

      val set_names : t -> string list -> unit [@@js.set "names"]
    end
    [@@js.scope "GlobalLexicalScopeNamesReturnType"]

    module ExecutionContextCreatedEventDataType : sig
      type t = inspector_Runtime_ExecutionContextCreatedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_context : t -> inspector_Runtime_ExecutionContextDescription
        [@@js.get "context"]

      val set_context
        :  t
        -> inspector_Runtime_ExecutionContextDescription
        -> unit
        [@@js.set "context"]
    end
    [@@js.scope "ExecutionContextCreatedEventDataType"]

    module ExecutionContextDestroyedEventDataType : sig
      type t = inspector_Runtime_ExecutionContextDestroyedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_executionContextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "executionContextId"]

      val set_executionContextId
        :  t
        -> inspector_Runtime_ExecutionContextId
        -> unit
        [@@js.set "executionContextId"]
    end
    [@@js.scope "ExecutionContextDestroyedEventDataType"]

    module ExceptionThrownEventDataType : sig
      type t = inspector_Runtime_ExceptionThrownEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_timestamp : t -> inspector_Runtime_Timestamp
        [@@js.get "timestamp"]

      val set_timestamp : t -> inspector_Runtime_Timestamp -> unit
        [@@js.set "timestamp"]

      val get_exceptionDetails : t -> inspector_Runtime_ExceptionDetails
        [@@js.get "exceptionDetails"]

      val set_exceptionDetails : t -> inspector_Runtime_ExceptionDetails -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "ExceptionThrownEventDataType"]

    module ExceptionRevokedEventDataType : sig
      type t = inspector_Runtime_ExceptionRevokedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_reason : t -> string [@@js.get "reason"]

      val set_reason : t -> string -> unit [@@js.set "reason"]

      val get_exceptionId : t -> int [@@js.get "exceptionId"]

      val set_exceptionId : t -> int -> unit [@@js.set "exceptionId"]
    end
    [@@js.scope "ExceptionRevokedEventDataType"]

    module ConsoleAPICalledEventDataType : sig
      type t = inspector_Runtime_ConsoleAPICalledEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_args : t -> inspector_Runtime_RemoteObject list [@@js.get "args"]

      val set_args : t -> inspector_Runtime_RemoteObject list -> unit
        [@@js.set "args"]

      val get_executionContextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "executionContextId"]

      val set_executionContextId
        :  t
        -> inspector_Runtime_ExecutionContextId
        -> unit
        [@@js.set "executionContextId"]

      val get_timestamp : t -> inspector_Runtime_Timestamp
        [@@js.get "timestamp"]

      val set_timestamp : t -> inspector_Runtime_Timestamp -> unit
        [@@js.set "timestamp"]

      val get_stackTrace : t -> inspector_Runtime_StackTrace
        [@@js.get "stackTrace"]

      val set_stackTrace : t -> inspector_Runtime_StackTrace -> unit
        [@@js.set "stackTrace"]

      val get_context : t -> string [@@js.get "context"]

      val set_context : t -> string -> unit [@@js.set "context"]
    end
    [@@js.scope "ConsoleAPICalledEventDataType"]

    module InspectRequestedEventDataType : sig
      type t = inspector_Runtime_InspectRequestedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_object : t -> inspector_Runtime_RemoteObject [@@js.get "object"]

      val set_object : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "object"]

      val get_hints : t -> anonymous_interface_0 [@@js.get "hints"]

      val set_hints : t -> anonymous_interface_0 -> unit [@@js.set "hints"]
    end
    [@@js.scope "InspectRequestedEventDataType"]
  end
  [@@js.scope "Runtime"]

  module Debugger : sig
    module BreakpointId : sig
      type t = inspector_Debugger_BreakpointId

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module CallFrameId : sig
      type t = inspector_Debugger_CallFrameId

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module Location : sig
      type t = inspector_Debugger_Location

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_lineNumber : t -> int [@@js.get "lineNumber"]

      val set_lineNumber : t -> int -> unit [@@js.set "lineNumber"]

      val get_columnNumber : t -> int [@@js.get "columnNumber"]

      val set_columnNumber : t -> int -> unit [@@js.set "columnNumber"]
    end
    [@@js.scope "Location"]

    module ScriptPosition : sig
      type t = inspector_Debugger_ScriptPosition

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_lineNumber : t -> int [@@js.get "lineNumber"]

      val set_lineNumber : t -> int -> unit [@@js.set "lineNumber"]

      val get_columnNumber : t -> int [@@js.get "columnNumber"]

      val set_columnNumber : t -> int -> unit [@@js.set "columnNumber"]
    end
    [@@js.scope "ScriptPosition"]

    module CallFrame : sig
      type t = inspector_Debugger_CallFrame

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_callFrameId : t -> inspector_Debugger_CallFrameId
        [@@js.get "callFrameId"]

      val set_callFrameId : t -> inspector_Debugger_CallFrameId -> unit
        [@@js.set "callFrameId"]

      val get_functionName : t -> string [@@js.get "functionName"]

      val set_functionName : t -> string -> unit [@@js.set "functionName"]

      val get_functionLocation : t -> inspector_Debugger_Location
        [@@js.get "functionLocation"]

      val set_functionLocation : t -> inspector_Debugger_Location -> unit
        [@@js.set "functionLocation"]

      val get_location : t -> inspector_Debugger_Location [@@js.get "location"]

      val set_location : t -> inspector_Debugger_Location -> unit
        [@@js.set "location"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_scopeChain : t -> inspector_Debugger_Scope list
        [@@js.get "scopeChain"]

      val set_scopeChain : t -> inspector_Debugger_Scope list -> unit
        [@@js.set "scopeChain"]

      val get_this : t -> inspector_Runtime_RemoteObject [@@js.get "this"]

      val set_this : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "this"]

      val get_returnValue : t -> inspector_Runtime_RemoteObject
        [@@js.get "returnValue"]

      val set_returnValue : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "returnValue"]
    end
    [@@js.scope "CallFrame"]

    module Scope : sig
      type t = inspector_Debugger_Scope

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_object : t -> inspector_Runtime_RemoteObject [@@js.get "object"]

      val set_object : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "object"]

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_startLocation : t -> inspector_Debugger_Location
        [@@js.get "startLocation"]

      val set_startLocation : t -> inspector_Debugger_Location -> unit
        [@@js.set "startLocation"]

      val get_endLocation : t -> inspector_Debugger_Location
        [@@js.get "endLocation"]

      val set_endLocation : t -> inspector_Debugger_Location -> unit
        [@@js.set "endLocation"]
    end
    [@@js.scope "Scope"]

    module SearchMatch : sig
      type t = inspector_Debugger_SearchMatch

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_lineNumber : t -> int [@@js.get "lineNumber"]

      val set_lineNumber : t -> int -> unit [@@js.set "lineNumber"]

      val get_lineContent : t -> string [@@js.get "lineContent"]

      val set_lineContent : t -> string -> unit [@@js.set "lineContent"]
    end
    [@@js.scope "SearchMatch"]

    module BreakLocation : sig
      type t = inspector_Debugger_BreakLocation

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_lineNumber : t -> int [@@js.get "lineNumber"]

      val set_lineNumber : t -> int -> unit [@@js.set "lineNumber"]

      val get_columnNumber : t -> int [@@js.get "columnNumber"]

      val set_columnNumber : t -> int -> unit [@@js.set "columnNumber"]

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]
    end
    [@@js.scope "BreakLocation"]

    module SetBreakpointsActiveParameterType : sig
      type t = inspector_Debugger_SetBreakpointsActiveParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_active : t -> bool [@@js.get "active"]

      val set_active : t -> bool -> unit [@@js.set "active"]
    end
    [@@js.scope "SetBreakpointsActiveParameterType"]

    module SetSkipAllPausesParameterType : sig
      type t = inspector_Debugger_SetSkipAllPausesParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_skip : t -> bool [@@js.get "skip"]

      val set_skip : t -> bool -> unit [@@js.set "skip"]
    end
    [@@js.scope "SetSkipAllPausesParameterType"]

    module SetBreakpointByUrlParameterType : sig
      type t = inspector_Debugger_SetBreakpointByUrlParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_lineNumber : t -> int [@@js.get "lineNumber"]

      val set_lineNumber : t -> int -> unit [@@js.set "lineNumber"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_urlRegex : t -> string [@@js.get "urlRegex"]

      val set_urlRegex : t -> string -> unit [@@js.set "urlRegex"]

      val get_scriptHash : t -> string [@@js.get "scriptHash"]

      val set_scriptHash : t -> string -> unit [@@js.set "scriptHash"]

      val get_columnNumber : t -> int [@@js.get "columnNumber"]

      val set_columnNumber : t -> int -> unit [@@js.set "columnNumber"]

      val get_condition : t -> string [@@js.get "condition"]

      val set_condition : t -> string -> unit [@@js.set "condition"]
    end
    [@@js.scope "SetBreakpointByUrlParameterType"]

    module SetBreakpointParameterType : sig
      type t = inspector_Debugger_SetBreakpointParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_location : t -> inspector_Debugger_Location [@@js.get "location"]

      val set_location : t -> inspector_Debugger_Location -> unit
        [@@js.set "location"]

      val get_condition : t -> string [@@js.get "condition"]

      val set_condition : t -> string -> unit [@@js.set "condition"]
    end
    [@@js.scope "SetBreakpointParameterType"]

    module RemoveBreakpointParameterType : sig
      type t = inspector_Debugger_RemoveBreakpointParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_breakpointId : t -> inspector_Debugger_BreakpointId
        [@@js.get "breakpointId"]

      val set_breakpointId : t -> inspector_Debugger_BreakpointId -> unit
        [@@js.set "breakpointId"]
    end
    [@@js.scope "RemoveBreakpointParameterType"]

    module GetPossibleBreakpointsParameterType : sig
      type t = inspector_Debugger_GetPossibleBreakpointsParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_start : t -> inspector_Debugger_Location [@@js.get "start"]

      val set_start : t -> inspector_Debugger_Location -> unit
        [@@js.set "start"]

      val get_end : t -> inspector_Debugger_Location [@@js.get "end"]

      val set_end : t -> inspector_Debugger_Location -> unit [@@js.set "end"]

      val get_restrictToFunction : t -> bool [@@js.get "restrictToFunction"]

      val set_restrictToFunction : t -> bool -> unit
        [@@js.set "restrictToFunction"]
    end
    [@@js.scope "GetPossibleBreakpointsParameterType"]

    module ContinueToLocationParameterType : sig
      type t = inspector_Debugger_ContinueToLocationParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_location : t -> inspector_Debugger_Location [@@js.get "location"]

      val set_location : t -> inspector_Debugger_Location -> unit
        [@@js.set "location"]

      val get_targetCallFrames : t -> string [@@js.get "targetCallFrames"]

      val set_targetCallFrames : t -> string -> unit
        [@@js.set "targetCallFrames"]
    end
    [@@js.scope "ContinueToLocationParameterType"]

    module PauseOnAsyncCallParameterType : sig
      type t = inspector_Debugger_PauseOnAsyncCallParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_parentStackTraceId : t -> inspector_Runtime_StackTraceId
        [@@js.get "parentStackTraceId"]

      val set_parentStackTraceId : t -> inspector_Runtime_StackTraceId -> unit
        [@@js.set "parentStackTraceId"]
    end
    [@@js.scope "PauseOnAsyncCallParameterType"]

    module StepIntoParameterType : sig
      type t = inspector_Debugger_StepIntoParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_breakOnAsyncCall : t -> bool [@@js.get "breakOnAsyncCall"]

      val set_breakOnAsyncCall : t -> bool -> unit [@@js.set "breakOnAsyncCall"]
    end
    [@@js.scope "StepIntoParameterType"]

    module GetStackTraceParameterType : sig
      type t = inspector_Debugger_GetStackTraceParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_stackTraceId : t -> inspector_Runtime_StackTraceId
        [@@js.get "stackTraceId"]

      val set_stackTraceId : t -> inspector_Runtime_StackTraceId -> unit
        [@@js.set "stackTraceId"]
    end
    [@@js.scope "GetStackTraceParameterType"]

    module SearchInContentParameterType : sig
      type t = inspector_Debugger_SearchInContentParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_query : t -> string [@@js.get "query"]

      val set_query : t -> string -> unit [@@js.set "query"]

      val get_caseSensitive : t -> bool [@@js.get "caseSensitive"]

      val set_caseSensitive : t -> bool -> unit [@@js.set "caseSensitive"]

      val get_isRegex : t -> bool [@@js.get "isRegex"]

      val set_isRegex : t -> bool -> unit [@@js.set "isRegex"]
    end
    [@@js.scope "SearchInContentParameterType"]

    module SetScriptSourceParameterType : sig
      type t = inspector_Debugger_SetScriptSourceParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_scriptSource : t -> string [@@js.get "scriptSource"]

      val set_scriptSource : t -> string -> unit [@@js.set "scriptSource"]

      val get_dryRun : t -> bool [@@js.get "dryRun"]

      val set_dryRun : t -> bool -> unit [@@js.set "dryRun"]
    end
    [@@js.scope "SetScriptSourceParameterType"]

    module RestartFrameParameterType : sig
      type t = inspector_Debugger_RestartFrameParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_callFrameId : t -> inspector_Debugger_CallFrameId
        [@@js.get "callFrameId"]

      val set_callFrameId : t -> inspector_Debugger_CallFrameId -> unit
        [@@js.set "callFrameId"]
    end
    [@@js.scope "RestartFrameParameterType"]

    module GetScriptSourceParameterType : sig
      type t = inspector_Debugger_GetScriptSourceParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]
    end
    [@@js.scope "GetScriptSourceParameterType"]

    module SetPauseOnExceptionsParameterType : sig
      type t = inspector_Debugger_SetPauseOnExceptionsParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_state : t -> string [@@js.get "state"]

      val set_state : t -> string -> unit [@@js.set "state"]
    end
    [@@js.scope "SetPauseOnExceptionsParameterType"]

    module EvaluateOnCallFrameParameterType : sig
      type t = inspector_Debugger_EvaluateOnCallFrameParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_callFrameId : t -> inspector_Debugger_CallFrameId
        [@@js.get "callFrameId"]

      val set_callFrameId : t -> inspector_Debugger_CallFrameId -> unit
        [@@js.set "callFrameId"]

      val get_expression : t -> string [@@js.get "expression"]

      val set_expression : t -> string -> unit [@@js.set "expression"]

      val get_objectGroup : t -> string [@@js.get "objectGroup"]

      val set_objectGroup : t -> string -> unit [@@js.set "objectGroup"]

      val get_includeCommandLineAPI : t -> bool
        [@@js.get "includeCommandLineAPI"]

      val set_includeCommandLineAPI : t -> bool -> unit
        [@@js.set "includeCommandLineAPI"]

      val get_silent : t -> bool [@@js.get "silent"]

      val set_silent : t -> bool -> unit [@@js.set "silent"]

      val get_returnByValue : t -> bool [@@js.get "returnByValue"]

      val set_returnByValue : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generatePreview : t -> bool [@@js.get "generatePreview"]

      val set_generatePreview : t -> bool -> unit [@@js.set "generatePreview"]

      val get_throwOnSideEffect : t -> bool [@@js.get "throwOnSideEffect"]

      val set_throwOnSideEffect : t -> bool -> unit
        [@@js.set "throwOnSideEffect"]
    end
    [@@js.scope "EvaluateOnCallFrameParameterType"]

    module SetVariableValueParameterType : sig
      type t = inspector_Debugger_SetVariableValueParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scopeNumber : t -> int [@@js.get "scopeNumber"]

      val set_scopeNumber : t -> int -> unit [@@js.set "scopeNumber"]

      val get_variableName : t -> string [@@js.get "variableName"]

      val set_variableName : t -> string -> unit [@@js.set "variableName"]

      val get_newValue : t -> inspector_Runtime_CallArgument
        [@@js.get "newValue"]

      val set_newValue : t -> inspector_Runtime_CallArgument -> unit
        [@@js.set "newValue"]

      val get_callFrameId : t -> inspector_Debugger_CallFrameId
        [@@js.get "callFrameId"]

      val set_callFrameId : t -> inspector_Debugger_CallFrameId -> unit
        [@@js.set "callFrameId"]
    end
    [@@js.scope "SetVariableValueParameterType"]

    module SetReturnValueParameterType : sig
      type t = inspector_Debugger_SetReturnValueParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_newValue : t -> inspector_Runtime_CallArgument
        [@@js.get "newValue"]

      val set_newValue : t -> inspector_Runtime_CallArgument -> unit
        [@@js.set "newValue"]
    end
    [@@js.scope "SetReturnValueParameterType"]

    module SetAsyncCallStackDepthParameterType : sig
      type t = inspector_Debugger_SetAsyncCallStackDepthParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_maxDepth : t -> int [@@js.get "maxDepth"]

      val set_maxDepth : t -> int -> unit [@@js.set "maxDepth"]
    end
    [@@js.scope "SetAsyncCallStackDepthParameterType"]

    module SetBlackboxPatternsParameterType : sig
      type t = inspector_Debugger_SetBlackboxPatternsParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_patterns : t -> string list [@@js.get "patterns"]

      val set_patterns : t -> string list -> unit [@@js.set "patterns"]
    end
    [@@js.scope "SetBlackboxPatternsParameterType"]

    module SetBlackboxedRangesParameterType : sig
      type t = inspector_Debugger_SetBlackboxedRangesParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_positions : t -> inspector_Debugger_ScriptPosition list
        [@@js.get "positions"]

      val set_positions : t -> inspector_Debugger_ScriptPosition list -> unit
        [@@js.set "positions"]
    end
    [@@js.scope "SetBlackboxedRangesParameterType"]

    module EnableReturnType : sig
      type t = inspector_Debugger_EnableReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_debuggerId : t -> inspector_Runtime_UniqueDebuggerId
        [@@js.get "debuggerId"]

      val set_debuggerId : t -> inspector_Runtime_UniqueDebuggerId -> unit
        [@@js.set "debuggerId"]
    end
    [@@js.scope "EnableReturnType"]

    module SetBreakpointByUrlReturnType : sig
      type t = inspector_Debugger_SetBreakpointByUrlReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_breakpointId : t -> inspector_Debugger_BreakpointId
        [@@js.get "breakpointId"]

      val set_breakpointId : t -> inspector_Debugger_BreakpointId -> unit
        [@@js.set "breakpointId"]

      val get_locations : t -> inspector_Debugger_Location list
        [@@js.get "locations"]

      val set_locations : t -> inspector_Debugger_Location list -> unit
        [@@js.set "locations"]
    end
    [@@js.scope "SetBreakpointByUrlReturnType"]

    module SetBreakpointReturnType : sig
      type t = inspector_Debugger_SetBreakpointReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_breakpointId : t -> inspector_Debugger_BreakpointId
        [@@js.get "breakpointId"]

      val set_breakpointId : t -> inspector_Debugger_BreakpointId -> unit
        [@@js.set "breakpointId"]

      val get_actualLocation : t -> inspector_Debugger_Location
        [@@js.get "actualLocation"]

      val set_actualLocation : t -> inspector_Debugger_Location -> unit
        [@@js.set "actualLocation"]
    end
    [@@js.scope "SetBreakpointReturnType"]

    module GetPossibleBreakpointsReturnType : sig
      type t = inspector_Debugger_GetPossibleBreakpointsReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_locations : t -> inspector_Debugger_BreakLocation list
        [@@js.get "locations"]

      val set_locations : t -> inspector_Debugger_BreakLocation list -> unit
        [@@js.set "locations"]
    end
    [@@js.scope "GetPossibleBreakpointsReturnType"]

    module GetStackTraceReturnType : sig
      type t = inspector_Debugger_GetStackTraceReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_stackTrace : t -> inspector_Runtime_StackTrace
        [@@js.get "stackTrace"]

      val set_stackTrace : t -> inspector_Runtime_StackTrace -> unit
        [@@js.set "stackTrace"]
    end
    [@@js.scope "GetStackTraceReturnType"]

    module SearchInContentReturnType : sig
      type t = inspector_Debugger_SearchInContentReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Debugger_SearchMatch list
        [@@js.get "result"]

      val set_result : t -> inspector_Debugger_SearchMatch list -> unit
        [@@js.set "result"]
    end
    [@@js.scope "SearchInContentReturnType"]

    module SetScriptSourceReturnType : sig
      type t = inspector_Debugger_SetScriptSourceReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_callFrames : t -> inspector_Debugger_CallFrame list
        [@@js.get "callFrames"]

      val set_callFrames : t -> inspector_Debugger_CallFrame list -> unit
        [@@js.set "callFrames"]

      val get_stackChanged : t -> bool [@@js.get "stackChanged"]

      val set_stackChanged : t -> bool -> unit [@@js.set "stackChanged"]

      val get_asyncStackTrace : t -> inspector_Runtime_StackTrace
        [@@js.get "asyncStackTrace"]

      val set_asyncStackTrace : t -> inspector_Runtime_StackTrace -> unit
        [@@js.set "asyncStackTrace"]

      val get_asyncStackTraceId : t -> inspector_Runtime_StackTraceId
        [@@js.get "asyncStackTraceId"]

      val set_asyncStackTraceId : t -> inspector_Runtime_StackTraceId -> unit
        [@@js.set "asyncStackTraceId"]

      val get_exceptionDetails : t -> inspector_Runtime_ExceptionDetails
        [@@js.get "exceptionDetails"]

      val set_exceptionDetails : t -> inspector_Runtime_ExceptionDetails -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "SetScriptSourceReturnType"]

    module RestartFrameReturnType : sig
      type t = inspector_Debugger_RestartFrameReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_callFrames : t -> inspector_Debugger_CallFrame list
        [@@js.get "callFrames"]

      val set_callFrames : t -> inspector_Debugger_CallFrame list -> unit
        [@@js.set "callFrames"]

      val get_asyncStackTrace : t -> inspector_Runtime_StackTrace
        [@@js.get "asyncStackTrace"]

      val set_asyncStackTrace : t -> inspector_Runtime_StackTrace -> unit
        [@@js.set "asyncStackTrace"]

      val get_asyncStackTraceId : t -> inspector_Runtime_StackTraceId
        [@@js.get "asyncStackTraceId"]

      val set_asyncStackTraceId : t -> inspector_Runtime_StackTraceId -> unit
        [@@js.set "asyncStackTraceId"]
    end
    [@@js.scope "RestartFrameReturnType"]

    module GetScriptSourceReturnType : sig
      type t = inspector_Debugger_GetScriptSourceReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptSource : t -> string [@@js.get "scriptSource"]

      val set_scriptSource : t -> string -> unit [@@js.set "scriptSource"]
    end
    [@@js.scope "GetScriptSourceReturnType"]

    module EvaluateOnCallFrameReturnType : sig
      type t = inspector_Debugger_EvaluateOnCallFrameReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Runtime_RemoteObject [@@js.get "result"]

      val set_result : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "result"]

      val get_exceptionDetails : t -> inspector_Runtime_ExceptionDetails
        [@@js.get "exceptionDetails"]

      val set_exceptionDetails : t -> inspector_Runtime_ExceptionDetails -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "EvaluateOnCallFrameReturnType"]

    module ScriptParsedEventDataType : sig
      type t = inspector_Debugger_ScriptParsedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_startLine : t -> int [@@js.get "startLine"]

      val set_startLine : t -> int -> unit [@@js.set "startLine"]

      val get_startColumn : t -> int [@@js.get "startColumn"]

      val set_startColumn : t -> int -> unit [@@js.set "startColumn"]

      val get_endLine : t -> int [@@js.get "endLine"]

      val set_endLine : t -> int -> unit [@@js.set "endLine"]

      val get_endColumn : t -> int [@@js.get "endColumn"]

      val set_endColumn : t -> int -> unit [@@js.set "endColumn"]

      val get_executionContextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "executionContextId"]

      val set_executionContextId
        :  t
        -> inspector_Runtime_ExecutionContextId
        -> unit
        [@@js.set "executionContextId"]

      val get_hash : t -> string [@@js.get "hash"]

      val set_hash : t -> string -> unit [@@js.set "hash"]

      val get_executionContextAuxData : t -> anonymous_interface_0
        [@@js.get "executionContextAuxData"]

      val set_executionContextAuxData : t -> anonymous_interface_0 -> unit
        [@@js.set "executionContextAuxData"]

      val get_isLiveEdit : t -> bool [@@js.get "isLiveEdit"]

      val set_isLiveEdit : t -> bool -> unit [@@js.set "isLiveEdit"]

      val get_sourceMapURL : t -> string [@@js.get "sourceMapURL"]

      val set_sourceMapURL : t -> string -> unit [@@js.set "sourceMapURL"]

      val get_hasSourceURL : t -> bool [@@js.get "hasSourceURL"]

      val set_hasSourceURL : t -> bool -> unit [@@js.set "hasSourceURL"]

      val get_isModule : t -> bool [@@js.get "isModule"]

      val set_isModule : t -> bool -> unit [@@js.set "isModule"]

      val get_length : t -> int [@@js.get "length"]

      val set_length : t -> int -> unit [@@js.set "length"]

      val get_stackTrace : t -> inspector_Runtime_StackTrace
        [@@js.get "stackTrace"]

      val set_stackTrace : t -> inspector_Runtime_StackTrace -> unit
        [@@js.set "stackTrace"]
    end
    [@@js.scope "ScriptParsedEventDataType"]

    module ScriptFailedToParseEventDataType : sig
      type t = inspector_Debugger_ScriptFailedToParseEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_startLine : t -> int [@@js.get "startLine"]

      val set_startLine : t -> int -> unit [@@js.set "startLine"]

      val get_startColumn : t -> int [@@js.get "startColumn"]

      val set_startColumn : t -> int -> unit [@@js.set "startColumn"]

      val get_endLine : t -> int [@@js.get "endLine"]

      val set_endLine : t -> int -> unit [@@js.set "endLine"]

      val get_endColumn : t -> int [@@js.get "endColumn"]

      val set_endColumn : t -> int -> unit [@@js.set "endColumn"]

      val get_executionContextId : t -> inspector_Runtime_ExecutionContextId
        [@@js.get "executionContextId"]

      val set_executionContextId
        :  t
        -> inspector_Runtime_ExecutionContextId
        -> unit
        [@@js.set "executionContextId"]

      val get_hash : t -> string [@@js.get "hash"]

      val set_hash : t -> string -> unit [@@js.set "hash"]

      val get_executionContextAuxData : t -> anonymous_interface_0
        [@@js.get "executionContextAuxData"]

      val set_executionContextAuxData : t -> anonymous_interface_0 -> unit
        [@@js.set "executionContextAuxData"]

      val get_sourceMapURL : t -> string [@@js.get "sourceMapURL"]

      val set_sourceMapURL : t -> string -> unit [@@js.set "sourceMapURL"]

      val get_hasSourceURL : t -> bool [@@js.get "hasSourceURL"]

      val set_hasSourceURL : t -> bool -> unit [@@js.set "hasSourceURL"]

      val get_isModule : t -> bool [@@js.get "isModule"]

      val set_isModule : t -> bool -> unit [@@js.set "isModule"]

      val get_length : t -> int [@@js.get "length"]

      val set_length : t -> int -> unit [@@js.set "length"]

      val get_stackTrace : t -> inspector_Runtime_StackTrace
        [@@js.get "stackTrace"]

      val set_stackTrace : t -> inspector_Runtime_StackTrace -> unit
        [@@js.set "stackTrace"]
    end
    [@@js.scope "ScriptFailedToParseEventDataType"]

    module BreakpointResolvedEventDataType : sig
      type t = inspector_Debugger_BreakpointResolvedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_breakpointId : t -> inspector_Debugger_BreakpointId
        [@@js.get "breakpointId"]

      val set_breakpointId : t -> inspector_Debugger_BreakpointId -> unit
        [@@js.set "breakpointId"]

      val get_location : t -> inspector_Debugger_Location [@@js.get "location"]

      val set_location : t -> inspector_Debugger_Location -> unit
        [@@js.set "location"]
    end
    [@@js.scope "BreakpointResolvedEventDataType"]

    module PausedEventDataType : sig
      type t = inspector_Debugger_PausedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_callFrames : t -> inspector_Debugger_CallFrame list
        [@@js.get "callFrames"]

      val set_callFrames : t -> inspector_Debugger_CallFrame list -> unit
        [@@js.set "callFrames"]

      val get_reason : t -> string [@@js.get "reason"]

      val set_reason : t -> string -> unit [@@js.set "reason"]

      val get_data : t -> anonymous_interface_0 [@@js.get "data"]

      val set_data : t -> anonymous_interface_0 -> unit [@@js.set "data"]

      val get_hitBreakpoints : t -> string list [@@js.get "hitBreakpoints"]

      val set_hitBreakpoints : t -> string list -> unit
        [@@js.set "hitBreakpoints"]

      val get_asyncStackTrace : t -> inspector_Runtime_StackTrace
        [@@js.get "asyncStackTrace"]

      val set_asyncStackTrace : t -> inspector_Runtime_StackTrace -> unit
        [@@js.set "asyncStackTrace"]

      val get_asyncStackTraceId : t -> inspector_Runtime_StackTraceId
        [@@js.get "asyncStackTraceId"]

      val set_asyncStackTraceId : t -> inspector_Runtime_StackTraceId -> unit
        [@@js.set "asyncStackTraceId"]

      val get_asyncCallStackTraceId : t -> inspector_Runtime_StackTraceId
        [@@js.get "asyncCallStackTraceId"]

      val set_asyncCallStackTraceId
        :  t
        -> inspector_Runtime_StackTraceId
        -> unit
        [@@js.set "asyncCallStackTraceId"]
    end
    [@@js.scope "PausedEventDataType"]
  end
  [@@js.scope "Debugger"]

  module Console : sig
    module ConsoleMessage : sig
      type t = inspector_Console_ConsoleMessage

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_source : t -> string [@@js.get "source"]

      val set_source : t -> string -> unit [@@js.set "source"]

      val get_level : t -> string [@@js.get "level"]

      val set_level : t -> string -> unit [@@js.set "level"]

      val get_text : t -> string [@@js.get "text"]

      val set_text : t -> string -> unit [@@js.set "text"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_line : t -> int [@@js.get "line"]

      val set_line : t -> int -> unit [@@js.set "line"]

      val get_column : t -> int [@@js.get "column"]

      val set_column : t -> int -> unit [@@js.set "column"]
    end
    [@@js.scope "ConsoleMessage"]

    module MessageAddedEventDataType : sig
      type t = inspector_Console_MessageAddedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_message : t -> inspector_Console_ConsoleMessage
        [@@js.get "message"]

      val set_message : t -> inspector_Console_ConsoleMessage -> unit
        [@@js.set "message"]
    end
    [@@js.scope "MessageAddedEventDataType"]
  end
  [@@js.scope "Console"]

  module Profiler : sig
    module ProfileNode : sig
      type t = inspector_Profiler_ProfileNode

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> int [@@js.get "id"]

      val set_id : t -> int -> unit [@@js.set "id"]

      val get_callFrame : t -> inspector_Runtime_CallFrame
        [@@js.get "callFrame"]

      val set_callFrame : t -> inspector_Runtime_CallFrame -> unit
        [@@js.set "callFrame"]

      val get_hitCount : t -> int [@@js.get "hitCount"]

      val set_hitCount : t -> int -> unit [@@js.set "hitCount"]

      val get_children : t -> int list [@@js.get "children"]

      val set_children : t -> int list -> unit [@@js.set "children"]

      val get_deoptReason : t -> string [@@js.get "deoptReason"]

      val set_deoptReason : t -> string -> unit [@@js.set "deoptReason"]

      val get_positionTicks : t -> inspector_Profiler_PositionTickInfo list
        [@@js.get "positionTicks"]

      val set_positionTicks
        :  t
        -> inspector_Profiler_PositionTickInfo list
        -> unit
        [@@js.set "positionTicks"]
    end
    [@@js.scope "ProfileNode"]

    module Profile : sig
      type t = inspector_Profiler_Profile

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_nodes : t -> inspector_Profiler_ProfileNode list
        [@@js.get "nodes"]

      val set_nodes : t -> inspector_Profiler_ProfileNode list -> unit
        [@@js.set "nodes"]

      val get_startTime : t -> int [@@js.get "startTime"]

      val set_startTime : t -> int -> unit [@@js.set "startTime"]

      val get_endTime : t -> int [@@js.get "endTime"]

      val set_endTime : t -> int -> unit [@@js.set "endTime"]

      val get_samples : t -> int list [@@js.get "samples"]

      val set_samples : t -> int list -> unit [@@js.set "samples"]

      val get_timeDeltas : t -> int list [@@js.get "timeDeltas"]

      val set_timeDeltas : t -> int list -> unit [@@js.set "timeDeltas"]
    end
    [@@js.scope "Profile"]

    module PositionTickInfo : sig
      type t = inspector_Profiler_PositionTickInfo

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_line : t -> int [@@js.get "line"]

      val set_line : t -> int -> unit [@@js.set "line"]

      val get_ticks : t -> int [@@js.get "ticks"]

      val set_ticks : t -> int -> unit [@@js.set "ticks"]
    end
    [@@js.scope "PositionTickInfo"]

    module CoverageRange : sig
      type t = inspector_Profiler_CoverageRange

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_startOffset : t -> int [@@js.get "startOffset"]

      val set_startOffset : t -> int -> unit [@@js.set "startOffset"]

      val get_endOffset : t -> int [@@js.get "endOffset"]

      val set_endOffset : t -> int -> unit [@@js.set "endOffset"]

      val get_count : t -> int [@@js.get "count"]

      val set_count : t -> int -> unit [@@js.set "count"]
    end
    [@@js.scope "CoverageRange"]

    module FunctionCoverage : sig
      type t = inspector_Profiler_FunctionCoverage

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_functionName : t -> string [@@js.get "functionName"]

      val set_functionName : t -> string -> unit [@@js.set "functionName"]

      val get_ranges : t -> inspector_Profiler_CoverageRange list
        [@@js.get "ranges"]

      val set_ranges : t -> inspector_Profiler_CoverageRange list -> unit
        [@@js.set "ranges"]

      val get_isBlockCoverage : t -> bool [@@js.get "isBlockCoverage"]

      val set_isBlockCoverage : t -> bool -> unit [@@js.set "isBlockCoverage"]
    end
    [@@js.scope "FunctionCoverage"]

    module ScriptCoverage : sig
      type t = inspector_Profiler_ScriptCoverage

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_functions : t -> inspector_Profiler_FunctionCoverage list
        [@@js.get "functions"]

      val set_functions : t -> inspector_Profiler_FunctionCoverage list -> unit
        [@@js.set "functions"]
    end
    [@@js.scope "ScriptCoverage"]

    module TypeObject : sig
      type t = inspector_Profiler_TypeObject

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]
    end
    [@@js.scope "TypeObject"]

    module TypeProfileEntry : sig
      type t = inspector_Profiler_TypeProfileEntry

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_offset : t -> int [@@js.get "offset"]

      val set_offset : t -> int -> unit [@@js.set "offset"]

      val get_types : t -> inspector_Profiler_TypeObject list [@@js.get "types"]

      val set_types : t -> inspector_Profiler_TypeObject list -> unit
        [@@js.set "types"]
    end
    [@@js.scope "TypeProfileEntry"]

    module ScriptTypeProfile : sig
      type t = inspector_Profiler_ScriptTypeProfile

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scriptId : t -> inspector_Runtime_ScriptId [@@js.get "scriptId"]

      val set_scriptId : t -> inspector_Runtime_ScriptId -> unit
        [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_entries : t -> inspector_Profiler_TypeProfileEntry list
        [@@js.get "entries"]

      val set_entries : t -> inspector_Profiler_TypeProfileEntry list -> unit
        [@@js.set "entries"]
    end
    [@@js.scope "ScriptTypeProfile"]

    module SetSamplingIntervalParameterType : sig
      type t = inspector_Profiler_SetSamplingIntervalParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_interval : t -> int [@@js.get "interval"]

      val set_interval : t -> int -> unit [@@js.set "interval"]
    end
    [@@js.scope "SetSamplingIntervalParameterType"]

    module StartPreciseCoverageParameterType : sig
      type t = inspector_Profiler_StartPreciseCoverageParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_callCount : t -> bool [@@js.get "callCount"]

      val set_callCount : t -> bool -> unit [@@js.set "callCount"]

      val get_detailed : t -> bool [@@js.get "detailed"]

      val set_detailed : t -> bool -> unit [@@js.set "detailed"]
    end
    [@@js.scope "StartPreciseCoverageParameterType"]

    module StopReturnType : sig
      type t = inspector_Profiler_StopReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_profile : t -> inspector_Profiler_Profile [@@js.get "profile"]

      val set_profile : t -> inspector_Profiler_Profile -> unit
        [@@js.set "profile"]
    end
    [@@js.scope "StopReturnType"]

    module TakePreciseCoverageReturnType : sig
      type t = inspector_Profiler_TakePreciseCoverageReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Profiler_ScriptCoverage list
        [@@js.get "result"]

      val set_result : t -> inspector_Profiler_ScriptCoverage list -> unit
        [@@js.set "result"]
    end
    [@@js.scope "TakePreciseCoverageReturnType"]

    module GetBestEffortCoverageReturnType : sig
      type t = inspector_Profiler_GetBestEffortCoverageReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Profiler_ScriptCoverage list
        [@@js.get "result"]

      val set_result : t -> inspector_Profiler_ScriptCoverage list -> unit
        [@@js.set "result"]
    end
    [@@js.scope "GetBestEffortCoverageReturnType"]

    module TakeTypeProfileReturnType : sig
      type t = inspector_Profiler_TakeTypeProfileReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Profiler_ScriptTypeProfile list
        [@@js.get "result"]

      val set_result : t -> inspector_Profiler_ScriptTypeProfile list -> unit
        [@@js.set "result"]
    end
    [@@js.scope "TakeTypeProfileReturnType"]

    module ConsoleProfileStartedEventDataType : sig
      type t = inspector_Profiler_ConsoleProfileStartedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> string [@@js.get "id"]

      val set_id : t -> string -> unit [@@js.set "id"]

      val get_location : t -> inspector_Debugger_Location [@@js.get "location"]

      val set_location : t -> inspector_Debugger_Location -> unit
        [@@js.set "location"]

      val get_title : t -> string [@@js.get "title"]

      val set_title : t -> string -> unit [@@js.set "title"]
    end
    [@@js.scope "ConsoleProfileStartedEventDataType"]

    module ConsoleProfileFinishedEventDataType : sig
      type t = inspector_Profiler_ConsoleProfileFinishedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> string [@@js.get "id"]

      val set_id : t -> string -> unit [@@js.set "id"]

      val get_location : t -> inspector_Debugger_Location [@@js.get "location"]

      val set_location : t -> inspector_Debugger_Location -> unit
        [@@js.set "location"]

      val get_profile : t -> inspector_Profiler_Profile [@@js.get "profile"]

      val set_profile : t -> inspector_Profiler_Profile -> unit
        [@@js.set "profile"]

      val get_title : t -> string [@@js.get "title"]

      val set_title : t -> string -> unit [@@js.set "title"]
    end
    [@@js.scope "ConsoleProfileFinishedEventDataType"]
  end
  [@@js.scope "Profiler"]

  module HeapProfiler : sig
    module HeapSnapshotObjectId : sig
      type t = inspector_HeapProfiler_HeapSnapshotObjectId

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module SamplingHeapProfileNode : sig
      type t = inspector_HeapProfiler_SamplingHeapProfileNode

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_callFrame : t -> inspector_Runtime_CallFrame
        [@@js.get "callFrame"]

      val set_callFrame : t -> inspector_Runtime_CallFrame -> unit
        [@@js.set "callFrame"]

      val get_selfSize : t -> int [@@js.get "selfSize"]

      val set_selfSize : t -> int -> unit [@@js.set "selfSize"]

      val get_children : t -> t list [@@js.get "children"]

      val set_children : t -> t list -> unit [@@js.set "children"]
    end
    [@@js.scope "SamplingHeapProfileNode"]

    module SamplingHeapProfile : sig
      type t = inspector_HeapProfiler_SamplingHeapProfile

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_head : t -> inspector_HeapProfiler_SamplingHeapProfileNode
        [@@js.get "head"]

      val set_head : t -> inspector_HeapProfiler_SamplingHeapProfileNode -> unit
        [@@js.set "head"]
    end
    [@@js.scope "SamplingHeapProfile"]

    module StartTrackingHeapObjectsParameterType : sig
      type t = inspector_HeapProfiler_StartTrackingHeapObjectsParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_trackAllocations : t -> bool [@@js.get "trackAllocations"]

      val set_trackAllocations : t -> bool -> unit [@@js.set "trackAllocations"]
    end
    [@@js.scope "StartTrackingHeapObjectsParameterType"]

    module StopTrackingHeapObjectsParameterType : sig
      type t = inspector_HeapProfiler_StopTrackingHeapObjectsParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_reportProgress : t -> bool [@@js.get "reportProgress"]

      val set_reportProgress : t -> bool -> unit [@@js.set "reportProgress"]
    end
    [@@js.scope "StopTrackingHeapObjectsParameterType"]

    module TakeHeapSnapshotParameterType : sig
      type t = inspector_HeapProfiler_TakeHeapSnapshotParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_reportProgress : t -> bool [@@js.get "reportProgress"]

      val set_reportProgress : t -> bool -> unit [@@js.set "reportProgress"]
    end
    [@@js.scope "TakeHeapSnapshotParameterType"]

    module GetObjectByHeapObjectIdParameterType : sig
      type t = inspector_HeapProfiler_GetObjectByHeapObjectIdParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_objectId : t -> inspector_HeapProfiler_HeapSnapshotObjectId
        [@@js.get "objectId"]

      val set_objectId
        :  t
        -> inspector_HeapProfiler_HeapSnapshotObjectId
        -> unit
        [@@js.set "objectId"]

      val get_objectGroup : t -> string [@@js.get "objectGroup"]

      val set_objectGroup : t -> string -> unit [@@js.set "objectGroup"]
    end
    [@@js.scope "GetObjectByHeapObjectIdParameterType"]

    module AddInspectedHeapObjectParameterType : sig
      type t = inspector_HeapProfiler_AddInspectedHeapObjectParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_heapObjectId : t -> inspector_HeapProfiler_HeapSnapshotObjectId
        [@@js.get "heapObjectId"]

      val set_heapObjectId
        :  t
        -> inspector_HeapProfiler_HeapSnapshotObjectId
        -> unit
        [@@js.set "heapObjectId"]
    end
    [@@js.scope "AddInspectedHeapObjectParameterType"]

    module GetHeapObjectIdParameterType : sig
      type t = inspector_HeapProfiler_GetHeapObjectIdParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_objectId : t -> inspector_Runtime_RemoteObjectId
        [@@js.get "objectId"]

      val set_objectId : t -> inspector_Runtime_RemoteObjectId -> unit
        [@@js.set "objectId"]
    end
    [@@js.scope "GetHeapObjectIdParameterType"]

    module StartSamplingParameterType : sig
      type t = inspector_HeapProfiler_StartSamplingParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_samplingInterval : t -> int [@@js.get "samplingInterval"]

      val set_samplingInterval : t -> int -> unit [@@js.set "samplingInterval"]
    end
    [@@js.scope "StartSamplingParameterType"]

    module GetObjectByHeapObjectIdReturnType : sig
      type t = inspector_HeapProfiler_GetObjectByHeapObjectIdReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> inspector_Runtime_RemoteObject [@@js.get "result"]

      val set_result : t -> inspector_Runtime_RemoteObject -> unit
        [@@js.set "result"]
    end
    [@@js.scope "GetObjectByHeapObjectIdReturnType"]

    module GetHeapObjectIdReturnType : sig
      type t = inspector_HeapProfiler_GetHeapObjectIdReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_heapSnapshotObjectId
        :  t
        -> inspector_HeapProfiler_HeapSnapshotObjectId
        [@@js.get "heapSnapshotObjectId"]

      val set_heapSnapshotObjectId
        :  t
        -> inspector_HeapProfiler_HeapSnapshotObjectId
        -> unit
        [@@js.set "heapSnapshotObjectId"]
    end
    [@@js.scope "GetHeapObjectIdReturnType"]

    module StopSamplingReturnType : sig
      type t = inspector_HeapProfiler_StopSamplingReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_profile : t -> inspector_HeapProfiler_SamplingHeapProfile
        [@@js.get "profile"]

      val set_profile : t -> inspector_HeapProfiler_SamplingHeapProfile -> unit
        [@@js.set "profile"]
    end
    [@@js.scope "StopSamplingReturnType"]

    module GetSamplingProfileReturnType : sig
      type t = inspector_HeapProfiler_GetSamplingProfileReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_profile : t -> inspector_HeapProfiler_SamplingHeapProfile
        [@@js.get "profile"]

      val set_profile : t -> inspector_HeapProfiler_SamplingHeapProfile -> unit
        [@@js.set "profile"]
    end
    [@@js.scope "GetSamplingProfileReturnType"]

    module AddHeapSnapshotChunkEventDataType : sig
      type t = inspector_HeapProfiler_AddHeapSnapshotChunkEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_chunk : t -> string [@@js.get "chunk"]

      val set_chunk : t -> string -> unit [@@js.set "chunk"]
    end
    [@@js.scope "AddHeapSnapshotChunkEventDataType"]

    module ReportHeapSnapshotProgressEventDataType : sig
      type t = inspector_HeapProfiler_ReportHeapSnapshotProgressEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_done : t -> int [@@js.get "done"]

      val set_done : t -> int -> unit [@@js.set "done"]

      val get_total : t -> int [@@js.get "total"]

      val set_total : t -> int -> unit [@@js.set "total"]

      val get_finished : t -> bool [@@js.get "finished"]

      val set_finished : t -> bool -> unit [@@js.set "finished"]
    end
    [@@js.scope "ReportHeapSnapshotProgressEventDataType"]

    module LastSeenObjectIdEventDataType : sig
      type t = inspector_HeapProfiler_LastSeenObjectIdEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_lastSeenObjectId : t -> int [@@js.get "lastSeenObjectId"]

      val set_lastSeenObjectId : t -> int -> unit [@@js.set "lastSeenObjectId"]

      val get_timestamp : t -> int [@@js.get "timestamp"]

      val set_timestamp : t -> int -> unit [@@js.set "timestamp"]
    end
    [@@js.scope "LastSeenObjectIdEventDataType"]

    module HeapStatsUpdateEventDataType : sig
      type t = inspector_HeapProfiler_HeapStatsUpdateEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_statsUpdate : t -> int list [@@js.get "statsUpdate"]

      val set_statsUpdate : t -> int list -> unit [@@js.set "statsUpdate"]
    end
    [@@js.scope "HeapStatsUpdateEventDataType"]
  end
  [@@js.scope "HeapProfiler"]

  module NodeTracing : sig
    module TraceConfig : sig
      type t = inspector_NodeTracing_TraceConfig

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_recordMode : t -> string [@@js.get "recordMode"]

      val set_recordMode : t -> string -> unit [@@js.set "recordMode"]

      val get_includedCategories : t -> string list
        [@@js.get "includedCategories"]

      val set_includedCategories : t -> string list -> unit
        [@@js.set "includedCategories"]
    end
    [@@js.scope "TraceConfig"]

    module StartParameterType : sig
      type t = inspector_NodeTracing_StartParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_traceConfig : t -> inspector_NodeTracing_TraceConfig
        [@@js.get "traceConfig"]

      val set_traceConfig : t -> inspector_NodeTracing_TraceConfig -> unit
        [@@js.set "traceConfig"]
    end
    [@@js.scope "StartParameterType"]

    module GetCategoriesReturnType : sig
      type t = inspector_NodeTracing_GetCategoriesReturnType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_categories : t -> string list [@@js.get "categories"]

      val set_categories : t -> string list -> unit [@@js.set "categories"]
    end
    [@@js.scope "GetCategoriesReturnType"]

    module DataCollectedEventDataType : sig
      type t = inspector_NodeTracing_DataCollectedEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_value : t -> anonymous_interface_0 list [@@js.get "value"]

      val set_value : t -> anonymous_interface_0 list -> unit [@@js.set "value"]
    end
    [@@js.scope "DataCollectedEventDataType"]
  end
  [@@js.scope "NodeTracing"]

  module NodeWorker : sig
    module WorkerID : sig
      type t = inspector_NodeWorker_WorkerID

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module SessionID : sig
      type t = inspector_NodeWorker_SessionID

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module WorkerInfo : sig
      type t = inspector_NodeWorker_WorkerInfo

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_workerId : t -> inspector_NodeWorker_WorkerID
        [@@js.get "workerId"]

      val set_workerId : t -> inspector_NodeWorker_WorkerID -> unit
        [@@js.set "workerId"]

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_title : t -> string [@@js.get "title"]

      val set_title : t -> string -> unit [@@js.set "title"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]
    end
    [@@js.scope "WorkerInfo"]

    module SendMessageToWorkerParameterType : sig
      type t = inspector_NodeWorker_SendMessageToWorkerParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_message : t -> string [@@js.get "message"]

      val set_message : t -> string -> unit [@@js.set "message"]

      val get_sessionId : t -> inspector_NodeWorker_SessionID
        [@@js.get "sessionId"]

      val set_sessionId : t -> inspector_NodeWorker_SessionID -> unit
        [@@js.set "sessionId"]
    end
    [@@js.scope "SendMessageToWorkerParameterType"]

    module EnableParameterType : sig
      type t = inspector_NodeWorker_EnableParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_waitForDebuggerOnStart : t -> bool
        [@@js.get "waitForDebuggerOnStart"]

      val set_waitForDebuggerOnStart : t -> bool -> unit
        [@@js.set "waitForDebuggerOnStart"]
    end
    [@@js.scope "EnableParameterType"]

    module DetachParameterType : sig
      type t = inspector_NodeWorker_DetachParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_sessionId : t -> inspector_NodeWorker_SessionID
        [@@js.get "sessionId"]

      val set_sessionId : t -> inspector_NodeWorker_SessionID -> unit
        [@@js.set "sessionId"]
    end
    [@@js.scope "DetachParameterType"]

    module AttachedToWorkerEventDataType : sig
      type t = inspector_NodeWorker_AttachedToWorkerEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_sessionId : t -> inspector_NodeWorker_SessionID
        [@@js.get "sessionId"]

      val set_sessionId : t -> inspector_NodeWorker_SessionID -> unit
        [@@js.set "sessionId"]

      val get_workerInfo : t -> inspector_NodeWorker_WorkerInfo
        [@@js.get "workerInfo"]

      val set_workerInfo : t -> inspector_NodeWorker_WorkerInfo -> unit
        [@@js.set "workerInfo"]

      val get_waitingForDebugger : t -> bool [@@js.get "waitingForDebugger"]

      val set_waitingForDebugger : t -> bool -> unit
        [@@js.set "waitingForDebugger"]
    end
    [@@js.scope "AttachedToWorkerEventDataType"]

    module DetachedFromWorkerEventDataType : sig
      type t = inspector_NodeWorker_DetachedFromWorkerEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_sessionId : t -> inspector_NodeWorker_SessionID
        [@@js.get "sessionId"]

      val set_sessionId : t -> inspector_NodeWorker_SessionID -> unit
        [@@js.set "sessionId"]
    end
    [@@js.scope "DetachedFromWorkerEventDataType"]

    module ReceivedMessageFromWorkerEventDataType : sig
      type t = inspector_NodeWorker_ReceivedMessageFromWorkerEventDataType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_sessionId : t -> inspector_NodeWorker_SessionID
        [@@js.get "sessionId"]

      val set_sessionId : t -> inspector_NodeWorker_SessionID -> unit
        [@@js.set "sessionId"]

      val get_message : t -> string [@@js.get "message"]

      val set_message : t -> string -> unit [@@js.set "message"]
    end
    [@@js.scope "ReceivedMessageFromWorkerEventDataType"]
  end
  [@@js.scope "NodeWorker"]

  module NodeRuntime : sig
    module NotifyWhenWaitingForDisconnectParameterType : sig
      type t = inspector_NodeRuntime_NotifyWhenWaitingForDisconnectParameterType

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_enabled : t -> bool [@@js.get "enabled"]

      val set_enabled : t -> bool -> unit [@@js.set "enabled"]
    end
    [@@js.scope "NotifyWhenWaitingForDisconnectParameterType"]
  end
  [@@js.scope "NodeRuntime"]

  module Session : sig
    type t = inspector_Session

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val connect : t -> unit [@@js.call "connect"]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val post
      :  t
      -> method_:string
      -> ?params:anonymous_interface_0
      -> ?callback:
           (err:Error.t or_null
            -> ?params:anonymous_interface_0
            -> unit
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'
      :  t
      -> method_:string
      -> ?callback:
           (err:Error.t or_null
            -> ?params:anonymous_interface_0
            -> unit
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''
      :  t
      -> method_:([ `Schema_getDomains ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Schema_GetDomainsReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''
      :  t
      -> method_:([ `Runtime_evaluate ][@js.enum])
      -> ?params:inspector_Runtime_EvaluateParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_EvaluateReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''
      :  t
      -> method_:([ `Runtime_evaluate ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_EvaluateReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''
      :  t
      -> method_:([ `Runtime_awaitPromise ][@js.enum])
      -> ?params:inspector_Runtime_AwaitPromiseParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_AwaitPromiseReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''
      :  t
      -> method_:([ `Runtime_awaitPromise ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_AwaitPromiseReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''
      :  t
      -> method_:([ `Runtime_callFunctionOn ][@js.enum])
      -> ?params:inspector_Runtime_CallFunctionOnParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_CallFunctionOnReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''
      :  t
      -> method_:([ `Runtime_callFunctionOn ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_CallFunctionOnReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''
      :  t
      -> method_:([ `Runtime_getProperties ][@js.enum])
      -> ?params:inspector_Runtime_GetPropertiesParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_GetPropertiesReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''
      :  t
      -> method_:([ `Runtime_getProperties ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_GetPropertiesReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''
      :  t
      -> method_:([ `Runtime_releaseObject ][@js.enum])
      -> ?params:inspector_Runtime_ReleaseObjectParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''
      :  t
      -> method_:([ `Runtime_releaseObject ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''
      :  t
      -> method_:([ `Runtime_releaseObjectGroup ][@js.enum])
      -> ?params:inspector_Runtime_ReleaseObjectGroupParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''
      :  t
      -> method_:([ `Runtime_releaseObjectGroup ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''
      :  t
      -> method_:([ `Runtime_runIfWaitingForDebugger ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''
      :  t
      -> method_:([ `Runtime_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''
      :  t
      -> method_:([ `Runtime_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''
      :  t
      -> method_:([ `Runtime_discardConsoleEntries ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''
      :  t
      -> method_:([ `Runtime_setCustomObjectFormatterEnabled ][@js.enum])
      -> ?params:inspector_Runtime_SetCustomObjectFormatterEnabledParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_setCustomObjectFormatterEnabled ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_compileScript ][@js.enum])
      -> ?params:inspector_Runtime_CompileScriptParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_CompileScriptReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_compileScript ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_CompileScriptReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_runScript ][@js.enum])
      -> ?params:inspector_Runtime_RunScriptParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_RunScriptReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_runScript ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_RunScriptReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_queryObjects ][@js.enum])
      -> ?params:inspector_Runtime_QueryObjectsParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_QueryObjectsReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_queryObjects ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_QueryObjectsReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_globalLexicalScopeNames ][@js.enum])
      -> ?params:inspector_Runtime_GlobalLexicalScopeNamesParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_GlobalLexicalScopeNamesReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_globalLexicalScopeNames ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Runtime_GlobalLexicalScopeNamesReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_enable ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_EnableReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpointsActive ][@js.enum])
      -> ?params:inspector_Debugger_SetBreakpointsActiveParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpointsActive ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setSkipAllPauses ][@js.enum])
      -> ?params:inspector_Debugger_SetSkipAllPausesParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setSkipAllPauses ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpointByUrl ][@js.enum])
      -> ?params:inspector_Debugger_SetBreakpointByUrlParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_SetBreakpointByUrlReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpointByUrl ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_SetBreakpointByUrlReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpoint ][@js.enum])
      -> ?params:inspector_Debugger_SetBreakpointParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_SetBreakpointReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpoint ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_SetBreakpointReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_removeBreakpoint ][@js.enum])
      -> ?params:inspector_Debugger_RemoveBreakpointParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_removeBreakpoint ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getPossibleBreakpoints ][@js.enum])
      -> ?params:inspector_Debugger_GetPossibleBreakpointsParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_GetPossibleBreakpointsReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getPossibleBreakpoints ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_GetPossibleBreakpointsReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_continueToLocation ][@js.enum])
      -> ?params:inspector_Debugger_ContinueToLocationParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_continueToLocation ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_pauseOnAsyncCall ][@js.enum])
      -> ?params:inspector_Debugger_PauseOnAsyncCallParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_pauseOnAsyncCall ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_stepOver ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_stepInto ][@js.enum])
      -> ?params:inspector_Debugger_StepIntoParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_stepInto ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_stepOut ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_pause ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_scheduleStepIntoAsync ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_resume ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getStackTrace ][@js.enum])
      -> ?params:inspector_Debugger_GetStackTraceParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_GetStackTraceReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getStackTrace ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_GetStackTraceReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_searchInContent ][@js.enum])
      -> ?params:inspector_Debugger_SearchInContentParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_SearchInContentReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_searchInContent ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_SearchInContentReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setScriptSource ][@js.enum])
      -> ?params:inspector_Debugger_SetScriptSourceParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_SetScriptSourceReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setScriptSource ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_SetScriptSourceReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_restartFrame ][@js.enum])
      -> ?params:inspector_Debugger_RestartFrameParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_RestartFrameReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_restartFrame ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_RestartFrameReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getScriptSource ][@js.enum])
      -> ?params:inspector_Debugger_GetScriptSourceParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_GetScriptSourceReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getScriptSource ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_GetScriptSourceReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setPauseOnExceptions ][@js.enum])
      -> ?params:inspector_Debugger_SetPauseOnExceptionsParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setPauseOnExceptions ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_evaluateOnCallFrame ][@js.enum])
      -> ?params:inspector_Debugger_EvaluateOnCallFrameParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_EvaluateOnCallFrameReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_evaluateOnCallFrame ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Debugger_EvaluateOnCallFrameReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setVariableValue ][@js.enum])
      -> ?params:inspector_Debugger_SetVariableValueParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setVariableValue ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setReturnValue ][@js.enum])
      -> ?params:inspector_Debugger_SetReturnValueParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setReturnValue ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setAsyncCallStackDepth ][@js.enum])
      -> ?params:inspector_Debugger_SetAsyncCallStackDepthParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setAsyncCallStackDepth ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBlackboxPatterns ][@js.enum])
      -> ?params:inspector_Debugger_SetBlackboxPatternsParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBlackboxPatterns ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBlackboxedRanges ][@js.enum])
      -> ?params:inspector_Debugger_SetBlackboxedRangesParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBlackboxedRanges ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Console_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Console_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Console_clearMessages ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_setSamplingInterval ][@js.enum])
      -> ?params:inspector_Profiler_SetSamplingIntervalParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_setSamplingInterval ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_start ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_stop ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Profiler_StopReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_startPreciseCoverage ][@js.enum])
      -> ?params:inspector_Profiler_StartPreciseCoverageParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_startPreciseCoverage ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_stopPreciseCoverage ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_takePreciseCoverage ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Profiler_TakePreciseCoverageReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_getBestEffortCoverage ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Profiler_GetBestEffortCoverageReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_startTypeProfile ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_stopTypeProfile ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_takeTypeProfile ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_Profiler_TakeTypeProfileReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_startTrackingHeapObjects ][@js.enum])
      -> ?params:inspector_HeapProfiler_StartTrackingHeapObjectsParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_startTrackingHeapObjects ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_stopTrackingHeapObjects ][@js.enum])
      -> ?params:inspector_HeapProfiler_StopTrackingHeapObjectsParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_stopTrackingHeapObjects ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_takeHeapSnapshot ][@js.enum])
      -> ?params:inspector_HeapProfiler_TakeHeapSnapshotParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_takeHeapSnapshot ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_collectGarbage ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getObjectByHeapObjectId ][@js.enum])
      -> ?params:inspector_HeapProfiler_GetObjectByHeapObjectIdParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_HeapProfiler_GetObjectByHeapObjectIdReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getObjectByHeapObjectId ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_HeapProfiler_GetObjectByHeapObjectIdReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_addInspectedHeapObject ][@js.enum])
      -> ?params:inspector_HeapProfiler_AddInspectedHeapObjectParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_addInspectedHeapObject ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getHeapObjectId ][@js.enum])
      -> ?params:inspector_HeapProfiler_GetHeapObjectIdParameterType
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_HeapProfiler_GetHeapObjectIdReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getHeapObjectId ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_HeapProfiler_GetHeapObjectIdReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_startSampling ][@js.enum])
      -> ?params:inspector_HeapProfiler_StartSamplingParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_startSampling ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_stopSampling ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_HeapProfiler_StopSamplingReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getSamplingProfile ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_HeapProfiler_GetSamplingProfileReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeTracing_getCategories ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:inspector_NodeTracing_GetCategoriesReturnType
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeTracing_start ][@js.enum])
      -> ?params:inspector_NodeTracing_StartParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeTracing_start ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeTracing_stop ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_sendMessageToWorker ][@js.enum])
      -> ?params:inspector_NodeWorker_SendMessageToWorkerParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_sendMessageToWorker ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_enable ][@js.enum])
      -> ?params:inspector_NodeWorker_EnableParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_detach ][@js.enum])
      -> ?params:inspector_NodeWorker_DetachParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_detach ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeRuntime_notifyWhenWaitingForDisconnect ][@js.enum])
      -> ?params:
           inspector_NodeRuntime_NotifyWhenWaitingForDisconnectParameterType
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeRuntime_notifyWhenWaitingForDisconnect ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:anonymous_interface_0 inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextCreatedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextDestroyedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionThrownEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionRevokedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ConsoleAPICalledEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_InspectRequestedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptParsedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptFailedToParseEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_BreakpointResolvedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_PausedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:
              inspector_Console_MessageAddedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileStartedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileFinishedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_AddHeapSnapshotChunkEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_ReportHeapSnapshotProgressEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_LastSeenObjectIdEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_HeapStatsUpdateEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              inspector_NodeTracing_DataCollectedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_AttachedToWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_DetachedFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_ReceivedMessageFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> message:anonymous_interface_0 inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> message:
           inspector_Runtime_ExecutionContextCreatedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> message:
           inspector_Runtime_ExecutionContextDestroyedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> message:
           inspector_Runtime_ExceptionThrownEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> message:
           inspector_Runtime_ExceptionRevokedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> message:
           inspector_Runtime_ConsoleAPICalledEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> message:
           inspector_Runtime_InspectRequestedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> message:
           inspector_Debugger_ScriptParsedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> message:
           inspector_Debugger_ScriptFailedToParseEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> message:
           inspector_Debugger_BreakpointResolvedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> message:
           inspector_Debugger_PausedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''' : t -> event:([ `Debugger_resumed ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> message:
           inspector_Console_MessageAddedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> message:
           inspector_Profiler_ConsoleProfileStartedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> message:
           inspector_Profiler_ConsoleProfileFinishedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> message:
           inspector_HeapProfiler_AddHeapSnapshotChunkEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> message:
           inspector_HeapProfiler_ReportHeapSnapshotProgressEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> message:
           inspector_HeapProfiler_LastSeenObjectIdEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> message:
           inspector_HeapProfiler_HeapStatsUpdateEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> message:
           inspector_NodeTracing_DataCollectedEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> message:
           inspector_NodeWorker_AttachedToWorkerEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> message:
           inspector_NodeWorker_DetachedFromWorkerEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> message:
           inspector_NodeWorker_ReceivedMessageFromWorkerEventDataType
           inspector_InspectorNotification
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:anonymous_interface_0 inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextCreatedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextDestroyedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionThrownEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionRevokedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ConsoleAPICalledEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_InspectRequestedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptParsedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptFailedToParseEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_BreakpointResolvedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_PausedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:
              inspector_Console_MessageAddedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileStartedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileFinishedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_AddHeapSnapshotChunkEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_ReportHeapSnapshotProgressEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_LastSeenObjectIdEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_HeapStatsUpdateEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              inspector_NodeTracing_DataCollectedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_AttachedToWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_DetachedFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_ReceivedMessageFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:anonymous_interface_0 inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextCreatedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextDestroyedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionThrownEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionRevokedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ConsoleAPICalledEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_InspectRequestedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptParsedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptFailedToParseEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_BreakpointResolvedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_PausedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:
              inspector_Console_MessageAddedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileStartedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileFinishedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_AddHeapSnapshotChunkEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_ReportHeapSnapshotProgressEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_LastSeenObjectIdEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_HeapStatsUpdateEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              inspector_NodeTracing_DataCollectedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_AttachedToWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_DetachedFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_ReceivedMessageFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:anonymous_interface_0 inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextCreatedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextDestroyedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionThrownEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionRevokedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ConsoleAPICalledEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_InspectRequestedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptParsedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptFailedToParseEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_BreakpointResolvedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_PausedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:
              inspector_Console_MessageAddedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileStartedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileFinishedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_AddHeapSnapshotChunkEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_ReportHeapSnapshotProgressEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_LastSeenObjectIdEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_HeapStatsUpdateEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              inspector_NodeTracing_DataCollectedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_AttachedToWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_DetachedFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_ReceivedMessageFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:anonymous_interface_0 inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextCreatedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExecutionContextDestroyedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionThrownEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ExceptionRevokedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_ConsoleAPICalledEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              inspector_Runtime_InspectRequestedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptParsedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_ScriptFailedToParseEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_BreakpointResolvedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:
              inspector_Debugger_PausedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:
              inspector_Console_MessageAddedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileStartedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              inspector_Profiler_ConsoleProfileFinishedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_AddHeapSnapshotChunkEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_ReportHeapSnapshotProgressEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_LastSeenObjectIdEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              inspector_HeapProfiler_HeapStatsUpdateEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              inspector_NodeTracing_DataCollectedEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_AttachedToWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_DetachedFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              inspector_NodeWorker_ReceivedMessageFromWorkerEventDataType
              inspector_InspectorNotification
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Node_events.Events.EventEmitter.t [@@js.cast]
  end
  [@@js.scope "Session"]

  val open_ : ?port:int -> ?host:string -> ?wait:bool -> unit -> unit
    [@@js.global "open"]

  val close : unit -> unit [@@js.global "close"]

  val url : unit -> string or_undefined [@@js.global "url"]

  val waitForDebugger : unit -> unit [@@js.global "waitForDebugger"]
end
[@@js.scope Import.inspector]
