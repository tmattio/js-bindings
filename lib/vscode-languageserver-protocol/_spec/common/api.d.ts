import type { integer } from 'vscode-languageserver-types';
export * from 'vscode-jsonrpc';
export * from 'vscode-languageserver-types';
export * from './messages';
export * from './protocol';
export { ProtocolConnection, createProtocolConnection } from './connection';
export declare namespace LSPErrorCodes {
    /**
    * This is the start range of LSP reserved error codes.
    * It doesn't denote a real error code.
    *
    * @since 3.16.0
    */
    const lspReservedErrorRangeStart: integer;
    /**
     * The server cancelled the request. This error code should
     * only be used for requests that explicitly support being
     * server cancellable.
     *
     * @since 3.17.0
     */
    const ServerCancelled: integer;
    /**
     * The server detected that the content of a document got
     * modified outside normal conditions. A server should
     * NOT send this error code if it detects a content change
     * in it unprocessed messages. The result even computed
     * on an older state might still be useful for the client.
     *
     * If a client decides that a result is not of any use anymore
     * the client should cancel the request.
     */
    const ContentModified: integer;
    /**
     * The client has canceled a request and a server as detected
     * the cancel.
     */
    const RequestCancelled: integer;
    /**
    * This is the end range of LSP reserved error codes.
    * It doesn't denote a real error code.
    *
    * @since 3.16.0
    */
    const lspReservedErrorRangeEnd: integer;
}
import * as diag from './proposed.diagnostic';
export declare namespace Proposed {
    type DiagnosticClientCapabilities = diag.DiagnosticClientCapabilities;
    type $DiagnosticClientCapabilities = diag.$DiagnosticClientCapabilities;
    type DiagnosticOptions = diag.DiagnosticOptions;
    type DiagnosticRegistrationOptions = diag.DiagnosticRegistrationOptions;
    type $DiagnosticServerCapabilities = diag.$DiagnosticServerCapabilities;
    type DocumentDiagnosticParams = diag.DocumentDiagnosticParams;
    type DiagnosticServerCancellationData = diag.DiagnosticServerCancellationData;
    const DiagnosticServerCancellationData: typeof diag.DiagnosticServerCancellationData;
    type DocumentDiagnosticReport = diag.DocumentDiagnosticReport;
    type DocumentDiagnosticReportKind = diag.DocumentDiagnosticReportKind;
    const DocumentDiagnosticReportKind: typeof diag.DocumentDiagnosticReportKind;
    type DocumentDiagnosticReportPartialResult = diag.DocumentDiagnosticReportPartialResult;
    const DocumentDiagnosticRequest: typeof diag.DocumentDiagnosticRequest;
    type WorkspaceDiagnosticParams = diag.WorkspaceDiagnosticParams;
    type WorkspaceDiagnosticReport = diag.WorkspaceDiagnosticReport;
    type WorkspaceDiagnosticReportPartialResult = diag.WorkspaceDiagnosticReportPartialResult;
    const DiagnosticRefreshRequest: typeof diag.DiagnosticRefreshRequest;
}
