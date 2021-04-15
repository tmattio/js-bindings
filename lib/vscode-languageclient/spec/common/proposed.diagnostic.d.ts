import { Disposable, CancellationToken, ProviderResult, Diagnostic as VDiagnostic, TextDocument, Event as VEvent, EventEmitter } from 'vscode';
import { Proposed, ClientCapabilities, ServerCapabilities, DocumentSelector } from 'vscode-languageserver-protocol';
import { TextDocumentFeature, BaseLanguageClient } from './client';
declare enum VDocumentDiagnosticReportKind {
    /**
     * A new diagnostic report with a full
     * set of problems.
     */
    new = "new",
    /**
     * A report indicating that the last
     * returned reports is still accurate.
     */
    unChanged = "unChanged"
}
declare type VDocumentDiagnosticReport = {
    /**
     * A full document diagnostic report.
     */
    kind: VDocumentDiagnosticReportKind.new;
    /**
     * An optional result id. If provided it will
     * be sent on the next diagnostic request for the
     * same document.
     */
    resultId?: string;
    /**
     * The actual items.
     */
    items: VDiagnostic[];
} | {
    /**
     * A document diagnostic report indicating
     * no changes to the last result. A server can
     * only return `unchanged` if result ids are
     * provided.
     */
    kind: VDocumentDiagnosticReportKind.unChanged;
    /**
     * A result id which will be sent on the next
     * diagnostic request for the same document.
     */
    resultId: string;
};
export interface DiagnosticProvider {
    onDidChangeDiagnostics: VEvent<void>;
    provideDiagnostics(textDocument: TextDocument, token: CancellationToken): ProviderResult<VDocumentDiagnosticReport>;
}
export interface ProvideDiagnosticSignature {
    (this: void, textDocument: TextDocument, token: CancellationToken): ProviderResult<VDocumentDiagnosticReport>;
}
export interface DiagnosticProviderMiddleware {
    provideDiagnostics?: (this: void, document: TextDocument, token: CancellationToken, next: ProvideDiagnosticSignature) => ProviderResult<VDocumentDiagnosticReport>;
}
export interface DiagnosticFeatureProvider {
    onDidChangeDiagnosticsEmitter: EventEmitter<void>;
    provider: DiagnosticProvider;
}
export declare class DiagnosticFeature extends TextDocumentFeature<Proposed.DiagnosticOptions, Proposed.DiagnosticRegistrationOptions, DiagnosticFeatureProvider> {
    constructor(client: BaseLanguageClient);
    fillClientCapabilities(capabilities: ClientCapabilities & Proposed.$DiagnosticClientCapabilities): void;
    initialize(capabilities: ServerCapabilities & Proposed.$DiagnosticServerCapabilities, documentSelector: DocumentSelector): void;
    protected registerLanguageProvider(options: Proposed.DiagnosticRegistrationOptions): [Disposable, DiagnosticFeatureProvider];
}
export {};
