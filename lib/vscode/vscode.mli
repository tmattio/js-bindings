[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

[@@@js.scope "__LIB__VSCODE__IMPORTS"]

open Es2015

module Vscode : sig
  val version : string [@@js.global "version"]

  module Command : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]

    val command : t -> string [@@js.get "command"]

    val set_command : t -> string -> unit [@@js.set "command"]

    val tooltip : t -> string [@@js.get "tooltip"]

    val set_tooltip : t -> string -> unit [@@js.set "tooltip"]

    val arguments : t -> any list [@@js.get "arguments"]

    val set_arguments : t -> any list -> unit [@@js.set "arguments"]

    val create
      :  title:string
      -> command:string
      -> ?tooltip:string
      -> ?arguments:any list
      -> unit
      -> t
      [@@js.builder]
  end
  [@@js.scope "Command"]

  module Position : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val line : t -> int [@@js.get "line"]

    val character : t -> int [@@js.get "character"]

    val create : line:int -> character:int -> t [@@js.create]

    val is_before : t -> other:t -> bool [@@js.call "isBefore"]

    val is_before_or_equal : t -> other:t -> bool [@@js.call "isBeforeOrEqual"]

    val is_after : t -> other:t -> bool [@@js.call "isAfter"]

    val is_after_or_equal : t -> other:t -> bool [@@js.call "isAfterOrEqual"]

    val is_equal : t -> other:t -> bool [@@js.call "isEqual"]

    val compare_to : t -> other:t -> int [@@js.call "compareTo"]

    val translate : t -> ?line_delta:int -> ?character_delta:int -> unit -> t
      [@@js.call "translate"]

    module TranslateChange : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val line_delta : t -> int [@@js.get "lineDelta"]

      val set_line_delta : t -> int -> unit [@@js.set "lineDelta"]

      val character_delta : t -> int [@@js.get "characterDelta"]

      val set_character_delta : t -> int -> unit [@@js.set "characterDelta"]
    end

    val translate' : t -> TranslateChange.t -> t [@@js.call "translate"]

    val with_ : t -> ?line:int -> ?character:int -> unit -> t [@@js.call "with"]

    module WithChange : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val line : t -> int [@@js.get "line"]

      val set_line : t -> int -> unit [@@js.set "line"]

      val character : t -> int [@@js.get "character"]

      val set_character : t -> int -> unit [@@js.set "character"]
    end

    val with' : t -> WithChange.t -> t [@@js.call "with"]
  end
  [@@js.scope "Position"]

  module Range : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val start : t -> Position.t [@@js.get "start"]

    val end_ : t -> Position.t [@@js.get "end"]

    val create : start:Position.t -> end_:Position.t -> t [@@js.create]

    val create'
      :  start_line:int
      -> start_character:int
      -> end_line:int
      -> end_character:int
      -> t
      [@@js.create]

    val is_empty : t -> bool [@@js.get "isEmpty"]

    val set_is_empty : t -> bool -> unit [@@js.set "isEmpty"]

    val is_single_line : t -> bool [@@js.get "isSingleLine"]

    val set_is_single_line : t -> bool -> unit [@@js.set "isSingleLine"]

    val contains : t -> (Position.t, t) union2 -> bool [@@js.call "contains"]

    val is_equal : t -> other:t -> bool [@@js.call "isEqual"]

    val intersection : t -> range:t -> t or_undefined [@@js.call "intersection"]

    val union : t -> other:t -> t [@@js.call "union"]

    val with_ : t -> ?start:Position.t -> ?end_:Position.t -> unit -> t
      [@@js.call "with"]

    module WithChange : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val start : t -> Position.t [@@js.get "start"]

      val set_start : t -> Position.t -> unit [@@js.set "start"]

      val end_ : t -> Position.t [@@js.get "end"]

      val set_end : t -> Position.t -> unit [@@js.set "end"]
    end

    val with' : t -> change:WithChange.t -> t [@@js.call "with"]
  end
  [@@js.scope "Range"]

  module Uri : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val parse : string -> ?strict:bool -> unit -> t [@@js.global "parse"]

    val file : string -> t [@@js.global "file"]

    val join_path : t -> (string list[@js.variadic]) -> t
      [@@js.global "joinPath"]

    val create
      :  scheme:string
      -> authority:string
      -> path:string
      -> query:string
      -> fragment:string
      -> t
      [@@js.create]

    val scheme : t -> string [@@js.get "scheme"]

    val authority : t -> string [@@js.get "authority"]

    val path : t -> string [@@js.get "path"]

    val query : t -> string [@@js.get "query"]

    val fragment : t -> string [@@js.get "fragment"]

    val fs_path : t -> string [@@js.get "fsPath"]

    module WithChange : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val scheme : t -> string [@@js.get "scheme"]

      val set_scheme : t -> string -> unit [@@js.set "scheme"]

      val authority : t -> string [@@js.get "authority"]

      val set_authority : t -> string -> unit [@@js.set "authority"]

      val path : t -> string [@@js.get "path"]

      val set_path : t -> string -> unit [@@js.set "path"]

      val query : t -> string [@@js.get "query"]

      val set_query : t -> string -> unit [@@js.set "query"]

      val fragment : t -> string [@@js.get "fragment"]

      val set_fragment : t -> string -> unit [@@js.set "fragment"]
    end

    val with_ : t -> WithChange.t -> t [@@js.call "with"]

    val to_string : t -> ?skip_encoding:bool -> unit -> string
      [@@js.call "toString"]

    val to_json : t -> any [@@js.call "toJSON"]
  end
  [@@js.scope "Uri"]

  module TextLine : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val line_number : t -> int [@@js.get "lineNumber"]

    val text : t -> string [@@js.get "text"]

    val range : t -> Range.t [@@js.get "range"]

    val range_including_line_break : t -> Range.t
      [@@js.get "rangeIncludingLineBreak"]

    val first_non_whitespace_character_index : t -> int
      [@@js.get "firstNonWhitespaceCharacterIndex"]

    val is_empty_or_whitespace : t -> bool [@@js.get "isEmptyOrWhitespace"]
  end
  [@@js.scope "TextLine"]

  module EndOfLine : sig
    type t = ([ `CRLF [@js 2] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TextDocument : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val file_name : t -> string [@@js.get "fileName"]

    val is_untitled : t -> bool [@@js.get "isUntitled"]

    val language_id : t -> string [@@js.get "languageId"]

    val version : t -> int [@@js.get "version"]

    val is_dirty : t -> bool [@@js.get "isDirty"]

    val is_closed : t -> bool [@@js.get "isClosed"]

    val save : t -> bool Promise.t [@@js.call "save"]

    val eol : t -> EndOfLine.t [@@js.get "eol"]

    val line_count : t -> int [@@js.get "lineCount"]

    val line_at : t -> int -> TextLine.t [@@js.call "lineAt"]

    val line_at' : t -> Position.t -> TextLine.t [@@js.call "lineAt"]

    val offset_at : t -> Position.t -> int [@@js.call "offsetAt"]

    val position_at : t -> int -> Position.t [@@js.call "positionAt"]

    val get_text : t -> ?range:Range.t -> unit -> string [@@js.call "getText"]

    val get_word_range_at_position
      :  t
      -> Position.t
      -> ?regex:regexp
      -> unit
      -> Range.t or_undefined
      [@@js.call "getWordRangeAtPosition"]

    val validate_range : t -> Range.t -> Range.t [@@js.call "validateRange"]

    val validate_position : t -> Position.t -> Position.t
      [@@js.call "validatePosition"]
  end
  [@@js.scope "TextDocument"]

  module Selection : sig
    include module type of struct
      include Range
    end

    val anchor : t -> Position.t [@@js.get "anchor"]

    val set_anchor : t -> Position.t -> unit [@@js.set "anchor"]

    val active : t -> Position.t [@@js.get "active"]

    val set_active : t -> Position.t -> unit [@@js.set "active"]

    val create : anchor:Position.t -> active:Position.t -> t [@@js.create]

    val create'
      :  anchor_line:int
      -> anchor_character:int
      -> active_line:int
      -> active_character:int
      -> t
      [@@js.create]

    val is_reversed : t -> bool [@@js.get "isReversed"]

    val set_is_reversed : t -> bool -> unit [@@js.set "isReversed"]
  end
  [@@js.scope "Selection"]

  module TextEditorCursorStyle : sig
    type t =
      ([ `Block [@js 2]
       | `Underline [@js 3]
       | `LineThin [@js 4]
       | `BlockOutline [@js 5]
       | `UnderlineThin [@js 6]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TextEditorLineNumbersStyle : sig
    type t =
      ([ `On [@js 1]
       | `Relative [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TextEditorOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val tab_size : t -> string or_number [@@js.get "tabSize"]

    val set_tab_size : t -> string or_number -> unit [@@js.set "tabSize"]

    val insert_spaces : t -> bool or_string [@@js.get "insertSpaces"]

    val set_insert_spaces : t -> bool or_string -> unit
      [@@js.set "insertSpaces"]

    val cursor_style : t -> TextEditorCursorStyle.t [@@js.get "cursorStyle"]

    val set_cursor_style : t -> TextEditorCursorStyle.t -> unit
      [@@js.set "cursorStyle"]

    val line_numbers : t -> TextEditorLineNumbersStyle.t
      [@@js.get "lineNumbers"]

    val set_line_numbers : t -> TextEditorLineNumbersStyle.t -> unit
      [@@js.set "lineNumbers"]
  end
  [@@js.scope "TextEditorOptions"]

  module TextEditorDecorationType : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val key : t -> string [@@js.get "key"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "TextEditorDecorationType"]

  module TextEditorRevealType : sig
    type t =
      ([ `InCenter [@js 1]
       | `InCenterIfOutsideViewport [@js 2]
       | `AtTop [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TextEditorSelectionChangeKind : sig
    type t =
      ([ `Mouse [@js 2]
       | `Command [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TextEditorEdit : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val replace
      :  t
      -> location:(Position.t, Range.t, Selection.t) union3
      -> value:string
      -> unit
      [@@js.call "replace"]

    val insert : t -> location:Position.t -> value:string -> unit
      [@@js.call "insert"]

    val delete : t -> (Range.t, Selection.t) union2 -> unit [@@js.call "delete"]

    val set_end_of_line : t -> EndOfLine.t -> unit [@@js.call "setEndOfLine"]
  end
  [@@js.scope "TextEditorEdit"]

  module ViewColumn : sig
    type t =
      ([ `Beside [@js -2]
       | `One [@js 1]
       | `Two [@js 2]
       | `Three [@js 3]
       | `Four [@js 4]
       | `Five [@js 5]
       | `Six [@js 6]
       | `Seven [@js 7]
       | `Eight [@js 8]
       | `Nine [@js 9]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SnippetString : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]

    val create : ?value:string -> unit -> t [@@js.create]

    val append_text : t -> string -> t [@@js.call "appendText"]

    val append_tabstop : t -> ?number:int -> unit -> t
      [@@js.call "appendTabstop"]

    val append_placeholder : t -> string -> ?number:int -> unit -> t
      [@@js.call "appendPlaceholder"]

    val append_choice : t -> string list -> ?number:int -> unit -> t
      [@@js.call "appendChoice"]

    val append_variable : t -> string -> default:string -> t
      [@@js.call "appendVariable"]
  end
  [@@js.scope "SnippetString"]

  module ThemeColor : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : string -> t [@@js.create]
  end
  [@@js.scope "ThemeColor"]

  module ThemeIcon : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val file : unit -> t [@@js.get "File"]

    val folder : unit -> t [@@js.get "Folder"]

    val id : t -> string [@@js.get "id"]

    val color : t -> ThemeColor.t [@@js.get "color"]

    val create : string -> ?color:ThemeColor.t -> unit -> t [@@js.create]
  end
  [@@js.scope "ThemeIcon"]

  module ThemableDecorationAttachmentRenderOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val content_text : t -> string [@@js.get "contentText"]

    val set_content_text : t -> string -> unit [@@js.set "contentText"]

    val content_icon_path : t -> Uri.t or_string [@@js.get "contentIconPath"]

    val set_content_icon_path : t -> Uri.t or_string -> unit
      [@@js.set "contentIconPath"]

    val border : t -> string [@@js.get "border"]

    val set_border : t -> string -> unit [@@js.set "border"]

    val border_color : t -> ThemeColor.t or_string [@@js.get "borderColor"]

    val set_border_color : t -> ThemeColor.t or_string -> unit
      [@@js.set "borderColor"]

    val font_style : t -> string [@@js.get "fontStyle"]

    val set_font_style : t -> string -> unit [@@js.set "fontStyle"]

    val font_weight : t -> string [@@js.get "fontWeight"]

    val set_font_weight : t -> string -> unit [@@js.set "fontWeight"]

    val text_decoration : t -> string [@@js.get "textDecoration"]

    val set_text_decoration : t -> string -> unit [@@js.set "textDecoration"]

    val color : t -> ThemeColor.t or_string [@@js.get "color"]

    val set_color : t -> ThemeColor.t or_string -> unit [@@js.set "color"]

    val background_color : t -> ThemeColor.t or_string
      [@@js.get "backgroundColor"]

    val set_background_color : t -> ThemeColor.t or_string -> unit
      [@@js.set "backgroundColor"]

    val margin : t -> string [@@js.get "margin"]

    val set_margin : t -> string -> unit [@@js.set "margin"]

    val width : t -> string [@@js.get "width"]

    val set_width : t -> string -> unit [@@js.set "width"]

    val height : t -> string [@@js.get "height"]

    val set_height : t -> string -> unit [@@js.set "height"]
  end
  [@@js.scope "ThemableDecorationAttachmentRenderOptions"]

  module ThemableDecorationRenderOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val background_color : t -> ThemeColor.t or_string
      [@@js.get "backgroundColor"]

    val set_background_color : t -> ThemeColor.t or_string -> unit
      [@@js.set "backgroundColor"]

    val outline : t -> string [@@js.get "outline"]

    val set_outline : t -> string -> unit [@@js.set "outline"]

    val outline_color : t -> ThemeColor.t or_string [@@js.get "outlineColor"]

    val set_outline_color : t -> ThemeColor.t or_string -> unit
      [@@js.set "outlineColor"]

    val outline_style : t -> string [@@js.get "outlineStyle"]

    val set_outline_style : t -> string -> unit [@@js.set "outlineStyle"]

    val outline_width : t -> string [@@js.get "outlineWidth"]

    val set_outline_width : t -> string -> unit [@@js.set "outlineWidth"]

    val border : t -> string [@@js.get "border"]

    val set_border : t -> string -> unit [@@js.set "border"]

    val border_color : t -> ThemeColor.t or_string [@@js.get "borderColor"]

    val set_border_color : t -> ThemeColor.t or_string -> unit
      [@@js.set "borderColor"]

    val border_radius : t -> string [@@js.get "borderRadius"]

    val set_border_radius : t -> string -> unit [@@js.set "borderRadius"]

    val border_spacing : t -> string [@@js.get "borderSpacing"]

    val set_border_spacing : t -> string -> unit [@@js.set "borderSpacing"]

    val border_style : t -> string [@@js.get "borderStyle"]

    val set_border_style : t -> string -> unit [@@js.set "borderStyle"]

    val border_width : t -> string [@@js.get "borderWidth"]

    val set_border_width : t -> string -> unit [@@js.set "borderWidth"]

    val font_style : t -> string [@@js.get "fontStyle"]

    val set_font_style : t -> string -> unit [@@js.set "fontStyle"]

    val font_weight : t -> string [@@js.get "fontWeight"]

    val set_font_weight : t -> string -> unit [@@js.set "fontWeight"]

    val text_decoration : t -> string [@@js.get "textDecoration"]

    val set_text_decoration : t -> string -> unit [@@js.set "textDecoration"]

    val cursor : t -> string [@@js.get "cursor"]

    val set_cursor : t -> string -> unit [@@js.set "cursor"]

    val color : t -> ThemeColor.t or_string [@@js.get "color"]

    val set_color : t -> ThemeColor.t or_string -> unit [@@js.set "color"]

    val opacity : t -> string [@@js.get "opacity"]

    val set_opacity : t -> string -> unit [@@js.set "opacity"]

    val letter_spacing : t -> string [@@js.get "letterSpacing"]

    val set_letter_spacing : t -> string -> unit [@@js.set "letterSpacing"]

    val gutter_icon_path : t -> Uri.t or_string [@@js.get "gutterIconPath"]

    val set_gutter_icon_path : t -> Uri.t or_string -> unit
      [@@js.set "gutterIconPath"]

    val gutter_icon_size : t -> string [@@js.get "gutterIconSize"]

    val set_gutter_icon_size : t -> string -> unit [@@js.set "gutterIconSize"]

    val overview_ruler_color : t -> ThemeColor.t or_string
      [@@js.get "overviewRulerColor"]

    val set_overview_ruler_color : t -> ThemeColor.t or_string -> unit
      [@@js.set "overviewRulerColor"]

    val before : t -> ThemableDecorationAttachmentRenderOptions.t
      [@@js.get "before"]

    val set_before : t -> ThemableDecorationAttachmentRenderOptions.t -> unit
      [@@js.set "before"]

    val after : t -> ThemableDecorationAttachmentRenderOptions.t
      [@@js.get "after"]

    val set_after : t -> ThemableDecorationAttachmentRenderOptions.t -> unit
      [@@js.set "after"]
  end
  [@@js.scope "ThemableDecorationRenderOptions"]

  module OverviewRulerLane : sig
    type t =
      ([ `Center [@js 2]
       | `Right [@js 4]
       | `Full [@js 7]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DecorationRangeBehavior : sig
    type t =
      ([ `ClosedClosed [@js 1]
       | `OpenClosed [@js 2]
       | `ClosedOpen [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DecorationRenderOptions : sig
    include module type of struct
      include ThemableDecorationRenderOptions
    end

    val is_whole_line : t -> bool [@@js.get "isWholeLine"]

    val set_is_whole_line : t -> bool -> unit [@@js.set "isWholeLine"]

    val range_behavior : t -> DecorationRangeBehavior.t
      [@@js.get "rangeBehavior"]

    val set_range_behavior : t -> DecorationRangeBehavior.t -> unit
      [@@js.set "rangeBehavior"]

    val overview_ruler_lane : t -> OverviewRulerLane.t
      [@@js.get "overviewRulerLane"]

    val set_overview_ruler_lane : t -> OverviewRulerLane.t -> unit
      [@@js.set "overviewRulerLane"]

    val light : t -> ThemableDecorationRenderOptions.t [@@js.get "light"]

    val set_light : t -> ThemableDecorationRenderOptions.t -> unit
      [@@js.set "light"]

    val dark : t -> ThemableDecorationRenderOptions.t [@@js.get "dark"]

    val set_dark : t -> ThemableDecorationRenderOptions.t -> unit
      [@@js.set "dark"]
  end
  [@@js.scope "DecorationRenderOptions"]

  module ThemableDecorationInstanceRenderOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val before : t -> ThemableDecorationAttachmentRenderOptions.t
      [@@js.get "before"]

    val set_before : t -> ThemableDecorationAttachmentRenderOptions.t -> unit
      [@@js.set "before"]

    val after : t -> ThemableDecorationAttachmentRenderOptions.t
      [@@js.get "after"]

    val set_after : t -> ThemableDecorationAttachmentRenderOptions.t -> unit
      [@@js.set "after"]
  end
  [@@js.scope "ThemableDecorationInstanceRenderOptions"]

  module DecorationInstanceRenderOptions : sig
    include module type of struct
      include ThemableDecorationInstanceRenderOptions
    end

    val light : t -> ThemableDecorationInstanceRenderOptions.t
      [@@js.get "light"]

    val set_light : t -> ThemableDecorationInstanceRenderOptions.t -> unit
      [@@js.set "light"]

    val dark : t -> ThemableDecorationInstanceRenderOptions.t [@@js.get "dark"]

    val set_dark : t -> ThemableDecorationInstanceRenderOptions.t -> unit
      [@@js.set "dark"]
  end
  [@@js.scope "DecorationInstanceRenderOptions"]

  module MarkedString : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DecorationOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val hover_message : t -> (MarkedString.t, MarkedString.t) or_array
      [@@js.get "hoverMessage"]

    val set_hover_message
      :  t
      -> (MarkedString.t, MarkedString.t) or_array
      -> unit
      [@@js.set "hoverMessage"]

    val render_options : t -> DecorationInstanceRenderOptions.t
      [@@js.get "renderOptions"]

    val set_render_options : t -> DecorationInstanceRenderOptions.t -> unit
      [@@js.set "renderOptions"]
  end
  [@@js.scope "DecorationOptions"]

  module TextEditor : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> TextDocument.t [@@js.get "document"]

    val selection : t -> Selection.t [@@js.get "selection"]

    val set_selection : t -> Selection.t -> unit [@@js.set "selection"]

    val selections : t -> Selection.t list [@@js.get "selections"]

    val set_selections : t -> Selection.t list -> unit [@@js.set "selections"]

    val visible_ranges : t -> Range.t list [@@js.get "visibleRanges"]

    val options : t -> TextEditorOptions.t [@@js.get "options"]

    val set_options : t -> TextEditorOptions.t -> unit [@@js.set "options"]

    val view_column : t -> ViewColumn.t [@@js.get "viewColumn"]

    module EditOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val undo_stop_before : t -> bool [@@js.get "undoStopBefore"]

      val set_undo_stop_before : t -> bool -> unit [@@js.set "undoStopBefore"]

      val undo_stop_after : t -> bool [@@js.get "undoStopAfter"]

      val set_undo_stop_after : t -> bool -> unit [@@js.set "undoStopAfter"]
    end

    val edit
      :  t
      -> (TextEditorEdit.t -> unit)
      -> ?options:EditOptions.t
      -> unit
      -> bool Promise.t
      [@@js.call "edit"]

    val insert_snippet
      :  t
      -> SnippetString.t
      -> ?location:(Position.t, Range.t, Position.t list, Range.t list) union4
      -> ?options:EditOptions.t
      -> unit
      -> bool Promise.t
      [@@js.call "insertSnippet"]

    val set_decorations
      :  t
      -> TextEditorDecorationType.t
      -> (DecorationOptions.t, Range.t) union2 list
      -> unit
      [@@js.call "setDecorations"]

    val reveal_range
      :  t
      -> Range.t
      -> ?reveal_type_:TextEditorRevealType.t
      -> unit
      -> unit
      [@@js.call "revealRange"]

    val show : t -> ?column:ViewColumn.t -> unit -> unit [@@js.call "show"]

    val hide : t -> unit [@@js.call "hide"]
  end
  [@@js.scope "TextEditor"]

  module TextEditorSelectionChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val text_editor : t -> TextEditor.t [@@js.get "textEditor"]

    val selections : t -> Selection.t list [@@js.get "selections"]

    val kind : t -> TextEditorSelectionChangeKind.t [@@js.get "kind"]
  end
  [@@js.scope "TextEditorSelectionChangeEvent"]

  module TextEditorVisibleRangesChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val text_editor : t -> TextEditor.t [@@js.get "textEditor"]

    val visible_ranges : t -> Range.t list [@@js.get "visibleRanges"]
  end
  [@@js.scope "TextEditorVisibleRangesChangeEvent"]

  module TextEditorOptionsChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val text_editor : t -> TextEditor.t [@@js.get "textEditor"]

    val options : t -> TextEditorOptions.t [@@js.get "options"]
  end
  [@@js.scope "TextEditorOptionsChangeEvent"]

  module TextEditorViewColumnChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val text_editor : t -> TextEditor.t [@@js.get "textEditor"]

    val view_column : t -> ViewColumn.t [@@js.get "viewColumn"]
  end
  [@@js.scope "TextEditorViewColumnChangeEvent"]

  module TextDocumentShowOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val view_column : t -> ViewColumn.t [@@js.get "viewColumn"]

    val set_view_column : t -> ViewColumn.t -> unit [@@js.set "viewColumn"]

    val preserve_focus : t -> bool [@@js.get "preserveFocus"]

    val set_preserve_focus : t -> bool -> unit [@@js.set "preserveFocus"]

    val preview : t -> bool [@@js.get "preview"]

    val set_preview : t -> bool -> unit [@@js.set "preview"]

    val selection : t -> Range.t [@@js.get "selection"]

    val set_selection : t -> Range.t -> unit [@@js.set "selection"]
  end
  [@@js.scope "TextDocumentShowOptions"]

  module DisposableLike : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val dispose : t -> any [@@js.call "dispose"]
  end

  module Disposable : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val from : (DisposableLike.t list[@js.variadic]) -> t [@@js.global "from"]

    val create : untyped_function -> t [@@js.create]

    val dispose : t -> any [@@js.call "dispose"]
  end
  [@@js.scope "Disposable"]

  module Event : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val apply
      :  'T t
      -> ('T -> any)
      -> ?this_args:any
      -> ?disposables:Disposable.t list
      -> unit
      -> Disposable.t
      [@@js.apply]
  end
  [@@js.scope "Event"]

  module CancellationToken : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val is_cancellation_requested : t -> bool
      [@@js.get "isCancellationRequested"]

    val set_is_cancellation_requested : t -> bool -> unit
      [@@js.set "isCancellationRequested"]

    val on_cancellation_requested : t -> any Event.t
      [@@js.get "onCancellationRequested"]

    val set_on_cancellation_requested : t -> any Event.t -> unit
      [@@js.set "onCancellationRequested"]
  end
  [@@js.scope "CancellationToken"]

  module CancellationTokenSource : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val token : t -> CancellationToken.t [@@js.get "token"]

    val set_token : t -> CancellationToken.t -> unit [@@js.set "token"]

    val cancel : t -> unit [@@js.call "cancel"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "CancellationTokenSource"]

  module CancellationError : sig
    include module type of struct
      include Error
    end

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]
  end
  [@@js.scope "CancellationError"]

  module EventEmitter : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val event : 'T t -> 'T Event.t [@@js.get "event"]

    val set_event : 'T t -> 'T Event.t -> unit [@@js.set "event"]

    val fire : 'T t -> 'T -> unit [@@js.call "fire"]

    val dispose : 'T t -> unit [@@js.call "dispose"]

    val create : unit -> 'T t [@@js.new "EventEmitter"]
  end

  module FileSystemWatcher : sig
    include module type of struct
      include Disposable
    end

    val ignore_create_events : t -> bool [@@js.get "ignoreCreateEvents"]

    val set_ignore_create_events : t -> bool -> unit
      [@@js.set "ignoreCreateEvents"]

    val ignore_change_events : t -> bool [@@js.get "ignoreChangeEvents"]

    val set_ignore_change_events : t -> bool -> unit
      [@@js.set "ignoreChangeEvents"]

    val ignore_delete_events : t -> bool [@@js.get "ignoreDeleteEvents"]

    val set_ignore_delete_events : t -> bool -> unit
      [@@js.set "ignoreDeleteEvents"]

    val on_did_create : t -> Uri.t Event.t [@@js.get "onDidCreate"]

    val set_on_did_create : t -> Uri.t Event.t -> unit [@@js.set "onDidCreate"]

    val on_did_change : t -> Uri.t Event.t [@@js.get "onDidChange"]

    val set_on_did_change : t -> Uri.t Event.t -> unit [@@js.set "onDidChange"]

    val on_did_delete : t -> Uri.t Event.t [@@js.get "onDidDelete"]

    val set_on_did_delete : t -> Uri.t Event.t -> unit [@@js.set "onDidDelete"]
  end
  [@@js.scope "FileSystemWatcher"]

  module ProviderResult : sig
    type 'T t =
      ([ `Value of 'T or_null_or_undefined
       | `Promise of 'T or_null_or_undefined Promise.t
       ]
      [@js.union])

    [@@@js.stop]

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    [@@@js.start]

    [@@@js.implem
    let t_to_js ml_to_js = function
      | `Value v ->
        or_undefined_to_js ml_to_js v
      | `Promise p ->
        Promise.t_to_js (or_undefined_to_js ml_to_js) p

    let t_of_js ml_of_js js_val =
      if Ojs.has_property js_val "then" then
        `Promise (Promise.t_of_js (or_undefined_of_js ml_of_js) js_val)
      else
        `Value (or_undefined_of_js ml_of_js js_val)]
  end

  module TextDocumentContentProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_change : t -> Uri.t Event.t [@@js.get "onDidChange"]

    val set_on_did_change : t -> Uri.t Event.t -> unit [@@js.set "onDidChange"]

    val provide_text_document_content
      :  t
      -> uri:Uri.t
      -> token:CancellationToken.t
      -> string ProviderResult.t
      [@@js.call "provideTextDocumentContent"]
  end
  [@@js.scope "TextDocumentContentProvider"]

  module QuickPickItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val description : t -> string [@@js.get "description"]

    val set_description : t -> string -> unit [@@js.set "description"]

    val detail : t -> string [@@js.get "detail"]

    val set_detail : t -> string -> unit [@@js.set "detail"]

    val picked : t -> bool [@@js.get "picked"]

    val set_picked : t -> bool -> unit [@@js.set "picked"]

    val always_show : t -> bool [@@js.get "alwaysShow"]

    val set_always_show : t -> bool -> unit [@@js.set "alwaysShow"]
  end
  [@@js.scope "QuickPickItem"]

  module QuickPickOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val match_on_description : t -> bool [@@js.get "matchOnDescription"]

    val set_match_on_description : t -> bool -> unit
      [@@js.set "matchOnDescription"]

    val match_on_detail : t -> bool [@@js.get "matchOnDetail"]

    val set_match_on_detail : t -> bool -> unit [@@js.set "matchOnDetail"]

    val place_holder : t -> string [@@js.get "placeHolder"]

    val set_place_holder : t -> string -> unit [@@js.set "placeHolder"]

    val ignore_focus_out : t -> bool [@@js.get "ignoreFocusOut"]

    val set_ignore_focus_out : t -> bool -> unit [@@js.set "ignoreFocusOut"]

    val can_pick_many : t -> bool [@@js.get "canPickMany"]

    val set_can_pick_many : t -> bool -> unit [@@js.set "canPickMany"]

    val on_did_select_item : t -> item:QuickPickItem.t or_string -> any
      [@@js.call "onDidSelectItem"]
  end
  [@@js.scope "QuickPickOptions"]

  module WorkspaceFolderPickOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val place_holder : t -> string [@@js.get "placeHolder"]

    val set_place_holder : t -> string -> unit [@@js.set "placeHolder"]

    val ignore_focus_out : t -> bool [@@js.get "ignoreFocusOut"]

    val set_ignore_focus_out : t -> bool -> unit [@@js.set "ignoreFocusOut"]
  end
  [@@js.scope "WorkspaceFolderPickOptions"]

  module OpenDialogOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val default_uri : t -> Uri.t [@@js.get "defaultUri"]

    val set_default_uri : t -> Uri.t -> unit [@@js.set "defaultUri"]

    val open_label : t -> string [@@js.get "openLabel"]

    val set_open_label : t -> string -> unit [@@js.set "openLabel"]

    val can_select_files : t -> bool [@@js.get "canSelectFiles"]

    val set_can_select_files : t -> bool -> unit [@@js.set "canSelectFiles"]

    val can_select_folders : t -> bool [@@js.get "canSelectFolders"]

    val set_can_select_folders : t -> bool -> unit [@@js.set "canSelectFolders"]

    val can_select_many : t -> bool [@@js.get "canSelectMany"]

    val set_can_select_many : t -> bool -> unit [@@js.set "canSelectMany"]

    module Filters : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get : t -> string -> string list [@@js.index_get]

      val set : t -> string -> string list -> unit [@@js.index_set]
    end

    val filters : t -> Filters.t [@@js.get "filters"]

    val set_filters : t -> Filters.t -> unit [@@js.set "filters"]

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]
  end
  [@@js.scope "OpenDialogOptions"]

  module SaveDialogOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val default_uri : t -> Uri.t [@@js.get "defaultUri"]

    val set_default_uri : t -> Uri.t -> unit [@@js.set "defaultUri"]

    val save_label : t -> string [@@js.get "saveLabel"]

    val set_save_label : t -> string -> unit [@@js.set "saveLabel"]

    module Filters : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get : t -> string -> string list [@@js.index_get]

      val set : t -> string -> string list -> unit [@@js.index_set]
    end

    val filters : t -> Filters.t [@@js.get "filters"]

    val set_filters : t -> Filters.t -> unit [@@js.set "filters"]

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]
  end
  [@@js.scope "SaveDialogOptions"]

  module MessageItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]

    val is_close_affordance : t -> bool [@@js.get "isCloseAffordance"]

    val set_is_close_affordance : t -> bool -> unit
      [@@js.set "isCloseAffordance"]
  end
  [@@js.scope "MessageItem"]

  module MessageOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val modal : t -> bool [@@js.get "modal"]

    val set_modal : t -> bool -> unit [@@js.set "modal"]
  end
  [@@js.scope "MessageOptions"]

  module InputBoxOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]

    val value_selection : t -> int * int [@@js.get "valueSelection"]

    val set_value_selection : t -> int * int -> unit [@@js.set "valueSelection"]

    val prompt : t -> string [@@js.get "prompt"]

    val set_prompt : t -> string -> unit [@@js.set "prompt"]

    val place_holder : t -> string [@@js.get "placeHolder"]

    val set_place_holder : t -> string -> unit [@@js.set "placeHolder"]

    val password : t -> bool [@@js.get "password"]

    val set_password : t -> bool -> unit [@@js.set "password"]

    val ignore_focus_out : t -> bool [@@js.get "ignoreFocusOut"]

    val set_ignore_focus_out : t -> bool -> unit [@@js.set "ignoreFocusOut"]

    val validate_input
      :  t
      -> value:string
      -> string or_null_or_undefined Promise.t or_string or_null_or_undefined
      [@@js.call "validateInput"]
  end
  [@@js.scope "InputBoxOptions"]

  module WorkspaceFolder : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val name : t -> string [@@js.get "name"]

    val index : t -> int [@@js.get "index"]
  end
  [@@js.scope "WorkspaceFolder"]

  module RelativePattern : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val base : t -> string [@@js.get "base"]

    val set_base : t -> string -> unit [@@js.set "base"]

    val pattern : t -> string [@@js.get "pattern"]

    val set_pattern : t -> string -> unit [@@js.set "pattern"]

    val create
      :  base:(Uri.t, WorkspaceFolder.t) union2 or_string
      -> pattern:string
      -> t
      [@@js.create]
  end
  [@@js.scope "RelativePattern"]

  module GlobPattern : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DocumentFilter : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val language : t -> string [@@js.get "language"]

    val scheme : t -> string [@@js.get "scheme"]

    val pattern : t -> GlobPattern.t [@@js.get "pattern"]
  end
  [@@js.scope "DocumentFilter"]

  module DocumentSelector : sig
    type t =
      (DocumentFilter.t, DocumentFilter.t or_string list) union2 or_string

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Location : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val set_uri : t -> Uri.t -> unit [@@js.set "uri"]

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val create
      :  uri:Uri.t
      -> range_or_position:(Position.t, Range.t) union2
      -> t
      [@@js.create]
  end
  [@@js.scope "Location"]

  module DiagnosticChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uris : t -> Uri.t list [@@js.get "uris"]
  end
  [@@js.scope "DiagnosticChangeEvent"]

  module DiagnosticSeverity : sig
    type t =
      ([ `Warning [@js 1]
       | `Information [@js 2]
       | `Hint [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DiagnosticRelatedInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val location : t -> Location.t [@@js.get "location"]

    val set_location : t -> Location.t -> unit [@@js.set "location"]

    val message : t -> string [@@js.get "message"]

    val set_message : t -> string -> unit [@@js.set "message"]

    val create : location:Location.t -> message:string -> t [@@js.create]
  end
  [@@js.scope "DiagnosticRelatedInformation"]

  module DiagnosticTag : sig
    type t = ([ `Deprecated [@js 2] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Diagnostic : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val message : t -> string [@@js.get "message"]

    val set_message : t -> string -> unit [@@js.set "message"]

    val severity : t -> DiagnosticSeverity.t [@@js.get "severity"]

    val set_severity : t -> DiagnosticSeverity.t -> unit [@@js.set "severity"]

    val source : t -> string [@@js.get "source"]

    val set_source : t -> string -> unit [@@js.set "source"]

    module Code : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val value : t -> string or_number [@@js.get "value"]

      val set_value : t -> string or_number -> unit [@@js.set "value"]

      val target : t -> Uri.t [@@js.get "target"]

      val set_target : t -> Uri.t -> unit [@@js.set "target"]
    end

    val code : t -> Code.t or_string or_number [@@js.get "code"]

    val set_code : t -> Code.t or_string or_number -> unit [@@js.set "code"]

    val related_information : t -> DiagnosticRelatedInformation.t list
      [@@js.get "relatedInformation"]

    val set_related_information
      :  t
      -> DiagnosticRelatedInformation.t list
      -> unit
      [@@js.set "relatedInformation"]

    val tags : t -> DiagnosticTag.t list [@@js.get "tags"]

    val set_tags : t -> DiagnosticTag.t list -> unit [@@js.set "tags"]

    val create
      :  range:Range.t
      -> message:string
      -> ?severity:DiagnosticSeverity.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "Diagnostic"]

  module DiagnosticCollection : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set
      :  t
      -> uri:Uri.t
      -> diagnostics:Diagnostic.t list or_undefined
      -> unit
      [@@js.call "set"]

    val set'
      :  t
      -> entries:(Uri.t * Diagnostic.t list or_undefined) list
      -> unit
      [@@js.call "set"]

    val delete : t -> uri:Uri.t -> unit [@@js.call "delete"]

    val clear : t -> unit [@@js.call "clear"]

    val for_each
      :  t
      -> callback:
           (uri:Uri.t -> diagnostics:Diagnostic.t list -> collection:t -> any)
      -> ?this_arg:any
      -> unit
      -> unit
      [@@js.call "forEach"]

    val get : t -> uri:Uri.t -> Diagnostic.t list or_undefined [@@js.call "get"]

    val has : t -> uri:Uri.t -> bool [@@js.call "has"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "DiagnosticCollection"]

  module CodeActionKind : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val empty : unit -> t [@@js.get "Empty"]

    val quick_fix : unit -> t [@@js.get "QuickFix"]

    val refactor : unit -> t [@@js.get "Refactor"]

    val refactor_extract : unit -> t [@@js.get "RefactorExtract"]

    val refactor_inline : unit -> t [@@js.get "RefactorInline"]

    val refactor_rewrite : unit -> t [@@js.get "RefactorRewrite"]

    val source : unit -> t [@@js.get "Source"]

    val source_organize_imports : unit -> t [@@js.get "SourceOrganizeImports"]

    val source_fix_all : unit -> t [@@js.get "SourceFixAll"]

    val create : value:string -> t [@@js.create]

    val value : t -> string [@@js.get "value"]

    val append : t -> parts:string -> t [@@js.call "append"]

    val intersects : t -> other:t -> bool [@@js.call "intersects"]

    val contains : t -> other:t -> bool [@@js.call "contains"]
  end
  [@@js.scope "CodeActionKind"]

  module CodeActionTriggerKind : sig
    type t = ([ `Automatic [@js 2] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CodeActionContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val trigger_kind : t -> CodeActionTriggerKind.t [@@js.get "triggerKind"]

    val diagnostics : t -> Diagnostic.t list [@@js.get "diagnostics"]

    val only : t -> CodeActionKind.t [@@js.get "only"]
  end
  [@@js.scope "CodeActionContext"]

  module CodeLens : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val command : t -> Command.t [@@js.get "command"]

    val set_command : t -> Command.t -> unit [@@js.set "command"]

    val is_resolved : t -> bool [@@js.get "isResolved"]

    val create : range:Range.t -> ?command:Command.t -> unit -> t [@@js.create]
  end
  [@@js.scope "CodeLens"]

  module CodeLensProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val on_did_change_code_lenses : 'T t -> unit Event.t
      [@@js.get "onDidChangeCodeLenses"]

    val set_on_did_change_code_lenses : 'T t -> unit Event.t -> unit
      [@@js.set "onDidChangeCodeLenses"]

    val provide_code_lenses
      :  'T t
      -> document:TextDocument.t
      -> token:CancellationToken.t
      -> 'T list ProviderResult.t
      [@@js.call "provideCodeLenses"]

    val resolve_code_lens
      :  'T t
      -> code_lens:'T
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "resolveCodeLens"]
  end
  [@@js.scope "CodeLensProvider"]

  module DefinitionLink : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Definition : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DefinitionProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_definition
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> (Definition.t, DefinitionLink.t) or_array ProviderResult.t
      [@@js.call "provideDefinition"]
  end
  [@@js.scope "DefinitionProvider"]

  module ImplementationProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_implementation
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> (Definition.t, DefinitionLink.t) or_array ProviderResult.t
      [@@js.call "provideImplementation"]
  end
  [@@js.scope "ImplementationProvider"]

  module TypeDefinitionProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_type_definition
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> (Definition.t, DefinitionLink.t) or_array ProviderResult.t
      [@@js.call "provideTypeDefinition"]
  end
  [@@js.scope "TypeDefinitionProvider"]

  module Declaration : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DeclarationProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_declaration
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> Declaration.t ProviderResult.t
      [@@js.call "provideDeclaration"]
  end
  [@@js.scope "DeclarationProvider"]

  module MarkdownString : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]

    val is_trusted : t -> bool [@@js.get "isTrusted"]

    val set_is_trusted : t -> bool -> unit [@@js.set "isTrusted"]

    val support_theme_icons : t -> bool [@@js.get "supportThemeIcons"]

    val create : ?value:string -> ?support_theme_icons:bool -> unit -> t
      [@@js.create]

    val append_text : t -> value:string -> t [@@js.call "appendText"]

    val append_markdown : t -> value:string -> t [@@js.call "appendMarkdown"]

    val append_codeblock : t -> value:string -> ?language:string -> unit -> t
      [@@js.call "appendCodeblock"]
  end
  [@@js.scope "MarkdownString"]

  module Hover : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val contents : t -> MarkedString.t list [@@js.get "contents"]

    val set_contents : t -> MarkedString.t list -> unit [@@js.set "contents"]

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val create
      :  contents:(MarkedString.t, MarkedString.t) or_array
      -> ?range:Range.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "Hover"]

  module HoverProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_hover
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> Hover.t ProviderResult.t
      [@@js.call "provideHover"]
  end
  [@@js.scope "HoverProvider"]

  module EvaluatableExpression : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val expression : t -> string [@@js.get "expression"]

    val create : range:Range.t -> ?expression:string -> unit -> t [@@js.create]
  end
  [@@js.scope "EvaluatableExpression"]

  module EvaluatableExpressionProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_evaluatable_expression
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> EvaluatableExpression.t ProviderResult.t
      [@@js.call "provideEvaluatableExpression"]
  end
  [@@js.scope "EvaluatableExpressionProvider"]

  module InlineValueText : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val text : t -> string [@@js.get "text"]

    val create : range:Range.t -> text:string -> t [@@js.create]
  end
  [@@js.scope "InlineValueText"]

  module InlineValueVariableLookup : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val variable_name : t -> string [@@js.get "variableName"]

    val case_sensitive_lookup : t -> bool [@@js.get "caseSensitiveLookup"]

    val create
      :  range:Range.t
      -> ?variable_name:string
      -> ?case_sensitive_lookup:bool
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "InlineValueVariableLookup"]

  module InlineValueEvaluatableExpression : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val expression : t -> string [@@js.get "expression"]

    val create : range:Range.t -> ?expression:string -> unit -> t [@@js.create]
  end
  [@@js.scope "InlineValueEvaluatableExpression"]

  module InlineValue : sig
    type t =
      ( InlineValueEvaluatableExpression.t
      , InlineValueText.t
      , InlineValueVariableLookup.t )
      union3

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module InlineValueContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val frame_id : t -> int [@@js.get "frameId"]

    val stopped_location : t -> Range.t [@@js.get "stoppedLocation"]
  end
  [@@js.scope "InlineValueContext"]

  module InlineValuesProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_change_inline_values : t -> unit Event.t or_undefined
      [@@js.get "onDidChangeInlineValues"]

    val set_on_did_change_inline_values : t -> unit Event.t or_undefined -> unit
      [@@js.set "onDidChangeInlineValues"]

    val provide_inline_values
      :  t
      -> document:TextDocument.t
      -> view_port:Range.t
      -> context:InlineValueContext.t
      -> token:CancellationToken.t
      -> InlineValue.t list ProviderResult.t
      [@@js.call "provideInlineValues"]
  end
  [@@js.scope "InlineValuesProvider"]

  module DocumentHighlightKind : sig
    type t =
      ([ `Read [@js 1]
       | `Write [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DocumentHighlight : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val kind : t -> DocumentHighlightKind.t [@@js.get "kind"]

    val set_kind : t -> DocumentHighlightKind.t -> unit [@@js.set "kind"]

    val create : range:Range.t -> ?kind:DocumentHighlightKind.t -> unit -> t
      [@@js.create]
  end
  [@@js.scope "DocumentHighlight"]

  module DocumentHighlightProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_document_highlights
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> DocumentHighlight.t list ProviderResult.t
      [@@js.call "provideDocumentHighlights"]
  end
  [@@js.scope "DocumentHighlightProvider"]

  module SymbolKind : sig
    type t =
      ([ `Module [@js 1]
       | `Namespace [@js 2]
       | `Package [@js 3]
       | `Class [@js 4]
       | `Method [@js 5]
       | `Property [@js 6]
       | `Field [@js 7]
       | `Constructor [@js 8]
       | `Enum [@js 9]
       | `Interface [@js 10]
       | `Function [@js 11]
       | `Variable [@js 12]
       | `Constant [@js 13]
       | `String [@js 14]
       | `Number [@js 15]
       | `Boolean [@js 16]
       | `Array [@js 17]
       | `Object [@js 18]
       | `Key [@js 19]
       | `Null [@js 20]
       | `EnumMember [@js 21]
       | `Struct [@js 22]
       | `Event [@js 23]
       | `Operator [@js 24]
       | `TypeParameter [@js 25]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SymbolTag : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SymbolInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val container_name : t -> string [@@js.get "containerName"]

    val set_container_name : t -> string -> unit [@@js.set "containerName"]

    val kind : t -> SymbolKind.t [@@js.get "kind"]

    val set_kind : t -> SymbolKind.t -> unit [@@js.set "kind"]

    val tags : t -> SymbolTag.t list [@@js.get "tags"]

    val set_tags : t -> SymbolTag.t list -> unit [@@js.set "tags"]

    val location : t -> Location.t [@@js.get "location"]

    val set_location : t -> Location.t -> unit [@@js.set "location"]

    val create
      :  name:string
      -> kind:SymbolKind.t
      -> container_name:string
      -> location:Location.t
      -> t
      [@@js.create]

    val create'
      :  name:string
      -> kind:SymbolKind.t
      -> range:Range.t
      -> ?uri:Uri.t
      -> ?container_name:string
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "SymbolInformation"]

  module DocumentSymbol : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val detail : t -> string [@@js.get "detail"]

    val set_detail : t -> string -> unit [@@js.set "detail"]

    val kind : t -> SymbolKind.t [@@js.get "kind"]

    val set_kind : t -> SymbolKind.t -> unit [@@js.set "kind"]

    val tags : t -> SymbolTag.t list [@@js.get "tags"]

    val set_tags : t -> SymbolTag.t list -> unit [@@js.set "tags"]

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val selection_range : t -> Range.t [@@js.get "selectionRange"]

    val set_selection_range : t -> Range.t -> unit [@@js.set "selectionRange"]

    val children : t -> t list [@@js.get "children"]

    val set_children : t -> t list -> unit [@@js.set "children"]

    val create
      :  name:string
      -> detail:string
      -> kind:SymbolKind.t
      -> range:Range.t
      -> selection_range:Range.t
      -> t
      [@@js.create]
  end
  [@@js.scope "DocumentSymbol"]

  module DocumentSymbolProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_document_symbols
      :  t
      -> document:TextDocument.t
      -> token:CancellationToken.t
      -> ([ `U_n_0 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 0]
          | `U_n_1 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 1]
          | `U_n_2 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 2]
          | `U_n_3 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 3]
          | `U_n_4 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 4]
          | `U_n_5 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 5]
          | `U_n_6 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 6]
          | `U_n_7 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 7]
          | `U_n_8 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 8]
          | `U_n_9 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 9]
          | `U_n_10 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 10]
          | `U_n_11 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 11]
          | `U_n_12 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 12]
          | `U_n_13 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 13]
          | `U_n_14 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 14]
          | `U_n_15 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 15]
          | `U_n_16 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 16]
          | `U_n_17 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 17]
          | `U_n_18 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 18]
          | `U_n_19 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 19]
          | `U_n_20 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 20]
          | `U_n_21 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 21]
          | `U_n_22 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 22]
          | `U_n_23 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 23]
          | `U_n_24 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 24]
          | `U_n_25 of (DocumentSymbol.t, SymbolInformation.t) union2 [@js 25]
          ]
         [@js.union on_field "kind"])
         list
         ProviderResult.t
      [@@js.call "provideDocumentSymbols"]
  end
  [@@js.scope "DocumentSymbolProvider"]

  module DocumentSymbolProviderMetadata : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]
  end
  [@@js.scope "DocumentSymbolProviderMetadata"]

  module WorkspaceSymbolProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val provide_workspace_symbols
      :  'T t
      -> query:string
      -> token:CancellationToken.t
      -> 'T list ProviderResult.t
      [@@js.call "provideWorkspaceSymbols"]

    val resolve_workspace_symbol
      :  'T t
      -> symbol:'T
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "resolveWorkspaceSymbol"]
  end
  [@@js.scope "WorkspaceSymbolProvider"]

  module ReferenceContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val include_declaration : t -> bool [@@js.get "includeDeclaration"]

    val set_include_declaration : t -> bool -> unit
      [@@js.set "includeDeclaration"]
  end
  [@@js.scope "ReferenceContext"]

  module ReferenceProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_references
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> context:ReferenceContext.t
      -> token:CancellationToken.t
      -> Location.t list ProviderResult.t
      [@@js.call "provideReferences"]
  end
  [@@js.scope "ReferenceProvider"]

  module TextEdit : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val replace : range:Range.t -> new_text:string -> t [@@js.global "replace"]

    val insert : position:Position.t -> new_text:string -> t
      [@@js.global "insert"]

    val delete : range:Range.t -> t [@@js.global "delete"]

    val set_end_of_line : eol:EndOfLine.t -> t [@@js.global "setEndOfLine"]

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val new_text : t -> string [@@js.get "newText"]

    val set_new_text : t -> string -> unit [@@js.set "newText"]

    val new_eol : t -> EndOfLine.t [@@js.get "newEol"]

    val set_new_eol : t -> EndOfLine.t -> unit [@@js.set "newEol"]

    val create : range:Range.t -> new_text:string -> t [@@js.create]
  end
  [@@js.scope "TextEdit"]

  module IconPath : sig
    type t =
      { light : ([ `String of string | `Uri of Uri.t ][@js.union])
      ; dark : ([ `String of string | `Uri of Uri.t ][@js.union])
      }

    [@@@js.stop]

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    [@@@js.start]

    [@@@js.implem
    let t_of_js js_val =
      let light_js = Ojs.get js_val "light" in
      let dark_js = Ojs.get js_val "dark" in
      let light =
        if Ojs.has_property light_js "parse" then
          `Uri ([%js.to: Uri.t] light_js)
        else
          `String ([%js.to: string] light_js)
      in
      let dark =
        if Ojs.has_property dark_js "parse" then
          `Uri ([%js.to: Uri.t] dark_js)
        else
          `String ([%js.to: string] dark_js)
      in
      { light; dark }]
  end

  module WorkspaceEditEntryMetadata : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val needs_confirmation : t -> bool [@@js.get "needsConfirmation"]

    val set_needs_confirmation : t -> bool -> unit
      [@@js.set "needsConfirmation"]

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val description : t -> string [@@js.get "description"]

    val set_description : t -> string -> unit [@@js.set "description"]

    val icon_path : t -> (ThemeIcon.t, Uri.t, IconPath.t) union3
      [@@js.get "iconPath"]

    val set_icon_path : t -> (ThemeIcon.t, Uri.t, IconPath.t) union3 -> unit
      [@@js.set "iconPath"]
  end
  [@@js.scope "WorkspaceEditEntryMetadata"]

  module WorkspaceEdit : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val size : t -> int [@@js.get "size"]

    val replace
      :  t
      -> uri:Uri.t
      -> range:Range.t
      -> new_text:string
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "replace"]

    val insert
      :  t
      -> uri:Uri.t
      -> position:Position.t
      -> new_text:string
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "insert"]

    val delete
      :  t
      -> uri:Uri.t
      -> range:Range.t
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "delete"]

    val has : t -> uri:Uri.t -> bool [@@js.call "has"]

    val set_ : t -> uri:Uri.t -> edits:TextEdit.t list -> unit [@@js.call "set"]

    val get : t -> uri:Uri.t -> TextEdit.t list [@@js.call "get"]

    module CreateFileOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val overwrite : t -> bool [@@js.get "overwrite"]

      val set_overwrite : t -> bool -> unit [@@js.set "overwrite"]

      val ignore_if_exists : t -> bool [@@js.get "ignoreIfExists"]

      val set_ignore_if_exists : t -> bool -> unit [@@js.set "ignoreIfExists"]
    end

    module DeleteFileOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val recursive : t -> bool [@@js.get "recursive"]

      val set_recursive : t -> bool -> unit [@@js.set "recursive"]

      val ignore_if_not_exists : t -> bool [@@js.get "ignoreIfNotExists"]

      val set_ignore_if_not_exists : t -> bool -> unit
        [@@js.set "ignoreIfNotExists"]
    end

    val create_file
      :  t
      -> uri:Uri.t
      -> ?options:CreateFileOptions.t
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "createFile"]

    val delete_file
      :  t
      -> uri:Uri.t
      -> ?options:DeleteFileOptions.t
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "deleteFile"]

    val rename_file
      :  t
      -> old_uri:Uri.t
      -> new_uri:Uri.t
      -> ?options:CreateFileOptions.t
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "renameFile"]

    val entries : t -> (Uri.t * TextEdit.t list) list [@@js.call "entries"]
  end
  [@@js.scope "WorkspaceEdit"]

  module CodeAction : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    module Disabled : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val reason : t -> string [@@js.get "reason"]
    end

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]

    val edit : t -> WorkspaceEdit.t [@@js.get "edit"]

    val set_edit : t -> WorkspaceEdit.t -> unit [@@js.set "edit"]

    val diagnostics : t -> Diagnostic.t list [@@js.get "diagnostics"]

    val set_diagnostics : t -> Diagnostic.t list -> unit
      [@@js.set "diagnostics"]

    val command : t -> Command.t [@@js.get "command"]

    val set_command : t -> Command.t -> unit [@@js.set "command"]

    val kind : t -> CodeActionKind.t [@@js.get "kind"]

    val set_kind : t -> CodeActionKind.t -> unit [@@js.set "kind"]

    val is_preferred : t -> bool [@@js.get "isPreferred"]

    val set_is_preferred : t -> bool -> unit [@@js.set "isPreferred"]

    val disabled : t -> Disabled.t [@@js.get "disabled"]

    val set_disabled : t -> Disabled.t -> unit [@@js.set "disabled"]

    val create : title:string -> ?kind:CodeActionKind.t -> unit -> t
      [@@js.create]
  end
  [@@js.scope "CodeAction"]

  module CodeActionProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val provide_code_actions
      :  'T t
      -> document:TextDocument.t
      -> range:(Range.t, Selection.t) union2
      -> context:CodeActionContext.t
      -> token:CancellationToken.t
      -> (Command.t, 'T) union2 list ProviderResult.t
      [@@js.call "provideCodeActions"]

    val resolve_code_action
      :  'T t
      -> code_action:'T
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "resolveCodeAction"]
  end
  [@@js.scope "CodeActionProvider"]

  module CodeActionProviderMetadata : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provided_code_action_kinds : t -> CodeActionKind.t list
      [@@js.get "providedCodeActionKinds"]

    module Documentation : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val kind : t -> CodeActionKind.t [@@js.get "kind"]

      val command : t -> Command.t [@@js.get "command"]
    end

    val documentation : t -> Documentation.t list [@@js.get "documentation"]
  end
  [@@js.scope "CodeActionProviderMetadata"]

  module RenameProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_rename_edits
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> new_name:string
      -> token:CancellationToken.t
      -> WorkspaceEdit.t ProviderResult.t
      [@@js.call "provideRenameEdits"]

    module RangeWithPlaceHolder : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val range : t -> Range.t [@@js.get "range"]

      val set_range : t -> Range.t -> unit [@@js.set "range"]

      val placeholder : t -> string [@@js.get "placeholder"]

      val set_placeholder : t -> string -> unit [@@js.set "placeholder"]
    end

    val prepare_rename
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> (Range.t, RangeWithPlaceHolder.t) union2 ProviderResult.t
      [@@js.call "prepareRename"]
  end
  [@@js.scope "RenameProvider"]

  module SemanticTokensLegend : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val token_types : t -> string list [@@js.get "tokenTypes"]

    val token_modifiers : t -> string list [@@js.get "tokenModifiers"]

    val create
      :  token_types:string list
      -> ?token_modifiers:string list
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "SemanticTokensLegend"]

  module SemanticTokens : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val result_id : t -> string [@@js.get "resultId"]

    val data : t -> Uint32Array.t [@@js.get "data"]

    val create : data:Uint32Array.t -> ?result_id:string -> unit -> t
      [@@js.create]
  end
  [@@js.scope "SemanticTokens"]

  module SemanticTokensEdit : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val start : t -> int [@@js.get "start"]

    val delete_count : t -> int [@@js.get "deleteCount"]

    val data : t -> Uint32Array.t [@@js.get "data"]

    val create
      :  start:int
      -> delete_count:int
      -> ?data:Uint32Array.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "SemanticTokensEdit"]

  module SemanticTokensEdits : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val result_id : t -> string [@@js.get "resultId"]

    val edits : t -> SemanticTokensEdit.t list [@@js.get "edits"]

    val create
      :  edits:SemanticTokensEdit.t list
      -> ?result_id:string
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "SemanticTokensEdits"]

  module SemanticTokensBuilder : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?legend:SemanticTokensLegend.t -> unit -> t [@@js.create]

    val push
      :  t
      -> line:int
      -> char:int
      -> length:int
      -> token_type_:int
      -> ?token_modifiers:int
      -> unit
      -> unit
      [@@js.call "push"]

    val push'
      :  t
      -> range:Range.t
      -> token_type_:string
      -> ?token_modifiers:string list
      -> unit
      -> unit
      [@@js.call "push"]

    val build : t -> ?result_id:string -> unit -> SemanticTokens.t
      [@@js.call "build"]
  end
  [@@js.scope "SemanticTokensBuilder"]

  module DocumentSemanticTokensProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_change_semantic_tokens : t -> unit Event.t
      [@@js.get "onDidChangeSemanticTokens"]

    val set_on_did_change_semantic_tokens : t -> unit Event.t -> unit
      [@@js.set "onDidChangeSemanticTokens"]

    val provide_document_semantic_tokens
      :  t
      -> document:TextDocument.t
      -> token:CancellationToken.t
      -> SemanticTokens.t ProviderResult.t
      [@@js.call "provideDocumentSemanticTokens"]

    val provide_document_semantic_tokens_edits
      :  t
      -> document:TextDocument.t
      -> previous_result_id:string
      -> token:CancellationToken.t
      -> (SemanticTokens.t, SemanticTokensEdits.t) union2 ProviderResult.t
      [@@js.call "provideDocumentSemanticTokensEdits"]
  end
  [@@js.scope "DocumentSemanticTokensProvider"]

  module DocumentRangeSemanticTokensProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_document_range_semantic_tokens
      :  t
      -> document:TextDocument.t
      -> range:Range.t
      -> token:CancellationToken.t
      -> SemanticTokens.t ProviderResult.t
      [@@js.call "provideDocumentRangeSemanticTokens"]
  end
  [@@js.scope "DocumentRangeSemanticTokensProvider"]

  module FormattingOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val tab_size : t -> int [@@js.get "tabSize"]

    val set_tab_size : t -> int -> unit [@@js.set "tabSize"]

    val insert_spaces : t -> bool [@@js.get "insertSpaces"]

    val set_insert_spaces : t -> bool -> unit [@@js.set "insertSpaces"]

    val get : t -> string -> bool or_string or_number [@@js.index_get]

    val set : t -> string -> bool or_string or_number -> unit [@@js.index_set]
  end
  [@@js.scope "FormattingOptions"]

  module DocumentFormattingEditProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_document_formatting_edits
      :  t
      -> document:TextDocument.t
      -> options:FormattingOptions.t
      -> token:CancellationToken.t
      -> TextEdit.t list ProviderResult.t
      [@@js.call "provideDocumentFormattingEdits"]
  end
  [@@js.scope "DocumentFormattingEditProvider"]

  module DocumentRangeFormattingEditProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_document_range_formatting_edits
      :  t
      -> document:TextDocument.t
      -> range:Range.t
      -> options:FormattingOptions.t
      -> token:CancellationToken.t
      -> TextEdit.t list ProviderResult.t
      [@@js.call "provideDocumentRangeFormattingEdits"]
  end
  [@@js.scope "DocumentRangeFormattingEditProvider"]

  module OnTypeFormattingEditProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_on_type_formatting_edits
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> ch:string
      -> options:FormattingOptions.t
      -> token:CancellationToken.t
      -> TextEdit.t list ProviderResult.t
      [@@js.call "provideOnTypeFormattingEdits"]
  end
  [@@js.scope "OnTypeFormattingEditProvider"]

  module ParameterInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> (int * int) or_string [@@js.get "label"]

    val set_label : t -> (int * int) or_string -> unit [@@js.set "label"]

    val documentation : t -> MarkdownString.t or_string
      [@@js.get "documentation"]

    val set_documentation : t -> MarkdownString.t or_string -> unit
      [@@js.set "documentation"]

    val create
      :  label:(int * int) or_string
      -> ?documentation:MarkdownString.t or_string
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "ParameterInformation"]

  module SignatureInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val documentation : t -> MarkdownString.t or_string
      [@@js.get "documentation"]

    val set_documentation : t -> MarkdownString.t or_string -> unit
      [@@js.set "documentation"]

    val parameters : t -> ParameterInformation.t list [@@js.get "parameters"]

    val set_parameters : t -> ParameterInformation.t list -> unit
      [@@js.set "parameters"]

    val active_parameter : t -> int [@@js.get "activeParameter"]

    val set_active_parameter : t -> int -> unit [@@js.set "activeParameter"]

    val create
      :  label:string
      -> ?documentation:MarkdownString.t or_string
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "SignatureInformation"]

  module SignatureHelp : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val signatures : t -> SignatureInformation.t list [@@js.get "signatures"]

    val set_signatures : t -> SignatureInformation.t list -> unit
      [@@js.set "signatures"]

    val active_signature : t -> int [@@js.get "activeSignature"]

    val set_active_signature : t -> int -> unit [@@js.set "activeSignature"]

    val active_parameter : t -> int [@@js.get "activeParameter"]

    val set_active_parameter : t -> int -> unit [@@js.set "activeParameter"]
  end
  [@@js.scope "SignatureHelp"]

  module SignatureHelpTriggerKind : sig
    type t =
      ([ `TriggerCharacter [@js 2]
       | `ContentChange [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SignatureHelpContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val trigger_kind : t -> SignatureHelpTriggerKind.t [@@js.get "triggerKind"]

    val trigger_character : t -> string [@@js.get "triggerCharacter"]

    val is_retrigger : t -> bool [@@js.get "isRetrigger"]

    val active_signature_help : t -> SignatureHelp.t
      [@@js.get "activeSignatureHelp"]
  end
  [@@js.scope "SignatureHelpContext"]

  module SignatureHelpProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_signature_help
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> context:SignatureHelpContext.t
      -> SignatureHelp.t ProviderResult.t
      [@@js.call "provideSignatureHelp"]
  end
  [@@js.scope "SignatureHelpProvider"]

  module SignatureHelpProviderMetadata : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val trigger_characters : t -> string list [@@js.get "triggerCharacters"]

    val retrigger_characters : t -> string list [@@js.get "retriggerCharacters"]
  end
  [@@js.scope "SignatureHelpProviderMetadata"]

  module CompletionItemKind : sig
    type t =
      ([ `Method [@js 1]
       | `Function [@js 2]
       | `Constructor [@js 3]
       | `Field [@js 4]
       | `Variable [@js 5]
       | `Class [@js 6]
       | `Interface [@js 7]
       | `Module [@js 8]
       | `Property [@js 9]
       | `Unit [@js 10]
       | `Value [@js 11]
       | `Enum [@js 12]
       | `Keyword [@js 13]
       | `Snippet [@js 14]
       | `Color [@js 15]
       | `Reference [@js 17]
       | `File [@js 16]
       | `Folder [@js 18]
       | `EnumMember [@js 19]
       | `Constant [@js 20]
       | `Struct [@js 21]
       | `Event [@js 22]
       | `Operator [@js 23]
       | `TypeParameter [@js 24]
       | `User [@js 25]
       | `Issue [@js 26]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CompletionItemTag : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CompletionItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val kind : t -> CompletionItemKind.t [@@js.get "kind"]

    val set_kind : t -> CompletionItemKind.t -> unit [@@js.set "kind"]

    val tags : t -> CompletionItemTag.t list [@@js.get "tags"]

    val set_tags : t -> CompletionItemTag.t list -> unit [@@js.set "tags"]

    val detail : t -> string [@@js.get "detail"]

    val set_detail : t -> string -> unit [@@js.set "detail"]

    val documentation : t -> MarkdownString.t or_string
      [@@js.get "documentation"]

    val set_documentation : t -> MarkdownString.t or_string -> unit
      [@@js.set "documentation"]

    val sort_text : t -> string [@@js.get "sortText"]

    val set_sort_text : t -> string -> unit [@@js.set "sortText"]

    val filter_text : t -> string [@@js.get "filterText"]

    val set_filter_text : t -> string -> unit [@@js.set "filterText"]

    val preselect : t -> bool [@@js.get "preselect"]

    val set_preselect : t -> bool -> unit [@@js.set "preselect"]

    val insert_text : t -> SnippetString.t or_string [@@js.get "insertText"]

    val set_insert_text : t -> SnippetString.t or_string -> unit
      [@@js.set "insertText"]

    module RangeWithEdit : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val inserting : t -> Range.t [@@js.get "inserting"]

      val set_inserting : t -> Range.t -> unit [@@js.set "inserting"]

      val replacing : t -> Range.t [@@js.get "replacing"]

      val set_replacing : t -> Range.t -> unit [@@js.set "replacing"]
    end

    val range : t -> (Range.t, RangeWithEdit.t) union2 [@@js.get "range"]

    val set_range : t -> (Range.t, RangeWithEdit.t) union2 -> unit
      [@@js.set "range"]

    val commit_characters : t -> string list [@@js.get "commitCharacters"]

    val set_commit_characters : t -> string list -> unit
      [@@js.set "commitCharacters"]

    val keep_whitespace : t -> bool [@@js.get "keepWhitespace"]

    val set_keep_whitespace : t -> bool -> unit [@@js.set "keepWhitespace"]

    val text_edit : t -> TextEdit.t [@@js.get "textEdit"]

    val set_text_edit : t -> TextEdit.t -> unit [@@js.set "textEdit"]

    val additional_text_edits : t -> TextEdit.t list
      [@@js.get "additionalTextEdits"]

    val set_additional_text_edits : t -> TextEdit.t list -> unit
      [@@js.set "additionalTextEdits"]

    val command : t -> Command.t [@@js.get "command"]

    val set_command : t -> Command.t -> unit [@@js.set "command"]

    val create : label:string -> ?kind:CompletionItemKind.t -> unit -> t
      [@@js.create]
  end
  [@@js.scope "CompletionItem"]

  module CompletionList : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val is_incomplete : 'T t -> bool [@@js.get "isIncomplete"]

    val set_is_incomplete : 'T t -> bool -> unit [@@js.set "isIncomplete"]

    val items : 'T t -> 'T list [@@js.get "items"]

    val set_items : 'T t -> 'T list -> unit [@@js.set "items"]

    val create : ?items:'T list -> ?is_incomplete:bool -> unit -> 'T t
      [@@js.create]
  end
  [@@js.scope "CompletionList"]

  module CompletionTriggerKind : sig
    type t =
      ([ `TriggerCharacter [@js 1]
       | `TriggerForIncompleteCompletions [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CompletionContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val trigger_kind : t -> CompletionTriggerKind.t [@@js.get "triggerKind"]

    val trigger_character : t -> string [@@js.get "triggerCharacter"]
  end
  [@@js.scope "CompletionContext"]

  module CompletionItemProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val provide_completion_items
      :  'T t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> context:CompletionContext.t
      -> ('T CompletionList.t, 'T) or_array ProviderResult.t
      [@@js.call "provideCompletionItems"]

    val resolve_completion_item
      :  'T t
      -> item:'T
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "resolveCompletionItem"]
  end
  [@@js.scope "CompletionItemProvider"]

  module DocumentLink : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val target : t -> Uri.t [@@js.get "target"]

    val set_target : t -> Uri.t -> unit [@@js.set "target"]

    val tooltip : t -> string [@@js.get "tooltip"]

    val set_tooltip : t -> string -> unit [@@js.set "tooltip"]

    val create : range:Range.t -> ?target:Uri.t -> unit -> t [@@js.create]
  end
  [@@js.scope "DocumentLink"]

  module DocumentLinkProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val provide_document_links
      :  'T t
      -> document:TextDocument.t
      -> token:CancellationToken.t
      -> 'T list ProviderResult.t
      [@@js.call "provideDocumentLinks"]

    val resolve_document_link
      :  'T t
      -> link:'T
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "resolveDocumentLink"]
  end
  [@@js.scope "DocumentLinkProvider"]

  module Color : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val red : t -> int [@@js.get "red"]

    val green : t -> int [@@js.get "green"]

    val blue : t -> int [@@js.get "blue"]

    val alpha : t -> int [@@js.get "alpha"]

    val create : red:int -> green:int -> blue:int -> alpha:int -> t
      [@@js.create]
  end
  [@@js.scope "Color"]

  module ColorInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val color : t -> Color.t [@@js.get "color"]

    val set_color : t -> Color.t -> unit [@@js.set "color"]

    val create : range:Range.t -> color:Color.t -> t [@@js.create]
  end
  [@@js.scope "ColorInformation"]

  module ColorPresentation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val text_edit : t -> TextEdit.t [@@js.get "textEdit"]

    val set_text_edit : t -> TextEdit.t -> unit [@@js.set "textEdit"]

    val additional_text_edits : t -> TextEdit.t list
      [@@js.get "additionalTextEdits"]

    val set_additional_text_edits : t -> TextEdit.t list -> unit
      [@@js.set "additionalTextEdits"]

    val create : label:string -> t [@@js.create]
  end
  [@@js.scope "ColorPresentation"]

  module DocumentColorProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_document_colors
      :  t
      -> document:TextDocument.t
      -> token:CancellationToken.t
      -> ColorInformation.t list ProviderResult.t
      [@@js.call "provideDocumentColors"]

    module Context : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val document : t -> TextDocument.t [@@js.get "document"]

      val set_document : t -> TextDocument.t -> unit [@@js.set "document"]

      val range : t -> Range.t [@@js.get "range"]

      val set_range : t -> Range.t -> unit [@@js.set "range"]
    end

    val provide_color_presentations
      :  t
      -> color:Color.t
      -> context:Context.t
      -> token:CancellationToken.t
      -> ColorPresentation.t list ProviderResult.t
      [@@js.call "provideColorPresentations"]
  end
  [@@js.scope "DocumentColorProvider"]

  module FoldingRangeKind : sig
    type t =
      ([ `Imports [@js 2]
       | `Region [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module FoldingRange : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val start : t -> int [@@js.get "start"]

    val set_start : t -> int -> unit [@@js.set "start"]

    val end_ : t -> int [@@js.get "end"]

    val set_end : t -> int -> unit [@@js.set "end"]

    val kind : t -> FoldingRangeKind.t [@@js.get "kind"]

    val set_kind : t -> FoldingRangeKind.t -> unit [@@js.set "kind"]

    val create : start:int -> end_:int -> ?kind:FoldingRangeKind.t -> unit -> t
      [@@js.create]
  end
  [@@js.scope "FoldingRange"]

  module FoldingContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module FoldingRangeProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_change_folding_ranges : t -> unit Event.t
      [@@js.get "onDidChangeFoldingRanges"]

    val set_on_did_change_folding_ranges : t -> unit Event.t -> unit
      [@@js.set "onDidChangeFoldingRanges"]

    val provide_folding_ranges
      :  t
      -> document:TextDocument.t
      -> context:FoldingContext.t
      -> token:CancellationToken.t
      -> FoldingRange.t list ProviderResult.t
      [@@js.call "provideFoldingRanges"]
  end
  [@@js.scope "FoldingRangeProvider"]

  module SelectionRange : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val parent : t -> t [@@js.get "parent"]

    val set_parent : t -> t -> unit [@@js.set "parent"]

    val create : range:Range.t -> ?parent:t -> unit -> t [@@js.create]
  end
  [@@js.scope "SelectionRange"]

  module SelectionRangeProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_selection_ranges
      :  t
      -> document:TextDocument.t
      -> positions:Position.t list
      -> token:CancellationToken.t
      -> SelectionRange.t list ProviderResult.t
      [@@js.call "provideSelectionRanges"]
  end
  [@@js.scope "SelectionRangeProvider"]

  module CallHierarchyItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val kind : t -> SymbolKind.t [@@js.get "kind"]

    val set_kind : t -> SymbolKind.t -> unit [@@js.set "kind"]

    val tags : t -> SymbolTag.t list [@@js.get "tags"]

    val set_tags : t -> SymbolTag.t list -> unit [@@js.set "tags"]

    val detail : t -> string [@@js.get "detail"]

    val set_detail : t -> string -> unit [@@js.set "detail"]

    val uri : t -> Uri.t [@@js.get "uri"]

    val set_uri : t -> Uri.t -> unit [@@js.set "uri"]

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val selection_range : t -> Range.t [@@js.get "selectionRange"]

    val set_selection_range : t -> Range.t -> unit [@@js.set "selectionRange"]

    val create
      :  kind:SymbolKind.t
      -> name:string
      -> detail:string
      -> uri:Uri.t
      -> range:Range.t
      -> selection_range:Range.t
      -> t
      [@@js.create]
  end
  [@@js.scope "CallHierarchyItem"]

  module CallHierarchyIncomingCall : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val from : t -> CallHierarchyItem.t [@@js.get "from"]

    val set_from : t -> CallHierarchyItem.t -> unit [@@js.set "from"]

    val from_ranges : t -> Range.t list [@@js.get "fromRanges"]

    val set_from_ranges : t -> Range.t list -> unit [@@js.set "fromRanges"]

    val create : item:CallHierarchyItem.t -> from_ranges:Range.t list -> t
      [@@js.create]
  end
  [@@js.scope "CallHierarchyIncomingCall"]

  module CallHierarchyOutgoingCall : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val to_ : t -> CallHierarchyItem.t [@@js.get "to"]

    val set_to : t -> CallHierarchyItem.t -> unit [@@js.set "to"]

    val from_ranges : t -> Range.t list [@@js.get "fromRanges"]

    val set_from_ranges : t -> Range.t list -> unit [@@js.set "fromRanges"]

    val create : item:CallHierarchyItem.t -> from_ranges:Range.t list -> t
      [@@js.create]
  end
  [@@js.scope "CallHierarchyOutgoingCall"]

  module CallHierarchyProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val prepare_call_hierarchy
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> (CallHierarchyItem.t, CallHierarchyItem.t) or_array ProviderResult.t
      [@@js.call "prepareCallHierarchy"]

    val provide_call_hierarchy_incoming_calls
      :  t
      -> item:CallHierarchyItem.t
      -> token:CancellationToken.t
      -> CallHierarchyIncomingCall.t list ProviderResult.t
      [@@js.call "provideCallHierarchyIncomingCalls"]

    val provide_call_hierarchy_outgoing_calls
      :  t
      -> item:CallHierarchyItem.t
      -> token:CancellationToken.t
      -> CallHierarchyOutgoingCall.t list ProviderResult.t
      [@@js.call "provideCallHierarchyOutgoingCalls"]
  end
  [@@js.scope "CallHierarchyProvider"]

  module LinkedEditingRanges : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ranges:Range.t list -> ?word_pattern:regexp -> unit -> t
      [@@js.create]

    val ranges : t -> Range.t list [@@js.get "ranges"]

    val word_pattern : t -> regexp [@@js.get "wordPattern"]
  end
  [@@js.scope "LinkedEditingRanges"]

  module LinkedEditingRangeProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_linked_editing_ranges
      :  t
      -> document:TextDocument.t
      -> position:Position.t
      -> token:CancellationToken.t
      -> LinkedEditingRanges.t ProviderResult.t
      [@@js.call "provideLinkedEditingRanges"]
  end
  [@@js.scope "LinkedEditingRangeProvider"]

  module CharacterPair : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CommentRule : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val line_comment : t -> string [@@js.get "lineComment"]

    val set_line_comment : t -> string -> unit [@@js.set "lineComment"]

    val block_comment : t -> CharacterPair.t [@@js.get "blockComment"]

    val set_block_comment : t -> CharacterPair.t -> unit
      [@@js.set "blockComment"]
  end
  [@@js.scope "CommentRule"]

  module IndentationRule : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val decrease_indent_pattern : t -> regexp [@@js.get "decreaseIndentPattern"]

    val set_decrease_indent_pattern : t -> regexp -> unit
      [@@js.set "decreaseIndentPattern"]

    val increase_indent_pattern : t -> regexp [@@js.get "increaseIndentPattern"]

    val set_increase_indent_pattern : t -> regexp -> unit
      [@@js.set "increaseIndentPattern"]

    val indent_next_line_pattern : t -> regexp
      [@@js.get "indentNextLinePattern"]

    val set_indent_next_line_pattern : t -> regexp -> unit
      [@@js.set "indentNextLinePattern"]

    val un_indented_line_pattern : t -> regexp
      [@@js.get "unIndentedLinePattern"]

    val set_un_indented_line_pattern : t -> regexp -> unit
      [@@js.set "unIndentedLinePattern"]
  end
  [@@js.scope "IndentationRule"]

  module IndentAction : sig
    type t =
      ([ `Indent [@js 1]
       | `IndentOutdent [@js 2]
       | `Outdent [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module EnterAction : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val indent_action : t -> IndentAction.t [@@js.get "indentAction"]

    val set_indent_action : t -> IndentAction.t -> unit
      [@@js.set "indentAction"]

    val append_text : t -> string [@@js.get "appendText"]

    val set_append_text : t -> string -> unit [@@js.set "appendText"]

    val remove_text : t -> int [@@js.get "removeText"]

    val set_remove_text : t -> int -> unit [@@js.set "removeText"]
  end
  [@@js.scope "EnterAction"]

  module OnEnterRule : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val before_text : t -> regexp [@@js.get "beforeText"]

    val set_before_text : t -> regexp -> unit [@@js.set "beforeText"]

    val after_text : t -> regexp [@@js.get "afterText"]

    val set_after_text : t -> regexp -> unit [@@js.set "afterText"]

    val previous_line_text : t -> regexp [@@js.get "previousLineText"]

    val set_previous_line_text : t -> regexp -> unit
      [@@js.set "previousLineText"]

    val action : t -> EnterAction.t [@@js.get "action"]

    val set_action : t -> EnterAction.t -> unit [@@js.set "action"]
  end
  [@@js.scope "OnEnterRule"]

  module AutoClosingPairs : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val open_ : t -> string [@@js.get "open"]

    val set_open : t -> string -> unit [@@js.set "open"]

    val close : t -> string [@@js.get "close"]

    val set_close : t -> string -> unit [@@js.set "close"]

    val not_in : t -> string list [@@js.get "notIn"]

    val set_not_in : t -> string list -> unit [@@js.set "notIn"]
  end

  module CharacterPairSupport : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val auto_closing_pairs : t -> AutoClosingPairs.t list
      [@@js.get "autoClosingPairs"]

    val set_auto_closing_pairs : t -> AutoClosingPairs.t list -> unit
      [@@js.set "autoClosingPairs"]
  end

  module DocComment : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val scope : t -> string [@@js.get "scope"]

    val set_scope : t -> string -> unit [@@js.set "scope"]

    val open_ : t -> string [@@js.get "open"]

    val set_open : t -> string -> unit [@@js.set "open"]

    val line_start : t -> string [@@js.get "lineStart"]

    val set_line_start : t -> string -> unit [@@js.set "lineStart"]

    val close : t -> string [@@js.get "close"]

    val set_close : t -> string -> unit [@@js.set "close"]
  end

  module ElectricCharacterSupport : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val brackets : t -> any [@@js.get "brackets"]

    val set_brackets : t -> any -> unit [@@js.set "brackets"]

    val doc_comment : t -> DocComment.t [@@js.get "docComment"]

    val set_doc_comment : t -> DocComment.t -> unit [@@js.set "docComment"]
  end

  module LanguageConfiguration : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val comments : t -> CommentRule.t [@@js.get "comments"]

    val set_comments : t -> CommentRule.t -> unit [@@js.set "comments"]

    val brackets : t -> CharacterPair.t list [@@js.get "brackets"]

    val set_brackets : t -> CharacterPair.t list -> unit [@@js.set "brackets"]

    val word_pattern : t -> regexp [@@js.get "wordPattern"]

    val set_word_pattern : t -> regexp -> unit [@@js.set "wordPattern"]

    val indentation_rules : t -> IndentationRule.t [@@js.get "indentationRules"]

    val set_indentation_rules : t -> IndentationRule.t -> unit
      [@@js.set "indentationRules"]

    val on_enter_rules : t -> OnEnterRule.t list [@@js.get "onEnterRules"]

    val set_on_enter_rules : t -> OnEnterRule.t list -> unit
      [@@js.set "onEnterRules"]

    val electric_character_support : t -> ElectricCharacterSupport.t
      [@@js.get "__electricCharacterSupport"]

    val set_electric_character_support : t -> ElectricCharacterSupport.t -> unit
      [@@js.set "__electricCharacterSupport"]

    val character_pair_support : t -> CharacterPairSupport.t
      [@@js.get "__characterPairSupport"]

    val set_character_pair_support : t -> CharacterPairSupport.t -> unit
      [@@js.set "__characterPairSupport"]
  end
  [@@js.scope "LanguageConfiguration"]

  module ConfigurationTarget : sig
    type t =
      ([ `Workspace [@js 2]
       | `WorkspaceFolder [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module InspectionResult : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val key : t -> string [@@js.get "key"]

    val set_key : t -> string -> unit [@@js.set "key"]

    val default : t -> 'T [@@js.get "defaultValue"]

    val set_default : t -> 'T -> unit [@@js.set "defaultValue"]

    val global_value : t -> 'T [@@js.get "globalValue"]

    val set_global_value : t -> 'T -> unit [@@js.set "globalValue"]

    val workspace_value : t -> 'T [@@js.get "workspaceValue"]

    val set_workspace_value : t -> 'T -> unit [@@js.set "workspaceValue"]

    val workspace_folder_value : t -> 'T [@@js.get "workspaceFolderValue"]

    val set_workspace_folder_value : t -> 'T -> unit
      [@@js.set "workspaceFolderValue"]

    val default_language_value : t -> 'T [@@js.get "defaultLanguageValue"]

    val set_default_language_value : t -> 'T -> unit
      [@@js.set "defaultLanguageValue"]

    val global_language_value : t -> 'T [@@js.get "globalLanguageValue"]

    val set_global_language_value : t -> 'T -> unit
      [@@js.set "globalLanguageValue"]

    val workspace_language_value : t -> 'T [@@js.get "workspaceLanguageValue"]

    val set_workspace_language_value : t -> 'T -> unit
      [@@js.set "workspaceLanguageValue"]

    val workspace_folder_language_value : t -> 'T
      [@@js.get "workspaceFolderLanguageValue"]

    val set_workspace_folder_language_value : t -> 'T -> unit
      [@@js.set "workspaceFolderLanguageValue"]

    val language_ids : t -> string list [@@js.get "languageIds"]

    val set_language_ids : t -> string list -> unit [@@js.set "languageIds"]
  end

  module WorkspaceConfiguration : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get : t -> string -> 'T or_undefined [@@js.call "get"]

    val get' : t -> string -> default:'T -> 'T [@@js.call "get"]

    val has : t -> string -> bool [@@js.call "has"]

    val inspect : t -> string -> InspectionResult.t or_undefined
      [@@js.call "inspect"]

    val update
      :  t
      -> string
      -> any
      -> ?configuration_target:ConfigurationTarget.t or_boolean
      -> ?override_in_language:bool
      -> unit
      -> unit Promise.t
      [@@js.call "update"]

    val get : t -> string -> any [@@js.index_get]
  end
  [@@js.scope "WorkspaceConfiguration"]

  module LocationLink : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val origin_selection_range : t -> Range.t [@@js.get "originSelectionRange"]

    val set_origin_selection_range : t -> Range.t -> unit
      [@@js.set "originSelectionRange"]

    val target_uri : t -> Uri.t [@@js.get "targetUri"]

    val set_target_uri : t -> Uri.t -> unit [@@js.set "targetUri"]

    val target_range : t -> Range.t [@@js.get "targetRange"]

    val set_target_range : t -> Range.t -> unit [@@js.set "targetRange"]

    val target_selection_range : t -> Range.t [@@js.get "targetSelectionRange"]

    val set_target_selection_range : t -> Range.t -> unit
      [@@js.set "targetSelectionRange"]
  end
  [@@js.scope "LocationLink"]

  module OutputChannel : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val append : t -> value:string -> unit [@@js.call "append"]

    val append_line : t -> value:string -> unit [@@js.call "appendLine"]

    val clear : t -> unit [@@js.call "clear"]

    val show : t -> ?preserve_focus:bool -> unit -> unit [@@js.call "show"]

    val show'
      :  t
      -> ?column:ViewColumn.t
      -> ?preserve_focus:bool
      -> unit
      -> unit
      [@@js.call "show"]

    val hide : t -> unit [@@js.call "hide"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "OutputChannel"]

  module AccessibilityInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val role : t -> string [@@js.get "role"]

    val set_role : t -> string -> unit [@@js.set "role"]
  end
  [@@js.scope "AccessibilityInformation"]

  module StatusBarAlignment : sig
    type t = ([ `Right [@js 2] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module StatusBarItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val alignment : t -> StatusBarAlignment.t [@@js.get "alignment"]

    val priority : t -> int [@@js.get "priority"]

    val text : t -> string [@@js.get "text"]

    val set_text : t -> string -> unit [@@js.set "text"]

    val tooltip : t -> string or_undefined [@@js.get "tooltip"]

    val set_tooltip : t -> string or_undefined -> unit [@@js.set "tooltip"]

    val color : t -> ThemeColor.t or_string or_undefined [@@js.get "color"]

    val set_color : t -> ThemeColor.t or_string or_undefined -> unit
      [@@js.set "color"]

    val background_color : t -> ThemeColor.t or_undefined
      [@@js.get "backgroundColor"]

    val set_background_color : t -> ThemeColor.t or_undefined -> unit
      [@@js.set "backgroundColor"]

    val command : t -> Command.t or_string or_undefined [@@js.get "command"]

    val set_command : t -> Command.t or_string or_undefined -> unit
      [@@js.set "command"]

    val accessibility_information : t -> AccessibilityInformation.t
      [@@js.get "accessibilityInformation"]

    val set_accessibility_information : t -> AccessibilityInformation.t -> unit
      [@@js.set "accessibilityInformation"]

    val show : t -> unit [@@js.call "show"]

    val hide : t -> unit [@@js.call "hide"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "StatusBarItem"]

  module Progress : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val report : 'T t -> value:'T -> unit [@@js.call "report"]
  end
  [@@js.scope "Progress"]

  module TerminalOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val shell_path : t -> string [@@js.get "shellPath"]

    val set_shell_path : t -> string -> unit [@@js.set "shellPath"]

    val shell_args : t -> string list or_string [@@js.get "shellArgs"]

    val set_shell_args : t -> string list or_string -> unit
      [@@js.set "shellArgs"]

    val cwd : t -> Uri.t or_string [@@js.get "cwd"]

    val set_cwd : t -> Uri.t or_string -> unit [@@js.set "cwd"]

    module Env : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get : t -> string -> string or_null_or_undefined [@@js.index_get]

      val set : t -> string -> string or_null_or_undefined -> unit
        [@@js.index_set]
    end

    val env : t -> Env.t [@@js.get "env"]

    val set_env : t -> Env.t -> unit [@@js.set "env"]

    val strict_env : t -> bool [@@js.get "strictEnv"]

    val set_strict_env : t -> bool -> unit [@@js.set "strictEnv"]

    val hide_from_user : t -> bool [@@js.get "hideFromUser"]

    val set_hide_from_user : t -> bool -> unit [@@js.set "hideFromUser"]
  end
  [@@js.scope "TerminalOptions"]

  module TerminalDimensions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val columns : t -> int [@@js.get "columns"]

    val rows : t -> int [@@js.get "rows"]
  end
  [@@js.scope "TerminalDimensions"]

  module TerminalExitStatus : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val code : t -> int or_undefined [@@js.get "code"]
  end
  [@@js.scope "TerminalExitStatus"]

  module Pseudoterminal : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_write : t -> string Event.t [@@js.get "onDidWrite"]

    val set_on_did_write : t -> string Event.t -> unit [@@js.set "onDidWrite"]

    val on_did_override_dimensions
      :  t
      -> TerminalDimensions.t or_undefined Event.t
      [@@js.get "onDidOverrideDimensions"]

    val set_on_did_override_dimensions
      :  t
      -> TerminalDimensions.t or_undefined Event.t
      -> unit
      [@@js.set "onDidOverrideDimensions"]

    val on_did_close : t -> unit or_number Event.t [@@js.get "onDidClose"]

    val set_on_did_close : t -> unit or_number Event.t -> unit
      [@@js.set "onDidClose"]

    val open_
      :  t
      -> initial_dimensions:TerminalDimensions.t or_undefined
      -> unit
      [@@js.call "open"]

    val close : t -> unit [@@js.call "close"]

    val handle_input : t -> data:string -> unit [@@js.call "handleInput"]

    val set_dimensions : t -> dimensions:TerminalDimensions.t -> unit
      [@@js.call "setDimensions"]
  end
  [@@js.scope "Pseudoterminal"]

  module ExtensionTerminalOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val pty : t -> Pseudoterminal.t [@@js.get "pty"]

    val set_pty : t -> Pseudoterminal.t -> unit [@@js.set "pty"]
  end
  [@@js.scope "ExtensionTerminalOptions"]

  module Terminal : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val process_id : t -> int or_undefined Promise.t [@@js.get "processId"]

    val creation_options
      :  t
      -> (ExtensionTerminalOptions.t, TerminalOptions.t) union2 Readonly.t
      [@@js.get "creationOptions"]

    val exit_status : t -> TerminalExitStatus.t or_undefined
      [@@js.get "exitStatus"]

    val send_text : t -> text:string -> ?add_new_line:bool -> unit -> unit
      [@@js.call "sendText"]

    val show : t -> ?preserve_focus:bool -> unit -> unit [@@js.call "show"]

    val hide : t -> unit [@@js.call "hide"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "Terminal"]

  module TerminalLinkContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val line : t -> string [@@js.get "line"]

    val set_line : t -> string -> unit [@@js.set "line"]

    val terminal : t -> Terminal.t [@@js.get "terminal"]

    val set_terminal : t -> Terminal.t -> unit [@@js.set "terminal"]
  end
  [@@js.scope "TerminalLinkContext"]

  module TerminalLinkProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val provide_terminal_links
      :  'T t
      -> context:TerminalLinkContext.t
      -> token:CancellationToken.t
      -> 'T list ProviderResult.t
      [@@js.call "provideTerminalLinks"]

    val handle_terminal_link : 'T t -> link:'T -> unit ProviderResult.t
      [@@js.call "handleTerminalLink"]
  end
  [@@js.scope "TerminalLinkProvider"]

  module TerminalLink : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val start_index : t -> int [@@js.get "startIndex"]

    val set_start_index : t -> int -> unit [@@js.set "startIndex"]

    val length : t -> int [@@js.get "length"]

    val set_length : t -> int -> unit [@@js.set "length"]

    val tooltip : t -> string [@@js.get "tooltip"]

    val set_tooltip : t -> string -> unit [@@js.set "tooltip"]
  end
  [@@js.scope "TerminalLink"]

  module FileDecoration : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val badge : t -> string [@@js.get "badge"]

    val set_badge : t -> string -> unit [@@js.set "badge"]

    val tooltip : t -> string [@@js.get "tooltip"]

    val set_tooltip : t -> string -> unit [@@js.set "tooltip"]

    val color : t -> ThemeColor.t [@@js.get "color"]

    val set_color : t -> ThemeColor.t -> unit [@@js.set "color"]

    val propagate : t -> bool [@@js.get "propagate"]

    val set_propagate : t -> bool -> unit [@@js.set "propagate"]

    val create
      :  ?badge:string
      -> ?tooltip:string
      -> ?color:ThemeColor.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "FileDecoration"]

  module FileDecorationProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_change_file_decorations
      :  t
      -> (Uri.t, Uri.t) or_array or_undefined Event.t
      [@@js.get "onDidChangeFileDecorations"]

    val set_on_did_change_file_decorations
      :  t
      -> (Uri.t, Uri.t) or_array or_undefined Event.t
      -> unit
      [@@js.set "onDidChangeFileDecorations"]

    val provide_file_decoration
      :  t
      -> uri:Uri.t
      -> token:CancellationToken.t
      -> FileDecoration.t ProviderResult.t
      [@@js.call "provideFileDecoration"]
  end
  [@@js.scope "FileDecorationProvider"]

  module ExtensionKind : sig
    type t = ([ `Workspace [@js 2] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Extension : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val id : 'T t -> string [@@js.get "id"]

    val extension_uri : 'T t -> Uri.t [@@js.get "extensionUri"]

    val extension_path : 'T t -> string [@@js.get "extensionPath"]

    val is_active : 'T t -> bool [@@js.get "isActive"]

    val package_json : 'T t -> any [@@js.get "packageJSON"]

    val extension_kind : 'T t -> ExtensionKind.t [@@js.get "extensionKind"]

    val set_extension_kind : 'T t -> ExtensionKind.t -> unit
      [@@js.set "extensionKind"]

    val exports : 'T t -> 'T [@@js.get "exports"]

    val activate : 'T t -> 'T Promise.t [@@js.call "activate"]
  end
  [@@js.scope "Extension"]

  module ExtensionMode : sig
    type t =
      ([ `Development [@js 2]
       | `Test [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Memento : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get : t -> key:string -> 'T or_undefined [@@js.call "get"]

    val get' : t -> key:string -> default:'T -> 'T [@@js.call "get"]

    val update : t -> key:string -> value:any -> unit Promise.t
      [@@js.call "update"]
  end
  [@@js.scope "Memento"]

  module SecretStorageChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val key : t -> string [@@js.get "key"]
  end
  [@@js.scope "SecretStorageChangeEvent"]

  module SecretStorage : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get : t -> key:string -> string or_undefined Promise.t [@@js.call "get"]

    val store : t -> key:string -> value:string -> unit Promise.t
      [@@js.call "store"]

    val delete : t -> key:string -> unit Promise.t [@@js.call "delete"]

    val on_did_change : t -> SecretStorageChangeEvent.t Event.t
      [@@js.get "onDidChange"]

    val set_on_did_change : t -> SecretStorageChangeEvent.t Event.t -> unit
      [@@js.set "onDidChange"]
  end
  [@@js.scope "SecretStorage"]

  module EnvironmentVariableMutatorType : sig
    type t =
      ([ `Append [@js 2]
       | `Prepend [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module EnvironmentVariableMutator : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val type_ : t -> EnvironmentVariableMutatorType.t [@@js.get "type"]

    val value : t -> string [@@js.get "value"]
  end
  [@@js.scope "EnvironmentVariableMutator"]

  module EnvironmentVariableCollection : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val persistent : t -> bool [@@js.get "persistent"]

    val set_persistent : t -> bool -> unit [@@js.set "persistent"]

    val replace : t -> variable:string -> value:string -> unit
      [@@js.call "replace"]

    val append : t -> variable:string -> value:string -> unit
      [@@js.call "append"]

    val prepend : t -> variable:string -> value:string -> unit
      [@@js.call "prepend"]

    val get : t -> variable:string -> EnvironmentVariableMutator.t or_undefined
      [@@js.call "get"]

    val for_each
      :  t
      -> callback:
           (variable:string
            -> mutator:EnvironmentVariableMutator.t
            -> collection:t
            -> any)
      -> ?this_arg:any
      -> unit
      -> unit
      [@@js.call "forEach"]

    val delete : t -> variable:string -> unit [@@js.call "delete"]

    val clear : t -> unit [@@js.call "clear"]
  end
  [@@js.scope "EnvironmentVariableCollection"]

  module ExtensionContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    module Subscription : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val dispose : t -> any [@@js.call "dispose"]
    end

    module GlobalState : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val set_keys_for_sync : t -> keys:string list -> unit
        [@@js.call "setKeysForSync"]
    end

    val subscriptions : t -> Subscription.t list [@@js.get "subscriptions"]

    val workspace_state : t -> Memento.t [@@js.get "workspaceState"]

    val global_state : t -> (Memento.t, GlobalState.t) intersection2
      [@@js.get "globalState"]

    val secrets : t -> SecretStorage.t [@@js.get "secrets"]

    val extension_uri : t -> Uri.t [@@js.get "extensionUri"]

    val extension_path : t -> string [@@js.get "extensionPath"]

    val environment_variable_collection : t -> EnvironmentVariableCollection.t
      [@@js.get "environmentVariableCollection"]

    val as_absolute_path : t -> relative_path:string -> string
      [@@js.call "asAbsolutePath"]

    val storage_uri : t -> Uri.t or_undefined [@@js.get "storageUri"]

    val storage_path : t -> string or_undefined [@@js.get "storagePath"]

    val global_storage_uri : t -> Uri.t [@@js.get "globalStorageUri"]

    val global_storage_path : t -> string [@@js.get "globalStoragePath"]

    val log_uri : t -> Uri.t [@@js.get "logUri"]

    val log_path : t -> string [@@js.get "logPath"]

    val extension_mode : t -> ExtensionMode.t [@@js.get "extensionMode"]

    val extension : t -> any Extension.t [@@js.get "extension"]

    [@@@js.stop]

    val subscribe : t -> Disposable.t -> unit

    [@@@js.start]

    [@@@js.implem
    let subscribe t disposable =
      let subscriptions = Ojs.get ([%js.of: t] t) "subscriptions" in
      let (_ : Ojs.t) =
        Ojs.call subscriptions "push" [| [%js.of: Disposable.t] disposable |]
      in
      ()]
  end
  [@@js.scope "ExtensionContext"]

  module ColorThemeKind : sig
    type t =
      ([ `Dark [@js 2]
       | `HighContrast [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ColorTheme : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val kind : t -> ColorThemeKind.t [@@js.get "kind"]
  end
  [@@js.scope "ColorTheme"]

  module TaskRevealKind : sig
    type t =
      ([ `Silent [@js 2]
       | `Never [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TaskPanelKind : sig
    type t =
      ([ `Dedicated [@js 2]
       | `New [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TaskPresentationOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val reveal : t -> TaskRevealKind.t [@@js.get "reveal"]

    val set_reveal : t -> TaskRevealKind.t -> unit [@@js.set "reveal"]

    val echo : t -> bool [@@js.get "echo"]

    val set_echo : t -> bool -> unit [@@js.set "echo"]

    val focus : t -> bool [@@js.get "focus"]

    val set_focus : t -> bool -> unit [@@js.set "focus"]

    val panel : t -> TaskPanelKind.t [@@js.get "panel"]

    val set_panel : t -> TaskPanelKind.t -> unit [@@js.set "panel"]

    val show_reuse_message : t -> bool [@@js.get "showReuseMessage"]

    val set_show_reuse_message : t -> bool -> unit [@@js.set "showReuseMessage"]

    val clear : t -> bool [@@js.get "clear"]

    val set_clear : t -> bool -> unit [@@js.set "clear"]
  end
  [@@js.scope "TaskPresentationOptions"]

  module TaskGroup : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val clean : unit -> t [@@js.get "Clean"]

    val set_clean : t -> unit [@@js.set "Clean"]

    val build : unit -> t [@@js.get "Build"]

    val set_build : t -> unit [@@js.set "Build"]

    val rebuild : unit -> t [@@js.get "Rebuild"]

    val set_rebuild : t -> unit [@@js.set "Rebuild"]

    val test : unit -> t [@@js.get "Test"]

    val set_test : t -> unit [@@js.set "Test"]

    val create : id:string -> label:string -> t [@@js.create]
  end
  [@@js.scope "TaskGroup"]

  module TaskDefinition : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val type_ : t -> string [@@js.get "type"]

    val get : t -> string -> any [@@js.index_get]

    val set : t -> string -> any -> unit [@@js.index_set]
  end
  [@@js.scope "TaskDefinition"]

  module ProcessExecutionOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cwd : t -> string [@@js.get "cwd"]

    val set_cwd : t -> string -> unit [@@js.set "cwd"]

    module Env : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get : t -> string -> string [@@js.index_get]

      val set : t -> string -> string -> unit [@@js.index_set]
    end

    val env : t -> Env.t [@@js.get "env"]

    val set_env : t -> Env.t -> unit [@@js.set "env"]
  end
  [@@js.scope "ProcessExecutionOptions"]

  module ProcessExecution : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  process:string
      -> ?options:ProcessExecutionOptions.t
      -> unit
      -> t
      [@@js.create]

    val create'
      :  process:string
      -> args:string list
      -> ?options:ProcessExecutionOptions.t
      -> unit
      -> t
      [@@js.create]

    val process : t -> string [@@js.get "process"]

    val set_process : t -> string -> unit [@@js.set "process"]

    val args : t -> string list [@@js.get "args"]

    val set_args : t -> string list -> unit [@@js.set "args"]

    val options : t -> ProcessExecutionOptions.t [@@js.get "options"]

    val set_options : t -> ProcessExecutionOptions.t -> unit
      [@@js.set "options"]
  end
  [@@js.scope "ProcessExecution"]

  module ShellQuotingOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    module Escape : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val escape_char : t -> string [@@js.get "escapeChar"]

      val set_escape_char : t -> string -> unit [@@js.set "escapeChar"]

      val chars_to_escape : t -> string [@@js.get "charsToEscape"]

      val set_chars_to_escape : t -> string -> unit [@@js.set "charsToEscape"]
    end

    val escape : t -> Escape.t or_string [@@js.get "escape"]

    val set_escape : t -> Escape.t or_string -> unit [@@js.set "escape"]

    val strong : t -> string [@@js.get "strong"]

    val set_strong : t -> string -> unit [@@js.set "strong"]

    val weak : t -> string [@@js.get "weak"]

    val set_weak : t -> string -> unit [@@js.set "weak"]
  end
  [@@js.scope "ShellQuotingOptions"]

  module ShellExecutionOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val executable : t -> string [@@js.get "executable"]

    val set_executable : t -> string -> unit [@@js.set "executable"]

    val shell_args : t -> string list [@@js.get "shellArgs"]

    val set_shell_args : t -> string list -> unit [@@js.set "shellArgs"]

    val shell_quoting : t -> ShellQuotingOptions.t [@@js.get "shellQuoting"]

    val set_shell_quoting : t -> ShellQuotingOptions.t -> unit
      [@@js.set "shellQuoting"]

    val cwd : t -> string [@@js.get "cwd"]

    val set_cwd : t -> string -> unit [@@js.set "cwd"]

    module Env : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get : t -> string -> string [@@js.index_get]

      val set : t -> string -> string -> unit [@@js.index_set]
    end

    val env : t -> Env.t [@@js.get "env"]

    val set_env : t -> Env.t -> unit [@@js.set "env"]
  end
  [@@js.scope "ShellExecutionOptions"]

  module ShellQuoting : sig
    type t =
      ([ `Strong [@js 2]
       | `Weak [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ShellQuotedString : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]

    val quoting : t -> ShellQuoting.t [@@js.get "quoting"]

    val set_quoting : t -> ShellQuoting.t -> unit [@@js.set "quoting"]
  end
  [@@js.scope "ShellQuotedString"]

  module ShellExecution : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  command_line:string
      -> ?options:ShellExecutionOptions.t
      -> unit
      -> t
      [@@js.create]

    val create'
      :  command:ShellQuotedString.t or_string
      -> args:ShellQuotedString.t or_string list
      -> ?options:ShellExecutionOptions.t
      -> unit
      -> t
      [@@js.create]

    val command_line : t -> string or_undefined [@@js.get "commandLine"]

    val set_command_line : t -> string or_undefined -> unit
      [@@js.set "commandLine"]

    val command : t -> ShellQuotedString.t or_string [@@js.get "command"]

    val set_command : t -> ShellQuotedString.t or_string -> unit
      [@@js.set "command"]

    val args : t -> ShellQuotedString.t or_string list [@@js.get "args"]

    val set_args : t -> ShellQuotedString.t or_string list -> unit
      [@@js.set "args"]

    val options : t -> ShellExecutionOptions.t [@@js.get "options"]

    val set_options : t -> ShellExecutionOptions.t -> unit [@@js.set "options"]
  end
  [@@js.scope "ShellExecution"]

  module CustomExecution : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  callback:
           (resolvedDefinition:TaskDefinition.t -> Pseudoterminal.t Promise.t)
      -> t
      [@@js.create]
  end
  [@@js.scope "CustomExecution"]

  module TaskScope : sig
    type t = ([ `Workspace [@js 2] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RunOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val reevaluate_on_rerun : t -> bool [@@js.get "reevaluateOnRerun"]

    val set_reevaluate_on_rerun : t -> bool -> unit
      [@@js.set "reevaluateOnRerun"]
  end
  [@@js.scope "RunOptions"]

  module Task : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  task_definition:TaskDefinition.t
      -> scope:(WorkspaceFolder.t, ([ `Global | `Workspace ][@js.enum])) or_enum
      -> name:string
      -> source:string
      -> ?execution:
           (CustomExecution.t, ProcessExecution.t, ShellExecution.t) union3
      -> ?problem_matchers:string list or_string
      -> unit
      -> t
      [@@js.create]

    val create'
      :  task_definition:TaskDefinition.t
      -> name:string
      -> source:string
      -> ?execution:(ProcessExecution.t, ShellExecution.t) union2
      -> ?problem_matchers:string list or_string
      -> unit
      -> t
      [@@js.create]

    val definition : t -> TaskDefinition.t [@@js.get "definition"]

    val set_definition : t -> TaskDefinition.t -> unit [@@js.set "definition"]

    val scope
      :  t
      -> ( WorkspaceFolder.t
         , ([ `Global [@js 1] | `Workspace [@js 2] ][@js.enum]) )
         or_enum
      [@@js.get "scope"]

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val detail : t -> string [@@js.get "detail"]

    val set_detail : t -> string -> unit [@@js.set "detail"]

    val execution
      :  t
      -> (CustomExecution.t, ProcessExecution.t, ShellExecution.t) union3
      [@@js.get "execution"]

    val set_execution
      :  t
      -> (CustomExecution.t, ProcessExecution.t, ShellExecution.t) union3
      -> unit
      [@@js.set "execution"]

    val is_background : t -> bool [@@js.get "isBackground"]

    val set_is_background : t -> bool -> unit [@@js.set "isBackground"]

    val source : t -> string [@@js.get "source"]

    val set_source : t -> string -> unit [@@js.set "source"]

    val group : t -> TaskGroup.t [@@js.get "group"]

    val set_group : t -> TaskGroup.t -> unit [@@js.set "group"]

    val presentation_options : t -> TaskPresentationOptions.t
      [@@js.get "presentationOptions"]

    val set_presentation_options : t -> TaskPresentationOptions.t -> unit
      [@@js.set "presentationOptions"]

    val problem_matchers : t -> string list [@@js.get "problemMatchers"]

    val set_problem_matchers : t -> string list -> unit
      [@@js.set "problemMatchers"]

    val run_options : t -> RunOptions.t [@@js.get "runOptions"]

    val set_run_options : t -> RunOptions.t -> unit [@@js.set "runOptions"]
  end
  [@@js.scope "Task"]

  module TaskProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val provide_tasks
      :  'T t
      -> token:CancellationToken.t
      -> 'T list ProviderResult.t
      [@@js.call "provideTasks"]

    val resolve_task
      :  'T t
      -> task:'T
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "resolveTask"]
  end
  [@@js.scope "TaskProvider"]

  module TaskExecution : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val task : t -> Task.t [@@js.get "task"]

    val set_task : t -> Task.t -> unit [@@js.set "task"]

    val terminate : t -> unit [@@js.call "terminate"]
  end
  [@@js.scope "TaskExecution"]

  module TaskStartEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val execution : t -> TaskExecution.t [@@js.get "execution"]
  end
  [@@js.scope "TaskStartEvent"]

  module TaskEndEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val execution : t -> TaskExecution.t [@@js.get "execution"]
  end
  [@@js.scope "TaskEndEvent"]

  module TaskProcessStartEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val execution : t -> TaskExecution.t [@@js.get "execution"]

    val process_id : t -> int [@@js.get "processId"]
  end
  [@@js.scope "TaskProcessStartEvent"]

  module TaskProcessEndEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val execution : t -> TaskExecution.t [@@js.get "execution"]

    val exit_code : t -> int or_undefined [@@js.get "exitCode"]
  end
  [@@js.scope "TaskProcessEndEvent"]

  module TaskFilter : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val version : t -> string [@@js.get "version"]

    val set_version : t -> string -> unit [@@js.set "version"]

    val type_ : t -> string [@@js.get "type"]

    val set_type : t -> string -> unit [@@js.set "type"]
  end
  [@@js.scope "TaskFilter"]

  module Tasks : sig
    val register_task_provider
      :  type_:string
      -> provider:Task.t TaskProvider.t
      -> Disposable.t
      [@@js.global "registerTaskProvider"]

    val fetch_tasks : ?filter:TaskFilter.t -> unit -> Task.t list Promise.t
      [@@js.global "fetchTasks"]

    val execute_task : task:Task.t -> TaskExecution.t Promise.t
      [@@js.global "executeTask"]

    val task_executions : TaskExecution.t list [@@js.global "taskExecutions"]

    val on_did_start_task : TaskStartEvent.t Event.t
      [@@js.global "onDidStartTask"]

    val on_did_end_task : TaskEndEvent.t Event.t [@@js.global "onDidEndTask"]

    val on_did_start_task_process : TaskProcessStartEvent.t Event.t
      [@@js.global "onDidStartTaskProcess"]

    val on_did_end_task_process : TaskProcessEndEvent.t Event.t
      [@@js.global "onDidEndTaskProcess"]
  end
  [@@js.scope "tasks"]

  module FileType : sig
    type t =
      ([ `File [@js 1]
       | `Directory [@js 2]
       | `SymbolicLink [@js 64]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module FileStat : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val type_ : t -> FileType.t [@@js.get "type"]

    val set_type : t -> FileType.t -> unit [@@js.set "type"]

    val ctime : t -> int [@@js.get "ctime"]

    val set_ctime : t -> int -> unit [@@js.set "ctime"]

    val mtime : t -> int [@@js.get "mtime"]

    val set_mtime : t -> int -> unit [@@js.set "mtime"]

    val size : t -> int [@@js.get "size"]

    val set_size : t -> int -> unit [@@js.set "size"]
  end
  [@@js.scope "FileStat"]

  module FileSystemError : sig
    include module type of struct
      include Error
    end

    val file_not_found : ?message_or_uri:Uri.t or_string -> unit -> t
      [@@js.global "FileNotFound"]

    val file_exists : ?message_or_uri:Uri.t or_string -> unit -> t
      [@@js.global "FileExists"]

    val file_not_a_directory : ?message_or_uri:Uri.t or_string -> unit -> t
      [@@js.global "FileNotADirectory"]

    val file_is_a_directory : ?message_or_uri:Uri.t or_string -> unit -> t
      [@@js.global "FileIsADirectory"]

    val no_permissions : ?message_or_uri:Uri.t or_string -> unit -> t
      [@@js.global "NoPermissions"]

    val unavailable : ?message_or_uri:Uri.t or_string -> unit -> t
      [@@js.global "Unavailable"]

    val create : ?message_or_uri:Uri.t or_string -> unit -> t [@@js.create]

    val code : t -> string [@@js.get "code"]
  end
  [@@js.scope "FileSystemError"]

  module FileChangeType : sig
    type t =
      ([ `Created [@js 2]
       | `Deleted [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module FileChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val type_ : t -> FileChangeType.t [@@js.get "type"]

    val uri : t -> Uri.t [@@js.get "uri"]
  end
  [@@js.scope "FileChangeEvent"]

  module FileSystemProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_change_file : t -> FileChangeEvent.t list Event.t
      [@@js.get "onDidChangeFile"]

    module WatchOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val recursive : t -> bool [@@js.get "recursive"]

      val set_recursive : t -> bool -> unit [@@js.set "recursive"]

      val excludes : t -> string list [@@js.get "excludes"]

      val set_excludes : t -> string list -> unit [@@js.set "excludes"]
    end

    val watch : t -> uri:Uri.t -> options:WatchOptions.t -> Disposable.t
      [@@js.call "watch"]

    val stat : t -> uri:Uri.t -> (FileStat.t, FileStat.t Promise.t) union2
      [@@js.call "stat"]

    val read_directory
      :  t
      -> uri:Uri.t
      -> ((string * FileType.t) list Promise.t, string * FileType.t) or_array
      [@@js.call "readDirectory"]

    val create_directory : t -> uri:Uri.t -> (unit, unit Promise.t) union2
      [@@js.call "createDirectory"]

    val read_file
      :  t
      -> uri:Uri.t
      -> (Uint8Array.t, Uint8Array.t Promise.t) union2
      [@@js.call "readFile"]

    module WriteFileOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val create : t -> bool [@@js.get "create"]

      val set_create : t -> bool -> unit [@@js.set "create"]

      val overwrite : t -> bool [@@js.get "overwrite"]

      val set_overwrite : t -> bool -> unit [@@js.set "overwrite"]
    end

    val write_file
      :  t
      -> uri:Uri.t
      -> content:Uint8Array.t
      -> options:WriteFileOptions.t
      -> (unit, unit Promise.t) union2
      [@@js.call "writeFile"]

    module DeleteFileOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val recursive : t -> bool [@@js.get "recursive"]

      val set_recursive : t -> bool -> unit [@@js.set "recursive"]
    end

    val delete
      :  t
      -> uri:Uri.t
      -> options:DeleteFileOptions.t
      -> (unit, unit Promise.t) union2
      [@@js.call "delete"]

    module RenameFileOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val overwrite : t -> bool [@@js.get "overwrite"]

      val set_overwrite : t -> bool -> unit [@@js.set "overwrite"]
    end

    val rename
      :  t
      -> old_uri:Uri.t
      -> new_uri:Uri.t
      -> options:RenameFileOptions.t
      -> (unit, unit Promise.t) union2
      [@@js.call "rename"]

    val copy
      :  t
      -> source:Uri.t
      -> destination:Uri.t
      -> options:RenameFileOptions.t
      -> (unit, unit Promise.t) union2
      [@@js.call "copy"]
  end
  [@@js.scope "FileSystemProvider"]

  module FileSystem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val stat : t -> uri:Uri.t -> FileStat.t Promise.t [@@js.call "stat"]

    val read_directory : t -> uri:Uri.t -> (string * FileType.t) list Promise.t
      [@@js.call "readDirectory"]

    val create_directory : t -> uri:Uri.t -> unit Promise.t
      [@@js.call "createDirectory"]

    val read_file : t -> uri:Uri.t -> Uint8Array.t Promise.t
      [@@js.call "readFile"]

    val write_file : t -> uri:Uri.t -> content:Uint8Array.t -> unit Promise.t
      [@@js.call "writeFile"]

    module DeleteFileOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val recursive : t -> bool [@@js.get "recursive"]

      val set_recursive : t -> bool -> unit [@@js.set "recursive"]

      val use_trash : t -> bool [@@js.get "useTrash"]

      val set_use_trash : t -> bool -> unit [@@js.set "useTrash"]
    end

    val delete
      :  t
      -> uri:Uri.t
      -> ?options:DeleteFileOptions.t
      -> unit
      -> unit Promise.t
      [@@js.call "delete"]

    module RenameFileOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val overwrite : t -> bool [@@js.get "overwrite"]

      val set_overwrite : t -> bool -> unit [@@js.set "overwrite"]
    end

    val rename
      :  t
      -> source:Uri.t
      -> target:Uri.t
      -> ?options:RenameFileOptions.t
      -> unit
      -> unit Promise.t
      [@@js.call "rename"]

    val copy
      :  t
      -> source:Uri.t
      -> target:Uri.t
      -> ?options:RenameFileOptions.t
      -> unit
      -> unit Promise.t
      [@@js.call "copy"]

    val is_writable_file_system : t -> scheme:string -> bool or_undefined
      [@@js.call "isWritableFileSystem"]
  end
  [@@js.scope "FileSystem"]

  module WebviewPortMapping : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val webview_port : t -> int [@@js.get "webviewPort"]

    val extension_host_port : t -> int [@@js.get "extensionHostPort"]
  end
  [@@js.scope "WebviewPortMapping"]

  module WebviewOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val enable_scripts : t -> bool [@@js.get "enableScripts"]

    val enable_command_uris : t -> bool [@@js.get "enableCommandUris"]

    val local_resource_roots : t -> Uri.t list [@@js.get "localResourceRoots"]

    val port_mapping : t -> WebviewPortMapping.t list [@@js.get "portMapping"]
  end
  [@@js.scope "WebviewOptions"]

  module Webview : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val options : t -> WebviewOptions.t [@@js.get "options"]

    val set_options : t -> WebviewOptions.t -> unit [@@js.set "options"]

    val html : t -> string [@@js.get "html"]

    val set_html : t -> string -> unit [@@js.set "html"]

    val on_did_receive_message : t -> any Event.t
      [@@js.get "onDidReceiveMessage"]

    val post_message : t -> message:any -> bool Promise.t
      [@@js.call "postMessage"]

    val as_webview_uri : t -> local_resource:Uri.t -> Uri.t
      [@@js.call "asWebviewUri"]

    val csp_source : t -> string [@@js.get "cspSource"]
  end
  [@@js.scope "Webview"]

  module WebviewPanelOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val enable_find_widget : t -> bool [@@js.get "enableFindWidget"]

    val retain_context_when_hidden : t -> bool
      [@@js.get "retainContextWhenHidden"]
  end
  [@@js.scope "WebviewPanelOptions"]

  module WebviewPanel : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val view_type : t -> string [@@js.get "viewType"]

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]

    val icon_path : t -> (Uri.t, IconPath.t) union2 [@@js.get "iconPath"]

    val set_icon_path : t -> (Uri.t, IconPath.t) union2 -> unit
      [@@js.set "iconPath"]

    val webview : t -> Webview.t [@@js.get "webview"]

    val options : t -> WebviewPanelOptions.t [@@js.get "options"]

    val view_column : t -> ViewColumn.t [@@js.get "viewColumn"]

    val active : t -> bool [@@js.get "active"]

    val visible : t -> bool [@@js.get "visible"]

    module OnDidChangeViewStateEvent : sig
      type webview_panel = t

      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val webview_panel : t -> webview_panel [@@js.get "webviewPanel"]
    end
    [@@js.scope "WebviewPanelOnDidChangeViewStateEvent"]

    val on_did_change_view_state : t -> OnDidChangeViewStateEvent.t Event.t
      [@@js.get "onDidChangeViewState"]

    val on_did_dispose : t -> unit Event.t [@@js.get "onDidDispose"]

    val reveal
      :  t
      -> ?view_column:ViewColumn.t
      -> ?preserve_focus:bool
      -> unit
      -> unit
      [@@js.call "reveal"]

    val dispose : t -> any [@@js.call "dispose"]
  end
  [@@js.scope "WebviewPanel"]

  module WebviewPanelSerializer : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val deserialize_webview_panel
      :  'T t
      -> webview_panel:WebviewPanel.t
      -> state:'T
      -> unit Promise.t
      [@@js.call "deserializeWebviewPanel"]
  end
  [@@js.scope "WebviewPanelSerializer"]

  module WebviewView : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val view_type : t -> string [@@js.get "viewType"]

    val webview : t -> Webview.t [@@js.get "webview"]

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]

    val description : t -> string [@@js.get "description"]

    val set_description : t -> string -> unit [@@js.set "description"]

    val on_did_dispose : t -> unit Event.t [@@js.get "onDidDispose"]

    val visible : t -> bool [@@js.get "visible"]

    val on_did_change_visibility : t -> unit Event.t
      [@@js.get "onDidChangeVisibility"]

    val show : t -> ?preserve_focus:bool -> unit -> unit [@@js.call "show"]
  end
  [@@js.scope "WebviewView"]

  module WebviewViewResolveContext : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val state : 'T t -> 'T or_undefined [@@js.get "state"]
  end
  [@@js.scope "WebviewViewResolveContext"]

  module WebviewViewProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val resolve_webview_view
      :  t
      -> webview_view:WebviewView.t
      -> context:unknown WebviewViewResolveContext.t
      -> token:CancellationToken.t
      -> (unit, unit Promise.t) union2
      [@@js.call "resolveWebviewView"]
  end
  [@@js.scope "WebviewViewProvider"]

  module CustomTextEditorProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val resolve_custom_text_editor
      :  t
      -> document:TextDocument.t
      -> webview_panel:WebviewPanel.t
      -> token:CancellationToken.t
      -> (unit, unit Promise.t) union2
      [@@js.call "resolveCustomTextEditor"]
  end
  [@@js.scope "CustomTextEditorProvider"]

  module CustomDocument : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "CustomDocument"]

  module CustomDocumentEditEvent : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val document : 'T t -> 'T [@@js.get "document"]

    val undo : 'T t -> (unit, unit Promise.t) union2 [@@js.call "undo"]

    val redo : 'T t -> (unit, unit Promise.t) union2 [@@js.call "redo"]

    val label : 'T t -> string [@@js.get "label"]
  end
  [@@js.scope "CustomDocumentEditEvent"]

  module CustomDocumentContentChangeEvent : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val document : 'T t -> 'T [@@js.get "document"]
  end
  [@@js.scope "CustomDocumentContentChangeEvent"]

  module CustomDocumentBackup : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val delete : t -> unit [@@js.call "delete"]
  end
  [@@js.scope "CustomDocumentBackup"]

  module CustomDocumentBackupContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val destination : t -> Uri.t [@@js.get "destination"]
  end
  [@@js.scope "CustomDocumentBackupContext"]

  module CustomDocumentOpenContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val backup_id : t -> string [@@js.get "backupId"]

    val untitled_document_data : t -> Uint8Array.t
      [@@js.get "untitledDocumentData"]
  end
  [@@js.scope "CustomDocumentOpenContext"]

  module CustomReadonlyEditorProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val open_custom_document
      :  'T t
      -> uri:Uri.t
      -> open_context:CustomDocumentOpenContext.t
      -> token:CancellationToken.t
      -> ('T, 'T Promise.t) union2
      [@@js.call "openCustomDocument"]

    val resolve_custom_editor
      :  'T t
      -> document:'T
      -> webview_panel:WebviewPanel.t
      -> token:CancellationToken.t
      -> (unit, unit Promise.t) union2
      [@@js.call "resolveCustomEditor"]
  end
  [@@js.scope "CustomReadonlyEditorProvider"]

  module CustomEditorProvider : sig
    include module type of struct
      include CustomReadonlyEditorProvider
    end

    val on_did_change_custom_document
      :  'T t
      -> ( 'T CustomDocumentContentChangeEvent.t Event.t
         , 'T CustomDocumentEditEvent.t Event.t )
         union2
      [@@js.get "onDidChangeCustomDocument"]

    val save_custom_document
      :  'T t
      -> document:'T
      -> cancellation:CancellationToken.t
      -> unit Promise.t
      [@@js.call "saveCustomDocument"]

    val save_custom_document_as
      :  'T t
      -> document:'T
      -> destination:Uri.t
      -> cancellation:CancellationToken.t
      -> unit Promise.t
      [@@js.call "saveCustomDocumentAs"]

    val revert_custom_document
      :  'T t
      -> document:'T
      -> cancellation:CancellationToken.t
      -> unit Promise.t
      [@@js.call "revertCustomDocument"]

    val backup_custom_document
      :  'T t
      -> document:'T
      -> context:CustomDocumentBackupContext.t
      -> cancellation:CancellationToken.t
      -> CustomDocumentBackup.t Promise.t
      [@@js.call "backupCustomDocument"]

    include module type of struct
      include CustomReadonlyEditorProvider
    end
  end
  [@@js.scope "CustomEditorProvider"]

  module Clipboard : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val read_text : t -> string Promise.t [@@js.call "readText"]

    val write_text : t -> value:string -> unit Promise.t [@@js.call "writeText"]
  end
  [@@js.scope "Clipboard"]

  module UIKind : sig
    type t =
      ([ `Desktop [@js 1]
       | `Web [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Env : sig
    val app_name : string [@@js.global "appName"]

    val app_root : string [@@js.global "appRoot"]

    val uri_scheme : string [@@js.global "uriScheme"]

    val language : string [@@js.global "language"]

    val clipboard : Clipboard.t [@@js.global "clipboard"]

    val machine_id : string [@@js.global "machineId"]

    val session_id : string [@@js.global "sessionId"]

    val is_new_app_install : bool [@@js.global "isNewAppInstall"]

    val is_telemetry_enabled : bool [@@js.global "isTelemetryEnabled"]

    val on_did_change_telemetry_enabled : bool Event.t
      [@@js.global "onDidChangeTelemetryEnabled"]

    val remote_name : string or_undefined [@@js.global "remoteName"]

    val shell : string [@@js.global "shell"]

    val ui_kind : UIKind.t [@@js.global "uiKind"]

    val open_external : target:Uri.t -> bool Promise.t
      [@@js.global "openExternal"]

    val as_external_uri : target:Uri.t -> Uri.t Promise.t
      [@@js.global "asExternalUri"]
  end
  [@@js.scope "env"]

  module Commands : sig
    val register_command
      :  string
      -> ((any list[@js.variadic]) -> 'a)
      -> Disposable.t
      [@@js.global "registerCommand"]

    val register_text_editor_command
      :  string
      -> (textEditor:TextEditor.t
          -> edit:TextEditorEdit.t
          -> args:(any list[@js.variadic])
          -> unit)
      -> Disposable.t
      [@@js.global "registerTextEditorCommand"]

    val execute_command
      :  string
      -> (any list[@js.variadic])
      -> 'T or_undefined Promise.t
      [@@js.global "executeCommand"]

    val get_commands : ?filter_internal:bool -> unit -> string list Promise.t
      [@@js.global "getCommands"]
  end
  [@@js.scope "commands"]

  module WindowState : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val focused : t -> bool [@@js.get "focused"]
  end
  [@@js.scope "WindowState"]

  module UriHandler : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val handle_uri : t -> uri:Uri.t -> unit ProviderResult.t
      [@@js.call "handleUri"]
  end
  [@@js.scope "UriHandler"]

  module QuickInput : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val title : t -> string or_undefined [@@js.get "title"]

    val set_title : t -> string or_undefined -> unit [@@js.set "title"]

    val step : t -> int or_undefined [@@js.get "step"]

    val set_step : t -> int or_undefined -> unit [@@js.set "step"]

    val total_steps : t -> int or_undefined [@@js.get "totalSteps"]

    val set_total_steps : t -> int or_undefined -> unit [@@js.set "totalSteps"]

    val enabled : t -> bool [@@js.get "enabled"]

    val set_enabled : t -> bool -> unit [@@js.set "enabled"]

    val busy : t -> bool [@@js.get "busy"]

    val set_busy : t -> bool -> unit [@@js.set "busy"]

    val ignore_focus_out : t -> bool [@@js.get "ignoreFocusOut"]

    val set_ignore_focus_out : t -> bool -> unit [@@js.set "ignoreFocusOut"]

    val show : t -> unit [@@js.call "show"]

    val hide : t -> unit [@@js.call "hide"]

    val on_did_hide : t -> unit Event.t [@@js.get "onDidHide"]

    val set_on_did_hide : t -> unit Event.t -> unit [@@js.set "onDidHide"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "QuickInput"]

  module QuickInputButton : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val icon_path : t -> (ThemeIcon.t, Uri.t, IconPath.t) union3
      [@@js.get "iconPath"]

    val tooltip : t -> string or_undefined [@@js.get "tooltip"]
  end
  [@@js.scope "QuickInputButton"]

  module QuickInputButtons : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val back : unit -> QuickInputButton.t [@@js.get "Back"]

    val create : unit -> t [@@js.create]
  end
  [@@js.scope "QuickInputButtons"]

  module QuickPick : sig
    include module type of struct
      include QuickInput
    end

    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val value : 'T t -> string [@@js.get "value"]

    val set_value : 'T t -> string -> unit [@@js.set "value"]

    val placeholder : 'T t -> string or_undefined [@@js.get "placeholder"]

    val set_placeholder : 'T t -> string or_undefined -> unit
      [@@js.set "placeholder"]

    val on_did_change_value : 'T t -> string Event.t
      [@@js.get "onDidChangeValue"]

    val on_did_accept : 'T t -> unit Event.t [@@js.get "onDidAccept"]

    val buttons : 'T t -> QuickInputButton.t list [@@js.get "buttons"]

    val set_buttons : 'T t -> QuickInputButton.t list -> unit
      [@@js.set "buttons"]

    val on_did_trigger_button : 'T t -> QuickInputButton.t Event.t
      [@@js.get "onDidTriggerButton"]

    val items : 'T t -> 'T list [@@js.get "items"]

    val set_items : 'T t -> 'T list -> unit [@@js.set "items"]

    val can_select_many : 'T t -> bool [@@js.get "canSelectMany"]

    val set_can_select_many : 'T t -> bool -> unit [@@js.set "canSelectMany"]

    val match_on_description : 'T t -> bool [@@js.get "matchOnDescription"]

    val set_match_on_description : 'T t -> bool -> unit
      [@@js.set "matchOnDescription"]

    val match_on_detail : 'T t -> bool [@@js.get "matchOnDetail"]

    val set_match_on_detail : 'T t -> bool -> unit [@@js.set "matchOnDetail"]

    val active_items : 'T t -> 'T list [@@js.get "activeItems"]

    val set_active_items : 'T t -> 'T list -> unit [@@js.set "activeItems"]

    val on_did_change_active : 'T t -> 'T list Event.t
      [@@js.get "onDidChangeActive"]

    val selected_items : 'T t -> 'T list [@@js.get "selectedItems"]

    val set_selected_items : 'T t -> 'T list -> unit [@@js.set "selectedItems"]

    val on_did_change_selection : 'T t -> 'T list Event.t
      [@@js.get "onDidChangeSelection"]
  end
  [@@js.scope "QuickPick"]

  module InputBox : sig
    include module type of struct
      include QuickInput
    end

    val value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]

    val placeholder : t -> string or_undefined [@@js.get "placeholder"]

    val set_placeholder : t -> string or_undefined -> unit
      [@@js.set "placeholder"]

    val password : t -> bool [@@js.get "password"]

    val set_password : t -> bool -> unit [@@js.set "password"]

    val on_did_change_value : t -> string Event.t [@@js.get "onDidChangeValue"]

    val on_did_accept : t -> unit Event.t [@@js.get "onDidAccept"]

    val buttons : t -> QuickInputButton.t list [@@js.get "buttons"]

    val set_buttons : t -> QuickInputButton.t list -> unit [@@js.set "buttons"]

    val on_did_trigger_button : t -> QuickInputButton.t Event.t
      [@@js.get "onDidTriggerButton"]

    val prompt : t -> string or_undefined [@@js.get "prompt"]

    val set_prompt : t -> string or_undefined -> unit [@@js.set "prompt"]

    val validation_message : t -> string or_undefined
      [@@js.get "validationMessage"]

    val set_validation_message : t -> string or_undefined -> unit
      [@@js.set "validationMessage"]
  end
  [@@js.scope "InputBox"]

  module ProgressLocation : sig
    type t =
      ([ `Window [@js 10]
       | `Notification [@js 15]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ProgressOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    module ViewId : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val view_id : t -> string [@@js.get "viewId"]

      val set_view_id : t -> string -> unit [@@js.set "viewId"]
    end

    val location
      :  t
      -> ( (ProgressLocation.t, ViewId.t) union2
         , ([ `Notification [@js 15]
            | `SourceControl [@js 1]
            | `Window [@js 10]
            ]
           [@js.enum]) )
         or_enum
      [@@js.get "location"]

    val set_location
      :  t
      -> ( (ProgressLocation.t, ViewId.t) union2
         , ([ `Notification | `SourceControl | `Window ][@js.enum]) )
         or_enum
      -> unit
      [@@js.set "location"]

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]

    val cancellable : t -> bool [@@js.get "cancellable"]

    val set_cancellable : t -> bool -> unit [@@js.set "cancellable"]
  end
  [@@js.scope "ProgressOptions"]

  module TreeItemCollapsibleState : sig
    type t =
      ([ `None [@js 0]
       | `Collapsed [@js 1]
       | `Expanded [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TreeItemLabel : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val highlights : t -> (int * int) list [@@js.get "highlights"]

    val set_highlights : t -> (int * int) list -> unit [@@js.set "highlights"]
  end
  [@@js.scope "TreeItemLabel"]

  module TreeItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> TreeItemLabel.t or_string [@@js.get "label"]

    val set_label : t -> TreeItemLabel.t or_string -> unit [@@js.set "label"]

    val id : t -> string [@@js.get "id"]

    val set_id : t -> string -> unit [@@js.set "id"]

    val icon_path : t -> (ThemeIcon.t, Uri.t, IconPath.t) union3 or_string
      [@@js.get "iconPath"]

    val set_icon_path
      :  t
      -> ([ `ThemeIcon of ThemeIcon.t
          | `Uri of Uri.t
          | `IconPath of IconPath.t
          | `String of string
          ]
         [@js.union])
      -> unit
      [@@js.set "iconPath"]

    val description : t -> bool or_string [@@js.get "description"]

    val set_description : t -> bool or_string -> unit [@@js.set "description"]

    val resource_uri : t -> Uri.t [@@js.get "resourceUri"]

    val set_resource_uri : t -> Uri.t -> unit [@@js.set "resourceUri"]

    val tooltip : t -> MarkdownString.t or_string or_undefined
      [@@js.get "tooltip"]

    val set_tooltip : t -> MarkdownString.t or_string or_undefined -> unit
      [@@js.set "tooltip"]

    val command : t -> Command.t [@@js.get "command"]

    val set_command : t -> Command.t -> unit [@@js.set "command"]

    val collapsible_state : t -> TreeItemCollapsibleState.t
      [@@js.get "collapsibleState"]

    val set_collapsible_state : t -> TreeItemCollapsibleState.t -> unit
      [@@js.set "collapsibleState"]

    val context_value : t -> string [@@js.get "contextValue"]

    val set_context_value : t -> string -> unit [@@js.set "contextValue"]

    val accessibility_information : t -> AccessibilityInformation.t
      [@@js.get "accessibilityInformation"]

    val set_accessibility_information : t -> AccessibilityInformation.t -> unit
      [@@js.set "accessibilityInformation"]

    val create
      :  ([ `String of string
          | `TreeItemLabel of TreeItemLabel.t
          | `Uri of Uri.t
          ]
         [@js.union])
      -> ?collapsible_state:TreeItemCollapsibleState.t
      -> unit
      -> t
      [@@js.new "TreeItem"]
  end

  module TreeDataProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    module OnDidChangeTreeData : sig
      type 'T t = 'T or_null_or_undefined Event.t
    end

    val on_did_change_tree_data : 'T t -> 'T OnDidChangeTreeData.t
      [@@js.get "onDidChangeTreeData"]

    val set_on_did_change_tree_data : 'T t -> 'T OnDidChangeTreeData.t -> unit
      [@@js.set "onDidChangeTreeData"]

    val get_tree_item : 'T t -> 'T -> (TreeItem.t, TreeItem.t Promise.t) union2
      [@@js.call "getTreeItem"]

    val get_children : 'T t -> ?element:'T -> unit -> 'T list ProviderResult.t
      [@@js.call "getChildren"]

    val get_parent : 'T t -> 'T -> 'T ProviderResult.t [@@js.call "getParent"]

    val resolve_tree_item
      :  'T t
      -> item:TreeItem.t
      -> element:'T
      -> token:CancellationToken.t
      -> TreeItem.t ProviderResult.t
      [@@js.call "resolveTreeItem"]

    val create
      :  ?on_did_change_tree_data:'T OnDidChangeTreeData.t
      -> get_tree_item:
           ('T
            -> ([ `Value of TreeItem.t | `Promise of TreeItem.t Promise.t ]
               [@js.union]))
      -> get_children:(?element:'T -> unit -> 'T list ProviderResult.t)
      -> ?get_parent:('T -> 'T ProviderResult.t)
      -> ?resolve_tree_item:
           (item:TreeItem.t
            -> element:'T
            -> token:CancellationToken.t
            -> TreeItem.t ProviderResult.t)
      -> unit
      -> 'T t
      [@@js.builder]
  end
  [@@js.scope "TreeDataProvider"]

  module TreeViewOptions : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val tree_data_provider : 'T t -> 'T TreeDataProvider.t
      [@@js.get "treeDataProvider"]

    val set_tree_data_provider : 'T t -> 'T TreeDataProvider.t -> unit
      [@@js.set "treeDataProvider"]

    val show_collapse_all : 'T t -> bool [@@js.get "showCollapseAll"]

    val set_show_collapse_all : 'T t -> bool -> unit
      [@@js.set "showCollapseAll"]

    val can_select_many : 'T t -> bool [@@js.get "canSelectMany"]

    val set_can_select_many : 'T t -> bool -> unit [@@js.set "canSelectMany"]
  end
  [@@js.scope "TreeViewOptions"]

  module TreeViewExpansionEvent : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val element : 'T t -> 'T [@@js.get "element"]
  end
  [@@js.scope "TreeViewExpansionEvent"]

  module TreeViewSelectionChangeEvent : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val selection : 'T t -> 'T list [@@js.get "selection"]
  end
  [@@js.scope "TreeViewSelectionChangeEvent"]

  module TreeViewVisibilityChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val visible : t -> bool [@@js.get "visible"]
  end
  [@@js.scope "TreeViewVisibilityChangeEvent"]

  module TreeView : sig
    include module type of struct
      include Disposable
    end

    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val on_did_expand_element : 'T t -> 'T TreeViewExpansionEvent.t Event.t
      [@@js.get "onDidExpandElement"]

    val on_did_collapse_element : 'T t -> 'T TreeViewExpansionEvent.t Event.t
      [@@js.get "onDidCollapseElement"]

    val selection : 'T t -> 'T list [@@js.get "selection"]

    val on_did_change_selection
      :  'T t
      -> 'T TreeViewSelectionChangeEvent.t Event.t
      [@@js.get "onDidChangeSelection"]

    val visible : 'T t -> bool [@@js.get "visible"]

    val on_did_change_visibility
      :  'T t
      -> TreeViewVisibilityChangeEvent.t Event.t
      [@@js.get "onDidChangeVisibility"]

    val message : 'T t -> string [@@js.get "message"]

    val set_message : 'T t -> string -> unit [@@js.set "message"]

    val title : 'T t -> string [@@js.get "title"]

    val set_title : 'T t -> string -> unit [@@js.set "title"]

    val description : 'T t -> string [@@js.get "description"]

    val set_description : 'T t -> string -> unit [@@js.set "description"]

    module RevealOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val select : t -> bool [@@js.get "select"]

      val set_select : t -> bool -> unit [@@js.set "select"]

      val focus : t -> bool [@@js.get "focus"]

      val set_focus : t -> bool -> unit [@@js.set "focus"]

      val expand : t -> bool or_number [@@js.get "expand"]

      val set_expand : t -> bool or_number -> unit [@@js.set "expand"]
    end

    val reveal
      :  'T t
      -> 'T
      -> ?options:RevealOptions.t
      -> unit
      -> unit Promise.t
      [@@js.call "reveal"]
  end
  [@@js.scope "TreeView"]

  module Window : sig
    val active_text_editor : TextEditor.t or_undefined
      [@@js.global "activeTextEditor"]

    val visible_text_editors : TextEditor.t list
      [@@js.global "visibleTextEditors"]

    val on_did_change_active_text_editor : TextEditor.t or_undefined Event.t
      [@@js.global "onDidChangeActiveTextEditor"]

    val on_did_change_visible_text_editors : TextEditor.t list Event.t
      [@@js.global "onDidChangeVisibleTextEditors"]

    val on_did_change_text_editor_selection
      : TextEditorSelectionChangeEvent.t Event.t
      [@@js.global "onDidChangeTextEditorSelection"]

    val on_did_change_text_editor_visible_ranges
      : TextEditorVisibleRangesChangeEvent.t Event.t
      [@@js.global "onDidChangeTextEditorVisibleRanges"]

    val on_did_change_text_editor_options
      : TextEditorOptionsChangeEvent.t Event.t
      [@@js.global "onDidChangeTextEditorOptions"]

    val on_did_change_text_editor_view_column
      : TextEditorViewColumnChangeEvent.t Event.t
      [@@js.global "onDidChangeTextEditorViewColumn"]

    val terminals : Terminal.t list [@@js.global "terminals"]

    val active_terminal : Terminal.t or_undefined [@@js.global "activeTerminal"]

    val on_did_change_active_terminal : Terminal.t or_undefined Event.t
      [@@js.global "onDidChangeActiveTerminal"]

    val on_did_open_terminal : Terminal.t Event.t
      [@@js.global "onDidOpenTerminal"]

    val on_did_close_terminal : Terminal.t Event.t
      [@@js.global "onDidCloseTerminal"]

    val state : WindowState.t [@@js.global "state"]

    val on_did_change_window_state : WindowState.t Event.t
      [@@js.global "onDidChangeWindowState"]

    val show_text_document
      :  TextDocument.t
      -> ?column:ViewColumn.t
      -> ?preserve_focus:bool
      -> unit
      -> TextEditor.t Promise.t
      [@@js.global "showTextDocument"]

    val show_text_document
      :  TextDocument.t
      -> ?options:TextDocumentShowOptions.t
      -> unit
      -> TextEditor.t Promise.t
      [@@js.global "showTextDocument"]

    val show_text_document
      :  Uri.t
      -> ?options:TextDocumentShowOptions.t
      -> unit
      -> TextEditor.t Promise.t
      [@@js.global "showTextDocument"]

    val create_text_editor_decoration_type
      :  DecorationRenderOptions.t
      -> TextEditorDecorationType.t
      [@@js.global "createTextEditorDecorationType"]

    val show_information_message
      :  string
      -> ?options:MessageOptions.t
      -> unit
      -> string or_undefined Promise.t
      [@@js.global "showInformationMessage"]

    val show_information_message'
      :  string
      -> ?options:MessageOptions.t
      -> items:('T list[@js.variadic])
      -> unit
      -> 'T or_undefined Promise.t
      [@@js.global "showInformationMessage"]

    val show_warning_message
      :  string
      -> ?options:MessageOptions.t
      -> unit
      -> string or_undefined Promise.t
      [@@js.global "showWarningMessage"]

    val show_warning_message'
      :  string
      -> ?options:MessageOptions.t
      -> items:('T list[@js.variadic])
      -> unit
      -> 'T or_undefined Promise.t
      [@@js.global "showWarningMessage"]

    val show_error_message
      :  string
      -> ?options:MessageOptions.t
      -> unit
      -> string or_undefined Promise.t
      [@@js.global "showErrorMessage"]

    val show_error_message'
      :  string
      -> ?options:MessageOptions.t
      -> items:('T list[@js.variadic])
      -> unit
      -> 'T or_undefined Promise.t
      [@@js.global "showErrorMessage"]

    module ShowQuickPickOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val can_pick_many : t -> ([ `L_b_true [@js true] ][@js.enum])
        [@@js.get "canPickMany"]

      val set_can_pick_many : t -> ([ `L_b_true ][@js.enum]) -> unit
        [@@js.set "canPickMany"]
    end

    val show_quick_pick
      :  (string list Promise.t, string) or_array
      -> ?options:(QuickPickOptions.t, ShowQuickPickOptions.t) intersection2
      -> ?token:CancellationToken.t
      -> unit
      -> string list or_undefined Promise.t
      [@@js.global "showQuickPick"]

    val show_quick_pick'
      :  ('T list Promise.t, 'T) or_array
      -> ?options:(QuickPickOptions.t, ShowQuickPickOptions.t) intersection2
      -> ?token:CancellationToken.t
      -> unit
      -> 'T list or_undefined Promise.t
      [@@js.global "showQuickPick"]

    val show_workspace_folder_pick
      :  ?options:WorkspaceFolderPickOptions.t
      -> unit
      -> WorkspaceFolder.t or_undefined Promise.t
      [@@js.global "showWorkspaceFolderPick"]

    val show_open_dialog
      :  ?options:OpenDialogOptions.t
      -> unit
      -> Uri.t list or_undefined Promise.t
      [@@js.global "showOpenDialog"]

    val show_save_dialog
      :  ?options:SaveDialogOptions.t
      -> unit
      -> Uri.t or_undefined Promise.t
      [@@js.global "showSaveDialog"]

    val show_input_box
      :  ?options:InputBoxOptions.t
      -> ?token:CancellationToken.t
      -> unit
      -> string or_undefined Promise.t
      [@@js.global "showInputBox"]

    val create_quick_pick : unit -> 'T QuickPick.t
      [@@js.global "createQuickPick"]

    val create_input_box : unit -> InputBox.t [@@js.global "createInputBox"]

    val create_output_channel : name:string -> OutputChannel.t
      [@@js.global "createOutputChannel"]

    module ProgressInfo : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val message : t -> string [@@js.get "message"]

      val set_message : t -> string -> unit [@@js.set "message"]

      val increment : t -> int [@@js.get "increment"]

      val set_increment : t -> int -> unit [@@js.set "increment"]
    end

    module ViewColumnLike : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val view_column : t -> ViewColumn.t [@@js.get "viewColumn"]

      val set_view_column : t -> ViewColumn.t -> unit [@@js.set "viewColumn"]

      val preserve_focus : t -> bool [@@js.get "preserveFocus"]

      val set_preserve_focus : t -> bool -> unit [@@js.set "preserveFocus"]
    end

    module RegisterCustomEditorProviderOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val webview_options : t -> WebviewPanelOptions.t
        [@@js.get "webviewOptions"]

      val supports_multiple_editors_per_document : t -> bool
        [@@js.get "supportsMultipleEditorsPerDocument"]
    end

    module WebviewOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val retain_context_when_hidden : t -> bool
        [@@js.get "retainContextWhenHidden"]
    end

    module RegisterWebviewViewProviderOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val webview_options : t -> WebviewOptions.t [@@js.get "webviewOptions"]
    end

    val create_webview_panel
      :  view_type_:string
      -> title:string
      -> show_options:
           ( (ViewColumn.t, ViewColumnLike.t) union2
           , ([ `Active
              | `Beside
              | `Eight
              | `Five
              | `Four
              | `Nine
              | `One
              | `Seven
              | `Six
              | `Three
              | `Two
              ]
             [@js.enum]) )
           or_enum
      -> ?options:(WebviewPanelOptions.t, WebviewOptions.t) intersection2
      -> unit
      -> WebviewPanel.t
      [@@js.global "createWebviewPanel"]

    val set_status_bar_message
      :  text:string
      -> hide_after_timeout:int
      -> Disposable.t
      [@@js.global "setStatusBarMessage"]

    val set_status_bar_message
      :  text:string
      -> hide_when_done:any Promise.t
      -> Disposable.t
      [@@js.global "setStatusBarMessage"]

    val set_status_bar_message : text:string -> Disposable.t
      [@@js.global "setStatusBarMessage"]

    val with_scm_progress
      :  task:(progress:int Progress.t -> 'R Promise.t)
      -> 'R Promise.t
      [@@js.global "withScmProgress"]

    val with_progress
      :  options:ProgressOptions.t
      -> task:
           (progress:ProgressInfo.t Progress.t
            -> token:CancellationToken.t
            -> 'R Promise.t)
      -> 'R Promise.t
      [@@js.global "withProgress"]

    val create_status_bar_item
      :  ?alignment:StatusBarAlignment.t
      -> ?priority:int
      -> unit
      -> StatusBarItem.t
      [@@js.global "createStatusBarItem"]

    val create_terminal
      :  ?name:string
      -> ?shell_path:string
      -> ?shell_args:string list or_string
      -> unit
      -> Terminal.t
      [@@js.global "createTerminal"]

    val create_terminal : options:TerminalOptions.t -> Terminal.t
      [@@js.global "createTerminal"]

    val create_terminal : options:ExtensionTerminalOptions.t -> Terminal.t
      [@@js.global "createTerminal"]

    val register_tree_data_provider
      :  string
      -> 'T TreeDataProvider.t
      -> Disposable.t
      [@@js.global "registerTreeDataProvider"]

    val create_tree_view
      :  string
      -> options:'T TreeViewOptions.t
      -> 'T TreeView.t
      [@@js.global "createTreeView"]

    val register_uri_handler : handler:UriHandler.t -> Disposable.t
      [@@js.global "registerUriHandler"]

    val register_webview_panel_serializer
      :  string
      -> unknown WebviewPanelSerializer.t
      -> Disposable.t
      [@@js.global "registerWebviewPanelSerializer"]

    val register_webview_view_provider
      :  string
      -> WebviewViewProvider.t
      -> ?options:RegisterWebviewViewProviderOptions.t
      -> unit
      -> Disposable.t
      [@@js.global "registerWebviewViewProvider"]

    val register_custom_editor_provider
      :  string
      -> ( CustomDocument.t CustomEditorProvider.t
         , CustomDocument.t CustomReadonlyEditorProvider.t
         , CustomTextEditorProvider.t )
         union3
      -> ?options:RegisterCustomEditorProviderOptions.t
      -> unit
      -> Disposable.t
      [@@js.global "registerCustomEditorProvider"]

    val register_terminal_link_provider
      :  TerminalLink.t TerminalLinkProvider.t
      -> Disposable.t
      [@@js.global "registerTerminalLinkProvider"]

    val register_file_decoration_provider
      :  FileDecorationProvider.t
      -> Disposable.t
      [@@js.global "registerFileDecorationProvider"]

    val active_color_theme : ColorTheme.t [@@js.global "activeColorTheme"]

    val on_did_change_active_color_theme : ColorTheme.t Event.t
      [@@js.global "onDidChangeActiveColorTheme"]
  end
  [@@js.scope "window"]

  module TextDocumentContentChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val range : t -> Range.t [@@js.get "range"]

    val range_offset : t -> int [@@js.get "rangeOffset"]

    val range_length : t -> int [@@js.get "rangeLength"]

    val text : t -> string [@@js.get "text"]
  end
  [@@js.scope "TextDocumentContentChangeEvent"]

  module TextDocumentChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> TextDocument.t [@@js.get "document"]

    val content_changes : t -> TextDocumentContentChangeEvent.t list
      [@@js.get "contentChanges"]
  end
  [@@js.scope "TextDocumentChangeEvent"]

  module TextDocumentSaveReason : sig
    type t =
      ([ `AfterDelay [@js 2]
       | `FocusOut [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TextDocumentWillSaveEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> TextDocument.t [@@js.get "document"]

    val reason : t -> TextDocumentSaveReason.t [@@js.get "reason"]

    val wait_until : t -> TextEdit.t list Promise.t -> unit
      [@@js.call "waitUntil"]

    val wait_until' : t -> any Promise.t -> unit [@@js.call "waitUntil"]
  end
  [@@js.scope "TextDocumentWillSaveEvent"]

  module FileWillCreateEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val files : t -> Uri.t list [@@js.get "files"]

    val wait_until : t -> WorkspaceEdit.t Promise.t -> unit
      [@@js.call "waitUntil"]

    val wait_until' : t -> any Promise.t -> unit [@@js.call "waitUntil"]
  end
  [@@js.scope "FileWillCreateEvent"]

  module FileCreateEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val files : t -> Uri.t list [@@js.get "files"]
  end
  [@@js.scope "FileCreateEvent"]

  module FileWillDeleteEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val files : t -> Uri.t list [@@js.get "files"]

    val wait_until : t -> WorkspaceEdit.t Promise.t -> unit
      [@@js.call "waitUntil"]

    val wait_until' : t -> any Promise.t -> unit [@@js.call "waitUntil"]
  end
  [@@js.scope "FileWillDeleteEvent"]

  module FileDeleteEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val files : t -> Uri.t list [@@js.get "files"]
  end
  [@@js.scope "FileDeleteEvent"]

  module FileWillRenameEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    module File : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val old_uri : t -> Uri.t [@@js.get "oldUri"]

      val set_old_uri : t -> Uri.t -> unit [@@js.set "oldUri"]

      val new_uri : t -> Uri.t [@@js.get "newUri"]

      val set_new_uri : t -> Uri.t -> unit [@@js.set "newUri"]
    end

    val files : t -> File.t list [@@js.get "files"]

    val wait_until : t -> WorkspaceEdit.t Promise.t -> unit
      [@@js.call "waitUntil"]

    val wait_until' : t -> any Promise.t -> unit [@@js.call "waitUntil"]
  end
  [@@js.scope "FileWillRenameEvent"]

  module FileRenameEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    module File : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val old_uri : t -> Uri.t [@@js.get "oldUri"]

      val set_old_uri : t -> Uri.t -> unit [@@js.set "oldUri"]

      val new_uri : t -> Uri.t [@@js.get "newUri"]

      val set_new_uri : t -> Uri.t -> unit [@@js.set "newUri"]
    end

    val files : t -> File.t list [@@js.get "files"]
  end
  [@@js.scope "FileRenameEvent"]

  module WorkspaceFoldersChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val added : t -> WorkspaceFolder.t list [@@js.get "added"]

    val removed : t -> WorkspaceFolder.t list [@@js.get "removed"]
  end
  [@@js.scope "WorkspaceFoldersChangeEvent"]

  module UriWithLanguageId : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val set_uri : t -> Uri.t -> unit [@@js.set "uri"]

    val language_id : t -> string [@@js.get "languageId"]

    val set_language_id : t -> string -> unit [@@js.set "languageId"]
  end

  module ConfigurationScope : sig
    type t =
      (TextDocument.t, Uri.t, WorkspaceFolder.t, UriWithLanguageId.t) union4

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ConfigurationChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val affects_configuration
      :  t
      -> string
      -> ?scope:ConfigurationScope.t
      -> unit
      -> bool
      [@@js.call "affectsConfiguration"]
  end
  [@@js.scope "ConfigurationChangeEvent"]

  module Workspace : sig
    module RegisterFileSystemProviderOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val is_case_sensitive : t -> bool [@@js.get "isCaseSensitive"]

      val is_readonly : t -> bool [@@js.get "isReadonly"]
    end

    module OpenTextDocumentOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val language : t -> string [@@js.get "language"]

      val set_language : t -> string -> unit [@@js.set "language"]

      val content : t -> string [@@js.get "content"]

      val set_content : t -> string -> unit [@@js.set "content"]
    end

    module WorkspaceFolder : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val uri : t -> Uri.t [@@js.get "uri"]

      val set_uri : t -> Uri.t -> unit [@@js.set "uri"]

      val name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]
    end

    val fs : FileSystem.t [@@js.global "fs"]

    val root_path : string or_undefined [@@js.global "rootPath"]

    val workspace_folders : WorkspaceFolder.t list or_undefined
      [@@js.global "workspaceFolders"]

    val name : string or_undefined [@@js.global "name"]

    val workspace_file : Uri.t or_undefined [@@js.global "workspaceFile"]

    val on_did_change_workspace_folders : WorkspaceFoldersChangeEvent.t Event.t
      [@@js.global "onDidChangeWorkspaceFolders"]

    val get_workspace_folder : uri:Uri.t -> WorkspaceFolder.t or_undefined
      [@@js.global "getWorkspaceFolder"]

    val as_relative_path
      :  Uri.t or_string
      -> ?include_workspace_folder:bool
      -> unit
      -> string
      [@@js.global "asRelativePath"]

    val update_workspace_folders
      :  start:int
      -> delete_count:int or_null_or_undefined
      -> workspace_folders_to_add:(WorkspaceFolder.t list[@js.variadic])
      -> bool
      [@@js.global "updateWorkspaceFolders"]

    val create_file_system_watcher
      :  GlobPattern.t
      -> ?ignore_create_events:bool
      -> ?ignore_change_events:bool
      -> ?ignore_delete_events:bool
      -> unit
      -> FileSystemWatcher.t
      [@@js.global "createFileSystemWatcher"]

    val find_files
      :  GlobPattern.t
      -> ?exclude:GlobPattern.t or_null
      -> ?max_results:int
      -> ?token:CancellationToken.t
      -> unit
      -> Uri.t list Promise.t
      [@@js.global "findFiles"]

    val save_all : ?include_untitled:bool -> unit -> bool Promise.t
      [@@js.global "saveAll"]

    val apply_edit : WorkspaceEdit.t -> bool Promise.t [@@js.global "applyEdit"]

    val text_documents : TextDocument.t list [@@js.global "textDocuments"]

    val open_text_document : Uri.t -> TextDocument.t Promise.t
      [@@js.global "openTextDocument"]

    val open_text_document : string -> TextDocument.t Promise.t
      [@@js.global "openTextDocument"]

    val open_text_document
      :  ?options:OpenTextDocumentOptions.t
      -> unit
      -> TextDocument.t Promise.t
      [@@js.global "openTextDocument"]

    val register_text_document_content_provider
      :  scheme:string
      -> provider:TextDocumentContentProvider.t
      -> Disposable.t
      [@@js.global "registerTextDocumentContentProvider"]

    val on_did_open_text_document : TextDocument.t Event.t
      [@@js.global "onDidOpenTextDocument"]

    val on_did_close_text_document : TextDocument.t Event.t
      [@@js.global "onDidCloseTextDocument"]

    val on_did_change_text_document : TextDocumentChangeEvent.t Event.t
      [@@js.global "onDidChangeTextDocument"]

    val on_will_save_text_document : TextDocumentWillSaveEvent.t Event.t
      [@@js.global "onWillSaveTextDocument"]

    val on_did_save_text_document : TextDocument.t Event.t
      [@@js.global "onDidSaveTextDocument"]

    val on_will_create_files : FileWillCreateEvent.t Event.t
      [@@js.global "onWillCreateFiles"]

    val on_did_create_files : FileCreateEvent.t Event.t
      [@@js.global "onDidCreateFiles"]

    val on_will_delete_files : FileWillDeleteEvent.t Event.t
      [@@js.global "onWillDeleteFiles"]

    val on_did_delete_files : FileDeleteEvent.t Event.t
      [@@js.global "onDidDeleteFiles"]

    val on_will_rename_files : FileWillRenameEvent.t Event.t
      [@@js.global "onWillRenameFiles"]

    val on_did_rename_files : FileRenameEvent.t Event.t
      [@@js.global "onDidRenameFiles"]

    val get_configuration
      :  ?section:string or_undefined
      -> ?scope:ConfigurationScope.t or_null
      -> unit
      -> WorkspaceConfiguration.t
      [@@js.global "getConfiguration"]

    val on_did_change_configuration : ConfigurationChangeEvent.t Event.t
      [@@js.global "onDidChangeConfiguration"]

    val register_task_provider
      :  type_:string
      -> provider:Task.t TaskProvider.t
      -> Disposable.t
      [@@js.global "registerTaskProvider"]

    val register_file_system_provider
      :  scheme:string
      -> provider:FileSystemProvider.t
      -> ?options:RegisterFileSystemProviderOptions.t
      -> unit
      -> Disposable.t
      [@@js.global "registerFileSystemProvider"]
  end
  [@@js.scope "workspace"]

  module Languages : sig
    val get_languages : unit -> string list Promise.t
      [@@js.global "getLanguages"]

    val set_text_document_language
      :  document:TextDocument.t
      -> language_id:string
      -> TextDocument.t Promise.t
      [@@js.global "setTextDocumentLanguage"]

    val match_ : selector:DocumentSelector.t -> document:TextDocument.t -> int
      [@@js.global "match"]

    val on_did_change_diagnostics : DiagnosticChangeEvent.t Event.t
      [@@js.global "onDidChangeDiagnostics"]

    val get_diagnostics : resource:Uri.t -> Diagnostic.t list
      [@@js.global "getDiagnostics"]

    val get_diagnostics : unit -> (Uri.t * Diagnostic.t list) list
      [@@js.global "getDiagnostics"]

    val create_diagnostic_collection
      :  ?name:string
      -> unit
      -> DiagnosticCollection.t
      [@@js.global "createDiagnosticCollection"]

    val register_completion_item_provider
      :  selector:DocumentSelector.t
      -> provider:CompletionItem.t CompletionItemProvider.t
      -> trigger_characters:(string list[@js.variadic])
      -> Disposable.t
      [@@js.global "registerCompletionItemProvider"]

    val register_code_actions_provider
      :  selector:DocumentSelector.t
      -> provider:CodeAction.t CodeActionProvider.t
      -> ?metadata:CodeActionProviderMetadata.t
      -> unit
      -> Disposable.t
      [@@js.global "registerCodeActionsProvider"]

    val register_code_lens_provider
      :  selector:DocumentSelector.t
      -> provider:CodeLens.t CodeLensProvider.t
      -> Disposable.t
      [@@js.global "registerCodeLensProvider"]

    val register_definition_provider
      :  selector:DocumentSelector.t
      -> provider:DefinitionProvider.t
      -> Disposable.t
      [@@js.global "registerDefinitionProvider"]

    val register_implementation_provider
      :  selector:DocumentSelector.t
      -> provider:ImplementationProvider.t
      -> Disposable.t
      [@@js.global "registerImplementationProvider"]

    val register_type_definition_provider
      :  selector:DocumentSelector.t
      -> provider:TypeDefinitionProvider.t
      -> Disposable.t
      [@@js.global "registerTypeDefinitionProvider"]

    val register_declaration_provider
      :  selector:DocumentSelector.t
      -> provider:DeclarationProvider.t
      -> Disposable.t
      [@@js.global "registerDeclarationProvider"]

    val register_hover_provider
      :  selector:DocumentSelector.t
      -> provider:HoverProvider.t
      -> Disposable.t
      [@@js.global "registerHoverProvider"]

    val register_evaluatable_expression_provider
      :  selector:DocumentSelector.t
      -> provider:EvaluatableExpressionProvider.t
      -> Disposable.t
      [@@js.global "registerEvaluatableExpressionProvider"]

    val register_inline_values_provider
      :  selector:DocumentSelector.t
      -> provider:InlineValuesProvider.t
      -> Disposable.t
      [@@js.global "registerInlineValuesProvider"]

    val register_document_highlight_provider
      :  selector:DocumentSelector.t
      -> provider:DocumentHighlightProvider.t
      -> Disposable.t
      [@@js.global "registerDocumentHighlightProvider"]

    val register_document_symbol_provider
      :  selector:DocumentSelector.t
      -> provider:DocumentSymbolProvider.t
      -> ?meta_data:DocumentSymbolProviderMetadata.t
      -> unit
      -> Disposable.t
      [@@js.global "registerDocumentSymbolProvider"]

    val register_workspace_symbol_provider
      :  provider:SymbolInformation.t WorkspaceSymbolProvider.t
      -> Disposable.t
      [@@js.global "registerWorkspaceSymbolProvider"]

    val register_reference_provider
      :  selector:DocumentSelector.t
      -> provider:ReferenceProvider.t
      -> Disposable.t
      [@@js.global "registerReferenceProvider"]

    val register_rename_provider
      :  selector:DocumentSelector.t
      -> provider:RenameProvider.t
      -> Disposable.t
      [@@js.global "registerRenameProvider"]

    val register_document_semantic_tokens_provider
      :  selector:DocumentSelector.t
      -> provider:DocumentSemanticTokensProvider.t
      -> legend:SemanticTokensLegend.t
      -> Disposable.t
      [@@js.global "registerDocumentSemanticTokensProvider"]

    val register_document_range_semantic_tokens_provider
      :  selector:DocumentSelector.t
      -> provider:DocumentRangeSemanticTokensProvider.t
      -> legend:SemanticTokensLegend.t
      -> Disposable.t
      [@@js.global "registerDocumentRangeSemanticTokensProvider"]

    val register_document_formatting_edit_provider
      :  selector:DocumentSelector.t
      -> provider:DocumentFormattingEditProvider.t
      -> Disposable.t
      [@@js.global "registerDocumentFormattingEditProvider"]

    val register_document_range_formatting_edit_provider
      :  selector:DocumentSelector.t
      -> provider:DocumentRangeFormattingEditProvider.t
      -> Disposable.t
      [@@js.global "registerDocumentRangeFormattingEditProvider"]

    val register_on_type_formatting_edit_provider
      :  selector:DocumentSelector.t
      -> provider:OnTypeFormattingEditProvider.t
      -> first_trigger_character:string
      -> more_trigger_character:(string list[@js.variadic])
      -> Disposable.t
      [@@js.global "registerOnTypeFormattingEditProvider"]

    val register_signature_help_provider
      :  selector:DocumentSelector.t
      -> provider:SignatureHelpProvider.t
      -> trigger_characters:(string list[@js.variadic])
      -> Disposable.t
      [@@js.global "registerSignatureHelpProvider"]

    val register_signature_help_provider
      :  selector:DocumentSelector.t
      -> provider:SignatureHelpProvider.t
      -> metadata:SignatureHelpProviderMetadata.t
      -> Disposable.t
      [@@js.global "registerSignatureHelpProvider"]

    val register_document_link_provider
      :  selector:DocumentSelector.t
      -> provider:DocumentLink.t DocumentLinkProvider.t
      -> Disposable.t
      [@@js.global "registerDocumentLinkProvider"]

    val register_color_provider
      :  selector:DocumentSelector.t
      -> provider:DocumentColorProvider.t
      -> Disposable.t
      [@@js.global "registerColorProvider"]

    val register_folding_range_provider
      :  selector:DocumentSelector.t
      -> provider:FoldingRangeProvider.t
      -> Disposable.t
      [@@js.global "registerFoldingRangeProvider"]

    val register_selection_range_provider
      :  selector:DocumentSelector.t
      -> provider:SelectionRangeProvider.t
      -> Disposable.t
      [@@js.global "registerSelectionRangeProvider"]

    val register_call_hierarchy_provider
      :  selector:DocumentSelector.t
      -> provider:CallHierarchyProvider.t
      -> Disposable.t
      [@@js.global "registerCallHierarchyProvider"]

    val register_linked_editing_range_provider
      :  selector:DocumentSelector.t
      -> provider:LinkedEditingRangeProvider.t
      -> Disposable.t
      [@@js.global "registerLinkedEditingRangeProvider"]

    val set_language_configuration
      :  language:string
      -> configuration:LanguageConfiguration.t
      -> Disposable.t
      [@@js.global "setLanguageConfiguration"]
  end
  [@@js.scope "languages"]

  module SourceControlInputBox : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]

    val placeholder : t -> string [@@js.get "placeholder"]

    val set_placeholder : t -> string -> unit [@@js.set "placeholder"]

    val visible : t -> bool [@@js.get "visible"]

    val set_visible : t -> bool -> unit [@@js.set "visible"]
  end
  [@@js.scope "SourceControlInputBox"]

  module QuickDiffProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_original_resource
      :  t
      -> uri:Uri.t
      -> token:CancellationToken.t
      -> Uri.t ProviderResult.t
      [@@js.call "provideOriginalResource"]
  end
  [@@js.scope "QuickDiffProvider"]

  module SourceControlResourceThemableDecorations : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val icon_path : t -> Uri.t or_string [@@js.get "iconPath"]
  end
  [@@js.scope "SourceControlResourceThemableDecorations"]

  module SourceControlResourceDecorations : sig
    include module type of struct
      include SourceControlResourceThemableDecorations
    end

    val strike_through : t -> bool [@@js.get "strikeThrough"]

    val faded : t -> bool [@@js.get "faded"]

    val tooltip : t -> string [@@js.get "tooltip"]

    val light : t -> SourceControlResourceThemableDecorations.t
      [@@js.get "light"]

    val dark : t -> SourceControlResourceThemableDecorations.t [@@js.get "dark"]
  end
  [@@js.scope "SourceControlResourceDecorations"]

  module SourceControlResourceState : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val resource_uri : t -> Uri.t [@@js.get "resourceUri"]

    val command : t -> Command.t [@@js.get "command"]

    val decorations : t -> SourceControlResourceDecorations.t
      [@@js.get "decorations"]

    val context_value : t -> string [@@js.get "contextValue"]
  end
  [@@js.scope "SourceControlResourceState"]

  module SourceControlResourceGroup : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val hide_when_empty : t -> bool [@@js.get "hideWhenEmpty"]

    val set_hide_when_empty : t -> bool -> unit [@@js.set "hideWhenEmpty"]

    val resource_states : t -> SourceControlResourceState.t list
      [@@js.get "resourceStates"]

    val set_resource_states : t -> SourceControlResourceState.t list -> unit
      [@@js.set "resourceStates"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "SourceControlResourceGroup"]

  module SourceControl : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val label : t -> string [@@js.get "label"]

    val root_uri : t -> Uri.t or_undefined [@@js.get "rootUri"]

    val input_box : t -> SourceControlInputBox.t [@@js.get "inputBox"]

    val count : t -> int [@@js.get "count"]

    val set_count : t -> int -> unit [@@js.set "count"]

    val quick_diff_provider : t -> QuickDiffProvider.t
      [@@js.get "quickDiffProvider"]

    val set_quick_diff_provider : t -> QuickDiffProvider.t -> unit
      [@@js.set "quickDiffProvider"]

    val commit_template : t -> string [@@js.get "commitTemplate"]

    val set_commit_template : t -> string -> unit [@@js.set "commitTemplate"]

    val accept_input_command : t -> Command.t [@@js.get "acceptInputCommand"]

    val set_accept_input_command : t -> Command.t -> unit
      [@@js.set "acceptInputCommand"]

    val status_bar_commands : t -> Command.t list [@@js.get "statusBarCommands"]

    val set_status_bar_commands : t -> Command.t list -> unit
      [@@js.set "statusBarCommands"]

    val create_resource_group
      :  t
      -> id:string
      -> label:string
      -> SourceControlResourceGroup.t
      [@@js.call "createResourceGroup"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "SourceControl"]

  module Scm : sig
    val input_box : SourceControlInputBox.t [@@js.global "inputBox"]

    val create_source_control
      :  id:string
      -> label:string
      -> ?root_uri:Uri.t
      -> unit
      -> SourceControl.t
      [@@js.global "createSourceControl"]
  end
  [@@js.scope "scm"]

  module DebugProtocolMessage : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DebugProtocolSource : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Breakpoint : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val enabled : t -> bool [@@js.get "enabled"]

    val condition : t -> string [@@js.get "condition"]

    val hit_condition : t -> string [@@js.get "hitCondition"]

    val log_message : t -> string [@@js.get "logMessage"]

    val create
      :  ?enabled:bool
      -> ?condition:string
      -> ?hit_condition:string
      -> ?log_message:string
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "Breakpoint"]

  module SourceBreakpoint : sig
    include module type of struct
      include Breakpoint
    end

    val location : t -> Location.t [@@js.get "location"]

    val create
      :  location:Location.t
      -> ?enabled:bool
      -> ?condition:string
      -> ?hit_condition:string
      -> ?log_message:string
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "SourceBreakpoint"]

  module FunctionBreakpoint : sig
    include module type of struct
      include Breakpoint
    end

    val function_name : t -> string [@@js.get "functionName"]

    val create
      :  function_name:string
      -> ?enabled:bool
      -> ?condition:string
      -> ?hit_condition:string
      -> ?log_message:string
      -> unit
      -> t
      [@@js.create]

    include module type of struct
      include Breakpoint
    end
  end
  [@@js.scope "FunctionBreakpoint"]

  module BreakpointsChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val added : t -> Breakpoint.t list [@@js.get "added"]

    val removed : t -> Breakpoint.t list [@@js.get "removed"]

    val changed : t -> Breakpoint.t list [@@js.get "changed"]
  end
  [@@js.scope "BreakpointsChangeEvent"]

  module DebugProtocolBreakpoint : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DebugConfiguration : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val type_ : t -> string [@@js.get "type"]

    val set_type : t -> string -> unit [@@js.set "type"]

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val request : t -> string [@@js.get "request"]

    val set_request : t -> string -> unit [@@js.set "request"]

    val get : t -> string -> any [@@js.index_get]

    val set : t -> string -> any -> unit [@@js.index_set]
  end
  [@@js.scope "DebugConfiguration"]

  module DebugSession : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val type_ : t -> string [@@js.get "type"]

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val workspace_folder : t -> WorkspaceFolder.t or_undefined
      [@@js.get "workspaceFolder"]

    val configuration : t -> DebugConfiguration.t [@@js.get "configuration"]

    val custom_request
      :  t
      -> command:string
      -> ?args:any
      -> unit
      -> any Promise.t
      [@@js.call "customRequest"]

    val get_debug_protocol_breakpoint
      :  t
      -> breakpoint:Breakpoint.t
      -> DebugProtocolBreakpoint.t or_undefined Promise.t
      [@@js.call "getDebugProtocolBreakpoint"]
  end
  [@@js.scope "DebugSession"]

  module DebugSessionCustomEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val session : t -> DebugSession.t [@@js.get "session"]

    val event : t -> string [@@js.get "event"]

    val body : t -> any [@@js.get "body"]
  end
  [@@js.scope "DebugSessionCustomEvent"]

  module DebugConfigurationProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_debug_configurations
      :  t
      -> folder:WorkspaceFolder.t or_undefined
      -> ?token:CancellationToken.t
      -> unit
      -> DebugConfiguration.t list ProviderResult.t
      [@@js.call "provideDebugConfigurations"]

    val resolve_debug_configuration
      :  t
      -> folder:WorkspaceFolder.t or_undefined
      -> debug_configuration:DebugConfiguration.t
      -> ?token:CancellationToken.t
      -> unit
      -> DebugConfiguration.t ProviderResult.t
      [@@js.call "resolveDebugConfiguration"]

    val resolve_debug_configuration_with_substituted_variables
      :  t
      -> folder:WorkspaceFolder.t or_undefined
      -> debug_configuration:DebugConfiguration.t
      -> ?token:CancellationToken.t
      -> unit
      -> DebugConfiguration.t ProviderResult.t
      [@@js.call "resolveDebugConfigurationWithSubstitutedVariables"]
  end
  [@@js.scope "DebugConfigurationProvider"]

  module DebugAdapterExecutableOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    module Env : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get : t -> string -> string [@@js.index_get]

      val set : t -> string -> string -> unit [@@js.index_set]
    end

    val env : t -> Env.t [@@js.get "env"]

    val set_env : t -> Env.t -> unit [@@js.set "env"]

    val cwd : t -> string [@@js.get "cwd"]

    val set_cwd : t -> string -> unit [@@js.set "cwd"]
  end
  [@@js.scope "DebugAdapterExecutableOptions"]

  module DebugAdapterExecutable : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  command:string
      -> ?args:string list
      -> ?options:DebugAdapterExecutableOptions.t
      -> unit
      -> t
      [@@js.create]

    val command : t -> string [@@js.get "command"]

    val args : t -> string list [@@js.get "args"]

    val options : t -> DebugAdapterExecutableOptions.t [@@js.get "options"]
  end
  [@@js.scope "DebugAdapterExecutable"]

  module DebugAdapterServer : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val port : t -> int [@@js.get "port"]

    val host : t -> string [@@js.get "host"]

    val create : port:int -> ?host:string -> unit -> t [@@js.create]
  end
  [@@js.scope "DebugAdapterServer"]

  module DebugAdapterNamedPipeServer : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val path : t -> string [@@js.get "path"]

    val create : path:string -> t [@@js.create]
  end
  [@@js.scope "DebugAdapterNamedPipeServer"]

  module DebugAdapter : sig
    include module type of struct
      include Disposable
    end

    val on_did_send_message : t -> DebugProtocolMessage.t Event.t
      [@@js.get "onDidSendMessage"]

    val handle_message : t -> message:DebugProtocolMessage.t -> unit
      [@@js.call "handleMessage"]
  end
  [@@js.scope "DebugAdapter"]

  module DebugAdapterInlineImplementation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : implementation:DebugAdapter.t -> t [@@js.create]
  end
  [@@js.scope "DebugAdapterInlineImplementation"]

  module DebugAdapterDescriptor : sig
    type t =
      ( DebugAdapterExecutable.t
      , DebugAdapterInlineImplementation.t
      , DebugAdapterNamedPipeServer.t
      , DebugAdapterServer.t )
      union4

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DebugAdapterDescriptorFactory : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create_debug_adapter_descriptor
      :  t
      -> session:DebugSession.t
      -> executable:DebugAdapterExecutable.t or_undefined
      -> DebugAdapterDescriptor.t ProviderResult.t
      [@@js.call "createDebugAdapterDescriptor"]
  end
  [@@js.scope "DebugAdapterDescriptorFactory"]

  module DebugAdapterTracker : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_will_start_session : t -> unit [@@js.call "onWillStartSession"]

    val on_will_receive_message : t -> message:any -> unit
      [@@js.call "onWillReceiveMessage"]

    val on_did_send_message : t -> message:any -> unit
      [@@js.call "onDidSendMessage"]

    val on_will_stop_session : t -> unit [@@js.call "onWillStopSession"]

    val on_error : t -> error:Error.t -> unit [@@js.call "onError"]

    val on_exit
      :  t
      -> code:int or_undefined
      -> signal:string or_undefined
      -> unit
      [@@js.call "onExit"]
  end
  [@@js.scope "DebugAdapterTracker"]

  module DebugAdapterTrackerFactory : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create_debug_adapter_tracker
      :  t
      -> session:DebugSession.t
      -> DebugAdapterTracker.t ProviderResult.t
      [@@js.call "createDebugAdapterTracker"]
  end
  [@@js.scope "DebugAdapterTrackerFactory"]

  module DebugConsole : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val append : t -> value:string -> unit [@@js.call "append"]

    val append_line : t -> value:string -> unit [@@js.call "appendLine"]
  end
  [@@js.scope "DebugConsole"]

  module DebugConsoleMode : sig
    type t = ([ `MergeWithParent [@js 1] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DebugSessionOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val parent_session : t -> DebugSession.t [@@js.get "parentSession"]

    val set_parent_session : t -> DebugSession.t -> unit
      [@@js.set "parentSession"]

    val console_mode : t -> DebugConsoleMode.t [@@js.get "consoleMode"]

    val set_console_mode : t -> DebugConsoleMode.t -> unit
      [@@js.set "consoleMode"]

    val no_debug : t -> bool [@@js.get "noDebug"]

    val set_no_debug : t -> bool -> unit [@@js.set "noDebug"]

    val compact : t -> bool [@@js.get "compact"]

    val set_compact : t -> bool -> unit [@@js.set "compact"]
  end
  [@@js.scope "DebugSessionOptions"]

  module DebugConfigurationProviderTriggerKind : sig
    type t = ([ `Dynamic [@js 2] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Debug : sig
    val active_debug_session : DebugSession.t or_undefined
      [@@js.global "activeDebugSession"]

    val active_debug_console : DebugConsole.t [@@js.global "activeDebugConsole"]

    val breakpoints : Breakpoint.t list [@@js.global "breakpoints"]

    val on_did_change_active_debug_session : DebugSession.t or_undefined Event.t
      [@@js.global "onDidChangeActiveDebugSession"]

    val on_did_start_debug_session : DebugSession.t Event.t
      [@@js.global "onDidStartDebugSession"]

    val on_did_receive_debug_session_custom_event
      : DebugSessionCustomEvent.t Event.t
      [@@js.global "onDidReceiveDebugSessionCustomEvent"]

    val on_did_terminate_debug_session : DebugSession.t Event.t
      [@@js.global "onDidTerminateDebugSession"]

    val on_did_change_breakpoints : BreakpointsChangeEvent.t Event.t
      [@@js.global "onDidChangeBreakpoints"]

    val register_debug_configuration_provider
      :  debug_type_:string
      -> provider:DebugConfigurationProvider.t
      -> ?trigger_kind:DebugConfigurationProviderTriggerKind.t
      -> unit
      -> Disposable.t
      [@@js.global "registerDebugConfigurationProvider"]

    val register_debug_adapter_descriptor_factory
      :  debug_type_:string
      -> factory:DebugAdapterDescriptorFactory.t
      -> Disposable.t
      [@@js.global "registerDebugAdapterDescriptorFactory"]

    val register_debug_adapter_tracker_factory
      :  debug_type_:string
      -> factory:DebugAdapterTrackerFactory.t
      -> Disposable.t
      [@@js.global "registerDebugAdapterTrackerFactory"]

    val start_debugging
      :  folder:WorkspaceFolder.t or_undefined
      -> name_or_configuration:DebugConfiguration.t or_string
      -> ?parent_session_or_options:
           (DebugSession.t, DebugSessionOptions.t) union2
      -> unit
      -> bool Promise.t
      [@@js.global "startDebugging"]

    val stop_debugging : ?session:DebugSession.t -> unit -> unit Promise.t
      [@@js.global "stopDebugging"]

    val add_breakpoints : breakpoints:Breakpoint.t list -> unit
      [@@js.global "addBreakpoints"]

    val remove_breakpoints : breakpoints:Breakpoint.t list -> unit
      [@@js.global "removeBreakpoints"]

    val as_debug_source_uri
      :  source:DebugProtocolSource.t
      -> ?session:DebugSession.t
      -> unit
      -> Uri.t
      [@@js.global "asDebugSourceUri"]
  end
  [@@js.scope "debug"]

  module Extensions : sig
    val get_extension : extension_id:string -> any Extension.t or_undefined
      [@@js.global "getExtension"]

    val get_extension : extension_id:string -> 'T Extension.t or_undefined
      [@@js.global "getExtension"]

    val all : any Extension.t list [@@js.global "all"]

    val on_did_change : unit Event.t [@@js.global "onDidChange"]
  end
  [@@js.scope "extensions"]

  module CommentThreadCollapsibleState : sig
    type t = ([ `Expanded [@js 1] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CommentMode : sig
    type t = ([ `Preview [@js 1] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CommentAuthorInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val icon_path : t -> Uri.t [@@js.get "iconPath"]

    val set_icon_path : t -> Uri.t -> unit [@@js.set "iconPath"]
  end
  [@@js.scope "CommentAuthorInformation"]

  module CommentReaction : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> string [@@js.get "label"]

    val icon_path : t -> Uri.t or_string [@@js.get "iconPath"]

    val count : t -> int [@@js.get "count"]

    val author_has_reacted : t -> bool [@@js.get "authorHasReacted"]
  end
  [@@js.scope "CommentReaction"]

  module Comment : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val body : t -> MarkdownString.t or_string [@@js.get "body"]

    val set_body : t -> MarkdownString.t or_string -> unit [@@js.set "body"]

    val mode : t -> CommentMode.t [@@js.get "mode"]

    val set_mode : t -> CommentMode.t -> unit [@@js.set "mode"]

    val author : t -> CommentAuthorInformation.t [@@js.get "author"]

    val set_author : t -> CommentAuthorInformation.t -> unit [@@js.set "author"]

    val context_value : t -> string [@@js.get "contextValue"]

    val set_context_value : t -> string -> unit [@@js.set "contextValue"]

    val reactions : t -> CommentReaction.t list [@@js.get "reactions"]

    val set_reactions : t -> CommentReaction.t list -> unit
      [@@js.set "reactions"]

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]
  end
  [@@js.scope "Comment"]

  module CommentThread : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val comments : t -> Comment.t list [@@js.get "comments"]

    val set_comments : t -> Comment.t list -> unit [@@js.set "comments"]

    val collapsible_state : t -> CommentThreadCollapsibleState.t
      [@@js.get "collapsibleState"]

    val set_collapsible_state : t -> CommentThreadCollapsibleState.t -> unit
      [@@js.set "collapsibleState"]

    val can_reply : t -> bool [@@js.get "canReply"]

    val set_can_reply : t -> bool -> unit [@@js.set "canReply"]

    val context_value : t -> string [@@js.get "contextValue"]

    val set_context_value : t -> string -> unit [@@js.set "contextValue"]

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "CommentThread"]

  module CommentReply : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val thread : t -> CommentThread.t [@@js.get "thread"]

    val set_thread : t -> CommentThread.t -> unit [@@js.set "thread"]

    val text : t -> string [@@js.get "text"]

    val set_text : t -> string -> unit [@@js.set "text"]
  end
  [@@js.scope "CommentReply"]

  module CommentingRangeProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_commenting_ranges
      :  t
      -> document:TextDocument.t
      -> token:CancellationToken.t
      -> Range.t list ProviderResult.t
      [@@js.call "provideCommentingRanges"]
  end
  [@@js.scope "CommentingRangeProvider"]

  module CommentOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val prompt : t -> string [@@js.get "prompt"]

    val set_prompt : t -> string -> unit [@@js.set "prompt"]

    val place_holder : t -> string [@@js.get "placeHolder"]

    val set_place_holder : t -> string -> unit [@@js.set "placeHolder"]
  end
  [@@js.scope "CommentOptions"]

  module CommentController : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val label : t -> string [@@js.get "label"]

    val options : t -> CommentOptions.t [@@js.get "options"]

    val set_options : t -> CommentOptions.t -> unit [@@js.set "options"]

    val commenting_range_provider : t -> CommentingRangeProvider.t
      [@@js.get "commentingRangeProvider"]

    val set_commenting_range_provider : t -> CommentingRangeProvider.t -> unit
      [@@js.set "commentingRangeProvider"]

    val create_comment_thread
      :  t
      -> uri:Uri.t
      -> range:Range.t
      -> comments:Comment.t list
      -> CommentThread.t
      [@@js.call "createCommentThread"]

    val reaction_handler
      :  t
      -> comment:Comment.t
      -> reaction:CommentReaction.t
      -> unit Promise.t
      [@@js.call "reactionHandler"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "CommentController"]

  module Comments : sig
    val create_comment_controller
      :  id:string
      -> label:string
      -> CommentController.t
      [@@js.global "createCommentController"]
  end
  [@@js.scope "comments"]

  module AuthenticationSessionAccountInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val label : t -> string [@@js.get "label"]
  end
  [@@js.scope "AuthenticationSessionAccountInformation"]

  module AuthenticationSession : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val access_token : t -> string [@@js.get "accessToken"]

    val account : t -> AuthenticationSessionAccountInformation.t
      [@@js.get "account"]

    val scopes : t -> string list [@@js.get "scopes"]
  end
  [@@js.scope "AuthenticationSession"]

  module AuthenticationGetSessionOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create_if_none : t -> bool [@@js.get "createIfNone"]

    val set_create_if_none : t -> bool -> unit [@@js.set "createIfNone"]

    val clear_session_preference : t -> bool [@@js.get "clearSessionPreference"]

    val set_clear_session_preference : t -> bool -> unit
      [@@js.set "clearSessionPreference"]
  end
  [@@js.scope "AuthenticationGetSessionOptions"]

  module AuthenticationProviderInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val label : t -> string [@@js.get "label"]
  end
  [@@js.scope "AuthenticationProviderInformation"]

  module AuthenticationSessionsChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provider : t -> AuthenticationProviderInformation.t
      [@@js.get "provider"]
  end
  [@@js.scope "AuthenticationSessionsChangeEvent"]

  module AuthenticationProviderOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val supports_multiple_accounts : t -> bool
      [@@js.get "supportsMultipleAccounts"]
  end
  [@@js.scope "AuthenticationProviderOptions"]

  module AuthenticationProviderAuthenticationSessionsChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val added : t -> AuthenticationSession.t list [@@js.get "added"]

    val removed : t -> AuthenticationSession.t list [@@js.get "removed"]

    val changed : t -> AuthenticationSession.t list [@@js.get "changed"]
  end
  [@@js.scope "AuthenticationProviderAuthenticationSessionsChangeEvent"]

  module AuthenticationProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_change_sessions
      :  t
      -> AuthenticationProviderAuthenticationSessionsChangeEvent.t Event.t
      [@@js.get "onDidChangeSessions"]

    val get_sessions
      :  t
      -> ?scopes:string list
      -> unit
      -> AuthenticationSession.t list Promise.t
      [@@js.call "getSessions"]

    val create_session
      :  t
      -> scopes:string list
      -> AuthenticationSession.t Promise.t
      [@@js.call "createSession"]

    val remove_session : t -> session_id:string -> unit Promise.t
      [@@js.call "removeSession"]
  end
  [@@js.scope "AuthenticationProvider"]

  module Authentication : sig
    module AuthenticationGetSessionOptions2 : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val create_if_none : t -> ([ `L_b_true [@js true] ][@js.enum])
        [@@js.get "createIfNone"]

      val set_create_if_none : t -> ([ `L_b_true ][@js.enum]) -> unit
        [@@js.set "createIfNone"]
    end

    val get_session
      :  provider_id:string
      -> scopes:string list
      -> options:
           ( AuthenticationGetSessionOptions.t
           , AuthenticationGetSessionOptions2.t )
           intersection2
      -> AuthenticationSession.t Promise.t
      [@@js.global "getSession"]

    val get_session
      :  provider_id:string
      -> scopes:string list
      -> ?options:AuthenticationGetSessionOptions.t
      -> unit
      -> AuthenticationSession.t or_undefined Promise.t
      [@@js.global "getSession"]

    val on_did_change_sessions : AuthenticationSessionsChangeEvent.t Event.t
      [@@js.global "onDidChangeSessions"]

    val register_authentication_provider
      :  id:string
      -> label:string
      -> provider:AuthenticationProvider.t
      -> ?options:AuthenticationProviderOptions.t
      -> unit
      -> Disposable.t
      [@@js.global "registerAuthenticationProvider"]
  end
  [@@js.scope "authentication"]
end
[@@js.scope "vscode"]

include module type of struct
  include Vscode
end
