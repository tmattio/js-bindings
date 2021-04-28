[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

include module type of struct
  module Message = Vscode_jsonrpc_messages.Message
  module MessageSignature = Vscode_jsonrpc_messages.MessageSignature
  module RequestMessage = Vscode_jsonrpc_messages.RequestMessage
  module RequestType = Vscode_jsonrpc_messages.RequestType
  module RequestType0 = Vscode_jsonrpc_messages.RequestType0
  module RequestType1 = Vscode_jsonrpc_messages.RequestType1
  module RequestType2 = Vscode_jsonrpc_messages.RequestType2
  module RequestType3 = Vscode_jsonrpc_messages.RequestType3
  module RequestType4 = Vscode_jsonrpc_messages.RequestType4
  module RequestType5 = Vscode_jsonrpc_messages.RequestType5
  module RequestType6 = Vscode_jsonrpc_messages.RequestType6
  module RequestType7 = Vscode_jsonrpc_messages.RequestType7
  module RequestType8 = Vscode_jsonrpc_messages.RequestType8
  module RequestType9 = Vscode_jsonrpc_messages.RequestType9
  module ResponseError = Vscode_jsonrpc_messages.ResponseError
  module ErrorCodes = Vscode_jsonrpc_messages.ErrorCodes
  module NotificationMessage = Vscode_jsonrpc_messages.NotificationMessage
  module NotificationType = Vscode_jsonrpc_messages.NotificationType
  module NotificationType0 = Vscode_jsonrpc_messages.NotificationType0
  module NotificationType1 = Vscode_jsonrpc_messages.NotificationType1
  module NotificationType2 = Vscode_jsonrpc_messages.NotificationType2
  module NotificationType3 = Vscode_jsonrpc_messages.NotificationType3
  module NotificationType4 = Vscode_jsonrpc_messages.NotificationType4
  module NotificationType5 = Vscode_jsonrpc_messages.NotificationType5
  module NotificationType6 = Vscode_jsonrpc_messages.NotificationType6
  module NotificationType7 = Vscode_jsonrpc_messages.NotificationType7
  module NotificationType8 = Vscode_jsonrpc_messages.NotificationType8
  module NotificationType9 = Vscode_jsonrpc_messages.NotificationType9
  module ResponseMessage = Vscode_jsonrpc_messages.ResponseMessage
  module ParameterStructures = Vscode_jsonrpc_messages.ParameterStructures
  module EM = Vscode_jsonrpc_messages.EM
  module Disposable = Vscode_jsonrpc_disposable.Disposable
  module Event = Vscode_jsonrpc_events.Event
  module Emitter = Vscode_jsonrpc_events.Emitter

  module AbstractCancellationTokenSource =
    Vscode_jsonrpc_cancellation.AbstractCancellationTokenSource

  module CancellationTokenSource =
    Vscode_jsonrpc_cancellation.CancellationTokenSource
  module CancellationToken = Vscode_jsonrpc_cancellation.CancellationToken
  module MessageReader = Vscode_jsonrpc_message_reader.MessageReader
  module AbstractMessageReader =
    Vscode_jsonrpc_message_reader.AbstractMessageReader

  module ReadableStreamMessageReader =
    Vscode_jsonrpc_message_reader.ReadableStreamMessageReader

  module DataCallback = Vscode_jsonrpc_message_reader.DataCallback
  module MessageReaderOptions =
    Vscode_jsonrpc_message_reader.MessageReaderOptions
  module PartialMessageInfo = Vscode_jsonrpc_message_reader.PartialMessageInfo
  module MessageWriter = Vscode_jsonrpc_message_writer.MessageWriter
  module AbstractMessageWriter =
    Vscode_jsonrpc_message_writer.AbstractMessageWriter

  module WriteableStreamMessageWriter =
    Vscode_jsonrpc_message_writer.WriteableStreamMessageWriter

  module MessageWriterOptions =
    Vscode_jsonrpc_message_writer.MessageWriterOptions
  module Logger = Vscode_jsonrpc_connection.Logger
  module ConnectionStrategy = Vscode_jsonrpc_connection.ConnectionStrategy
  module ConnectionOptions = Vscode_jsonrpc_connection.ConnectionOptions
  module MessageConnection = Vscode_jsonrpc_connection.MessageConnection

  let null_logger = Vscode_jsonrpc_connection.null_logger

  let create_message_connection =
    Vscode_jsonrpc_connection.create_message_connection

  module ProgressToken = Vscode_jsonrpc_connection.ProgressToken
  module ProgressType = Vscode_jsonrpc_connection.ProgressType
  module HandlerResult = Vscode_jsonrpc_connection.HandlerResult
  module StarRequestHandler = Vscode_jsonrpc_connection.StarRequestHandler
  module GenericRequestHandler = Vscode_jsonrpc_connection.GenericRequestHandler
  module StarNotificationHandler =
    Vscode_jsonrpc_connection.StarNotificationHandler
  module GenericNotificationHandler =
    Vscode_jsonrpc_connection.GenericNotificationHandler
  module Trace = Vscode_jsonrpc_connection.Trace
  module TraceValues = Vscode_jsonrpc_connection.TraceValues
  module TraceFormat = Vscode_jsonrpc_connection.TraceFormat
  module TraceOptions = Vscode_jsonrpc_connection.TraceOptions
  module SetTraceParams = Vscode_jsonrpc_connection.SetTraceParams
  module SetTraceNotification = Vscode_jsonrpc_connection.SetTraceNotification
  module LogTraceParams = Vscode_jsonrpc_connection.LogTraceParams
  module LogTraceNotification = Vscode_jsonrpc_connection.LogTraceNotification
  module Tracer = Vscode_jsonrpc_connection.Tracer
  module ConnectionErrors = Vscode_jsonrpc_connection.ConnectionErrors
  module ConnectionError = Vscode_jsonrpc_connection.ConnectionError
  module CancellationId = Vscode_jsonrpc_connection.CancellationId

  module CancellationReceiverStrategy =
    Vscode_jsonrpc_connection.CancellationReceiverStrategy

  module CancellationSenderStrategy =
    Vscode_jsonrpc_connection.CancellationSenderStrategy
  module CancellationStrategy = Vscode_jsonrpc_connection.CancellationStrategy
  module RAL = Vscode_jsonrpc_ral.RAL
end
