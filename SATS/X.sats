(* ****** ****** *)
//
// API in ATS for X11
// Author: Ryan King <rtking@bu.edu>
//
// X.sats: X11 Types and Definitions
//
(* ****** ****** *)

// #ifndef X11_X
// #define X11_X

(* ****** ****** *)

%{#
#include "./../CATS/X.cats"
%}

(* ****** ****** *)

// Basic Types

(* ****** ****** *)

abst@ype XID      = $extype"XID"
abst@ype Atom     = $extype"Atom"
abst@ype Mask     = $extype"Mask"
abst@ype VisualID = $extype"VisualID"
abst@ype Time     = $extype"Time"

(* ****** ****** *)

abst@ype Window   = $extype"Window"
abst@ype Font     = $extype"Font"
abst@ype Pixmap   = $extype"Pixmap"
abst@ype Cursor   = $extype"Cursor"
abst@ype Colormap = $extype"Colormap"
abst@ype GContext = $extype"GContext"
abst@ype KeySym   = $extype"KeySym"
abst@ype KeyCode  = $extype"KeyCode"

(* ****** ****** *)

abst@ype Drawable = $extype"Drawable"

// symintr Drawable

// castfn Drawable_of_Window(Window): Drawable
// castfn Drawable_of_Pixmap(Pixmap): Drawable

// overload Drawable with Drawable_of_Window
// overload Drawable with Drawable_of_Pixmap

(* ****** ****** *)

// Events

(* ****** ****** *)

(* Event Masks *)

abst@ype EventMask = lint
fun lor_EventMask_EventMask(em1: EventMask, em2: EventMask): EventMask = "mac#%"
overload lor with lor_EventMask_EventMask

macdef NoEventMask              = $extval(EventMask, "NoEventMask")
macdef KeyPressMask             = $extval(EventMask, "KeyPressMask")
macdef KeyReleaseMask           = $extval(EventMask, "KeyReleaseMask")
macdef ButtonPressMask          = $extval(EventMask, "ButtonPressMask")
macdef ButtonReleaseMask        = $extval(EventMask, "ButtonReleaseMask")
macdef EnterWindowMask          = $extval(EventMask, "EnterWindowMask")
macdef LeaveWindowMask          = $extval(EventMask, "LeaveWindowMask")
macdef PointerMotionMask        = $extval(EventMask, "PointerMotionMask")
macdef PointerMotionHintMask    = $extval(EventMask, "PointerMotionHintMask")
macdef Button1MotionMask        = $extval(EventMask, "Button1MotionMask")
macdef Button2MotionMask        = $extval(EventMask, "Button2MotionMask")
macdef Button3MotionMask        = $extval(EventMask, "Button3MotionMask")
macdef Button4MotionMask        = $extval(EventMask, "Button4MotionMask")
macdef Button5MotionMask        = $extval(EventMask, "Button5MotionMask")
macdef ButtonMotionMask         = $extval(EventMask, "ButtonMotionMask")
macdef KeymapStateMask          = $extval(EventMask, "KeymapStateMask")
macdef ExposureMask             = $extval(EventMask, "ExposureMask")
macdef VisibilityChangeMask     = $extval(EventMask, "VisibilityChangeMask")
macdef StructureNotifyMask      = $extval(EventMask, "StructureNotifyMask")
macdef ResizeRedirectMask       = $extval(EventMask, "ResizeRedirectMask")
macdef SubstructureNotifyMask   = $extval(EventMask, "SubstructureNotifyMask")
macdef SubstructureRedirectMask = $extval(EventMask, "SubstructureRedirectMask")
macdef FocusChangeMask          = $extval(EventMask, "FocusChangeMask")
macdef PropertyChangeMask       = $extval(EventMask, "PropertyChangeMask")
macdef ColormapChangeMask       = $extval(EventMask, "ColormapChangeMask")
macdef OwnerGrabButtonMask      = $extval(EventMask, "OwnerGrabButtonMask")

(* Event Types *)

abst@ype EventType = int
fun eq_EventType_EventType(et1: EventType, et2: EventType): bool = "mac#%"
overload = with eq_EventType_EventType

(* ****** ****** *)

macdef KeyPress         = $extval(EventType, "KeyPress")
macdef KeyRelease       = $extval(EventType, "KeyRelease")
macdef ButtonPress      = $extval(EventType, "ButtonPress")
macdef ButtonRelease    = $extval(EventType, "ButtonRelease")
macdef MotionNotify     = $extval(EventType, "MotionNotify")
macdef EnterNotify      = $extval(EventType, "EnterNotify")
macdef LeaveNotify      = $extval(EventType, "LeaveNotify")
macdef FocusIn          = $extval(EventType, "FocusIn")
macdef FocusOut         = $extval(EventType, "FocusOut")
macdef KeymapNotify     = $extval(EventType, "KeymapNotify")
macdef Expose           = $extval(EventType, "Expose")
macdef GraphicsExpose   = $extval(EventType, "GraphicsExpose")
macdef NoExpose         = $extval(EventType, "NoExpose")
macdef VisibilityNotify = $extval(EventType, "VisibilityNotify")
macdef CreateNotify     = $extval(EventType, "CreateNotify")
macdef DestroyNotify    = $extval(EventType, "DestroyNotify")
macdef UnmapNotify      = $extval(EventType, "UnmapNotify")
macdef MapNotify        = $extval(EventType, "MapNotify")
macdef MapRequest       = $extval(EventType, "MapRequest")
macdef ReparentNotify   = $extval(EventType, "ReparentNotify")
macdef ConfigureNotify  = $extval(EventType, "ConfigureNotify")
macdef ConfigureRequest = $extval(EventType, "ConfigureRequest")
macdef GravityNotify    = $extval(EventType, "GravityNotify")
macdef ResizeRequest    = $extval(EventType, "ResizeRequest")
macdef CirculateNotify  = $extval(EventType, "CirculateNotify")
macdef CirculateRequest = $extval(EventType, "CirculateRequest")
macdef PropertyNotify   = $extval(EventType, "PropertyNotify")
macdef SelectionClear   = $extval(EventType, "SelectionClear")
macdef SelectionRequest = $extval(EventType, "SelectionRequest")
macdef SelectionNotify  = $extval(EventType, "SelectionNotify")
macdef ColormapNotify   = $extval(EventType, "ColormapNotify")
macdef ClientMessage    = $extval(EventType, "ClientMessage")
macdef MappingNotify    = $extval(EventType, "MappingNotify")
macdef GenericEvent     = $extval(EventType, "GenericEvent")
macdef LASTEvent        = $extval(EventType, "LASTEvent")

(* Key Masks *)

macdef ShiftMask   = $extval(uint, "ShiftMask")
macdef LockMask    = $extval(uint, "LockMask")
macdef ControlMask = $extval(uint, "ControlMask")
macdef Mod1Mask    = $extval(uint, "Mod1Mask")
macdef Mod2Mask    = $extval(uint, "Mod2Mask")
macdef Mod3Mask    = $extval(uint, "Mod3Mask")
macdef Mod4Mask    = $extval(uint, "Mod4Mask")
macdef Mod5Mask    = $extval(uint, "Mod5Mask")

(* Modifier Names *)

macdef ShiftMapIndex   = $extval(int, "ShiftMapIndex")
macdef LockMapIndex    = $extval(int, "LockMapIndex")
macdef ControlMapIndex = $extval(int, "ControlMapIndex")
macdef Mod1MapIndex    = $extval(int, "Mod1MapIndex")
macdef Mod2MapIndex    = $extval(int, "Mod2MapIndex")
macdef Mod3MapIndex    = $extval(int, "Mod3MapIndex")
macdef Mod4MapIndex    = $extval(int, "Mod4MapIndex")
macdef Mod5MapIndex    = $extval(int, "Mod5MapIndex")

(* Button Masks *)

macdef Button1Mask = $extval(int, "Button1Mask")
macdef Button2Mask = $extval(int, "Button2Mask")
macdef Button3Mask = $extval(int, "Button3Mask")
macdef Button4Mask = $extval(int, "Button4Mask")
macdef Button5Mask = $extval(int, "Button5Mask")
macdef AnyModifier = $extval(int, "AnyModifier")

(* Button Names *)

macdef Button1 = $extval(int, "Button1")
macdef Button2 = $extval(int, "Button2")
macdef Button3 = $extval(int, "Button3")
macdef Button4 = $extval(int, "Button4")
macdef Button5 = $extval(int, "Button5")

(* Notify Modes *)

macdef NotifyNormal       = $extval(int, "NotifyNormal")
macdef NotifyGrab         = $extval(int, "NotifyGrab")
macdef NotifyUngrab       = $extval(int, "NotifyUngrab")
macdef NotifyWhileGrabbed = $extval(int, "NotifyWhileGrabbed")

macdef NotifyHint         = $extval(int, "NotifyHint")

(* Notify Detail *)

macdef NotifyAncestor         = $extval(int, "NotifyAncestor")
macdef NotifyVirtual          = $extval(int, "NotifyVirtual")
macdef NotifyInferior         = $extval(int, "NotifyInferior")
macdef NotifyNonlinear        = $extval(int, "NotifyNonlinear")
macdef NotifyNonlinearVirtual = $extval(int, "NotifyNonlinearVirtual")
macdef NotifyPointer          = $extval(int, "NotifyPointer")
macdef NotifyPointerRoot      = $extval(int, "NotifyPointerRoot")
macdef NotifyDetailNone       = $extval(int, "NotifyDetailNone")

(* Visibility Modes *)

macdef VisibilityUnobscured        = $extval(int, "VisibilityUnobscured")
macdef VisibilityPartiallyObscured = $extval(int, "VisibilityPartiallyObscured")
macdef VisibilityFullyObscured     = $extval(int, "VisibilityFullyObscured")

(* Circulation Request *)

macdef PlaceOnTop    = $extval(int, "PlaceOnTop")
macdef PlaceOnBottom = $extval(int, "PlaceOnBottom")

(* Protocol Families *)

macdef FamilyInternet  = $extval(int, "FamilyInternet")
macdef FamilyDECnet    = $extval(int, "FamilyDECnet")
macdef FamilyChaos     = $extval(int, "FamilyChaos")
macdef FamilyInternet6 = $extval(int, "FamilyInternet6")

macdef FamilyServerInterpreted = $extval(int, "FamilyServerInterpreted")

(* Property Notifications *)

macdef PropertyNewValue = $extval(int, "PropertyNewValue")
macdef PropertyDelete   = $extval(int, "PropertyDelete")

(* Color Map Notifications *)

macdef ColormapUninstalled = $extval(int, "ColormapUninstalled")
macdef ColormapInstalled   = $extval(int, "ColormapInstalled")

(* Grab Modes *)

macdef GrabModeSync  = $extval(int, "GrabModeSync")
macdef GrabModeAsync = $extval(int, "GrabModeAsync")

(* GrabKeyboard Reply Statuses *)

macdef GrabSuccess     = $extval(int, "GrabSuccess")
macdef AlreadyGrabbed  = $extval(int, "AlreadyGrabbed")
macdef GrabInvalidTime = $extval(int, "GrabInvalidTime")
macdef GrabNotViewable = $extval(int, "GrabNotViewable")
macdef GrabFrozen      = $extval(int, "GrabFrozen")

(* AllowEvents Modes *)

macdef AsyncPointer   = $extval(int, "AsyncPointer")
macdef SyncPointer    = $extval(int, "SyncPointer")
macdef ReplayPointer  = $extval(int, "ReplayPointer")
macdef AsyncKeyboard  = $extval(int, "AsyncKeyboard")
macdef SyncKeyboard   = $extval(int, "SyncKeyboard")
macdef ReplayKeyboard = $extval(int, "ReplayKeyboard")
macdef AsyncBoth      = $extval(int, "AsyncBoth")
macdef SyncBoth       = $extval(int, "SyncBoth")

(* Used in SetInputFocus / GetInputFocus *)

macdef RevertToNone        = $extval(int, "RevertToNone")
macdef RevertToPointerRoot = $extval(int, "RevertToPointerRoot")
macdef RevertToParent      = $extval(int, "RevertToParent")

(* ****** ****** *)

// Graphics Definitions

(* ****** ****** *)

(* Graphics Functions *)

macdef GXclear        = $extval (int, "GXclear")
macdef GXand          = $extval (int, "GXand")
macdef GXandReverse   = $extval (int, "GXandReverse")
macdef GXcopy         = $extval (int, "GXcopy")
macdef GXandInverted  = $extval (int, "GXandInverted")
macdef GXnoop         = $extval (int, "GXnoop")
macdef GXxor          = $extval (int, "GXxor")
macdef GXor           = $extval (int, "GXor")
macdef GXnor          = $extval (int, "GXnor")
macdef GXequiv        = $extval (int, "GXequiv")
macdef GXinvert       = $extval (int, "GXinvert")
macdef GXorReverse    = $extval (int, "GXorReverse")
macdef GXcopyInverted = $extval (int, "GXcopyInverted")
macdef GXorInverted   = $extval (int, "GXorInverted")
macdef GXnand         = $extval (int, "GXnand")
macdef GXset          = $extval (int, "GXset")

(* Line Styles *)

macdef LineSolid      = $extval (int, "LineSolid")
macdef LineOnOffDash  = $extval (int, "LineOnOffDash")
macdef LineDoubleDash = $extval (int, "LineDoubleDash")

(* Cap Style *)

macdef CapNotLast    = $extval (int, "CapNotLast")
macdef CapButt       = $extval (int, "CapButt")
macdef CapRound      = $extval (int, "CapRound")
macdef CapProjecting = $extval (int, "CapProjecting")

(* Joint Style *)

macdef JoinMiter = $extval (int, "JoinMiter")
macdef JoinRound = $extval (int, "JoinRound")
macdef JoinBevel = $extval (int, "JoinBevel")

(* fill Style *)

macdef FillSolid          = $extval (int, "FillSolid")
macdef FillTiled          = $extval (int, "FillTiled")
macdef FillStippled       = $extval (int, "FillStippled")
macdef FillOpaqueStippled = $extval (int, "FillOpaqueStippled")

(* fill Rule *)

macdef EvenOddRule = $extval (int, "EvenOddRule")
macdef WindingRule = $extval (int, "WindingRule")

(* Subwindow Mode *)

macdef ClipByChildren   = $extval (int, "ClipByChildren")
macdef IncludeInferiors = $extval (int, "IncludeInferiors")

(** SetClipRectangles Ordering *)

macdef Unsorted = $extval (int, "Unsorted")
macdef YSorted  = $extval (int, "YSorted")
macdef YXSorted = $extval (int, "YXSorted")
macdef YXBanded = $extval (int, "YXBanded")

(* CoordinateMode Mode *)

macdef CoordModeOrigin   = $extval (int, "CoordModeOrigin")
macdef CoordModePrevious = $extval (int, "CoordModePrevious")

(* Polygon Shapes *)

macdef Complex   = $extval (int, "Complex")
macdef Nonconvex = $extval (int, "Nonconvex")
macdef Convex    = $extval (int, "Convex")

(* Arc Modes *)

macdef ArcChord    = $extval (int, "ArcChord")
macdef ArcPieSlice = $extval (int, "ArcPieSlice")

(* GC Components *)

macdef GCFunction          = $extval(int, "GCFunction")
macdef GCPlaneMask         = $extval(int, "GCPlaneMask")
macdef GCForeground        = $extval(int, "GCForeground")
macdef GCBackground        = $extval(int, "GCBackground")
macdef GCLineWidth         = $extval(int, "GCLineWidth")
macdef GCLineStyle         = $extval(int, "GCLineStyle")
macdef GCCapStyle          = $extval(int, "GCCapStyle")
macdef GCJoinStyle         = $extval(int, "GCJoinStyle")
macdef GCFillStyle         = $extval(int, "GCFillStyle")
macdef GCFillRule          = $extval(int, "GCFillRule")
macdef GCTile              = $extval(int, "GCTile")
macdef GCStipple           = $extval(int, "GCStipple")
macdef GCTileStipXOrigin   = $extval(int, "GCTileStipXOrigin")
macdef GCTileStipYOrigin   = $extval(int, "GCTileStipYOrigin")
macdef GCFont              = $extval(int, "GCFont")
macdef GCSubwindowMode     = $extval(int, "GCSubwindowMode")
macdef GCGraphicsExposures = $extval(int, "GCGraphicsExposures")
macdef GCClipXOrigin       = $extval(int, "GCClipXOrigin")
macdef GCClipYOrigin       = $extval(int, "GCClipYOrigin")
macdef GCClipMask          = $extval(int, "GCClipMask")
macdef GCDashOffset        = $extval(int, "GCDashOffset")
macdef GCDashList          = $extval(int, "GCDashList")
macdef GCArcMode           = $extval(int, "GCArcMode")
macdef GCLastBit           = $extval(int, "GCLastBit")

(* ****** ****** *)

// Fonts

(* ****** ****** *)

macdef FontLeftToRight = $extval(int, "FontLeftToRight")
macdef FontRightToLeft = $extval(int, "FontRightToLeft")

macdef FontChange      = $extval(int, "FontChange")

(* ****** ****** *)

// Imaging

(* ****** ****** *)

macdef XYBitmap = $extval(int, "XYBitmap")
macdef XYPixmap = $extval(int, "XYPixmap")
macdef ZPixmap  = $extval(int, "ZPixmap")

(* ****** ****** *)

// Color Map Stuff

(* ****** ****** *)

macdef AllocNone = $extval(int, "AllocNone")
macdef AllocAll  = $extval(int, "AllocAll")

macdef DoRed     = $extval(int, "DoRed")
macdef DoGreen   = $extval(int, "DoGreen")
macdef DoBlue    = $extval(int, "DoBlue")

(* ****** ****** *)

// Cursor Stuff

(* ****** ****** *)

macdef CursorShape  = $extval(int, "CursorShape")
macdef TileShape    = $extval(int, "TileShape")
macdef StippleShape = $extval(int, "StippleShape")

(* ****** ****** *)

// Window Definitions

(* ****** ****** *)

(* Window Classes for Create Window*)

macdef InputOutput = $extval(int, "InputOutput")
macdef InputOnly   = $extval(int, "InputOnly")

(* Window Attributes for CreateWindow/ChangeWindow Attributes *)

macdef CWBackPixmap       = $extval(ulint, "CWBackPixmap")
macdef CWBackPixel        = $extval(ulint, "CWBackPixel")
macdef CWBorderPixmap     = $extval(ulint, "CWBorderPixmap")
macdef CWBorderPixel      = $extval(ulint, "CWBorderPixel")
macdef CWBitGravity       = $extval(ulint, "CWBitGravity")
macdef CWWinGravity       = $extval(ulint, "CWWinGravity")
macdef CWBackingStore     = $extval(ulint, "CWBackingStore")
macdef CWBackingPlanes    = $extval(ulint, "CWBackingPlanes")
macdef CWBackingPixel     = $extval(ulint, "CWBackingPixel")
macdef CWOverrideRedirect = $extval(ulint, "CWOverrideRedirect")
macdef CWSaveUnder        = $extval(ulint, "CWSaveUnder")
macdef CWEventMask        = $extval(ulint, "CWEventMask")
macdef CWDontPropagate    = $extval(ulint, "CWDontPropagate")
macdef CWColormap         = $extval(ulint, "CWColormap")
macdef CWCursor           = $extval(ulint, "CWCursor")

(* ConfigureWindow Structure *)

macdef CWX           = $extval(int, "CWX")
macdef CWY           = $extval(int, "CWY")
macdef CWWidth       = $extval(int, "CWWidth")
macdef CWHeight      = $extval(int, "CWHeight")
macdef CWBorderWidth = $extval(int, "CWBorderWidth")
macdef CWSibling     = $extval(int, "CWSibling")
macdef CWStackMode   = $extval(int, "CWStackMode")

(* Bit Gravity *)

macdef ForgetGravity    = $extval(int, "ForgetGravity")
macdef NorthWestGravity = $extval(int, "NorthWestGravity")
macdef NorthGravity     = $extval(int, "NorthGravity")
macdef NorthEastGravity = $extval(int, "NorthEastGravity")
macdef WestGravity      = $extval(int, "WestGravity")
macdef CenterGravity    = $extval(int, "CenterGravity")
macdef EastGravity      = $extval(int, "EastGravity")
macdef SouthWestGravity = $extval(int, "SouthWestGravity")
macdef SouthGravity     = $extval(int, "SouthGravity")
macdef SouthEastGravity = $extval(int, "SouthEastGravity")
macdef StaticGravity    = $extval(int, "StaticGravity")

macdef UnmapGravity     = $extval(int, "UnmapGravity")

(* CreateWindow for Backing-Store Hint *)

macdef NotUseful  = $extval(int, "NotUseful")
macdef WhenMapped = $extval(int, "WhenMapped")
macdef Always     = $extval(int, "Always")

(* GetWindowAttributes Replies *)

macdef IsUnmapped   = $extval(int, "IsUnmapped")
macdef IsUnviewable = $extval(int, "IsUnviewable")
macdef IsViewable   = $extval(int, "IsViewable")

(* Used in ChangeSaveSet *)

macdef SetModeInsert = $extval(int, "SetModeInsert")
macdef SetModeDelete = $extval(int, "SetModeDelete")

(* Used in ChangeCLoseDownMode *)

macdef DestroyAll      = $extval(int, "DestroyAll")
macdef RetainPermanent = $extval(int, "RetainPermanent")
macdef RetainTemporary = $extval(int, "RetainTemporary")

(* Window Stacking Method *)

macdef Above    = $extval(int, "Above")
macdef Below    = $extval(int, "Below")
macdef TopIf    = $extval(int, "TopIf")
macdef BottomIf = $extval(int, "BottomIf")
macdef Opposite = $extval(int, "Opposite")

(* Circulation Direction *)

macdef RaiseLowest  = $extval(int, "RaiseLowest")
macdef LowerHighest = $extval(int, "LowerHighest")

(* Property Modes *)

macdef PropModeReplace = $extval(int, "PropModeReplace")
macdef PropModePrepend = $extval(int, "PropModePrepend")
macdef PropModeAppend  = $extval(int, "PropModeAppend")

(* ****** ****** *)

// Error Codes

(* ****** ****** *)

macdef Success             = $extval(int, "Success")
macdef BadRequest          = $extval(int, "BadRequest")
macdef BadValue            = $extval(int, "BadValue")
macdef BadWindow           = $extval(int, "BadWindow")
macdef BadPixmap           = $extval(int, "BadPixmap")
macdef BadAtom             = $extval(int, "BadAtom")
macdef BadCursor           = $extval(int, "BadCursor")
macdef BadFont             = $extval(int, "BadFont")
macdef BadMatch            = $extval(int, "BadMatch")
macdef BadDrawable         = $extval(int, "BadDrawable")
macdef BadAccess           = $extval(int, "BadAccess")
macdef BadAlloc            = $extval(int, "BadAlloc")
macdef BadColor            = $extval(int, "BadColor")
macdef BadGC               = $extval(int, "BadGC")
macdef BadIDChoice         = $extval(int, "BadIDChoice")
macdef BadName             = $extval(int, "BadName")
macdef BadLength           = $extval(int, "BadLength")
macdef BadImplementation   = $extval(int, "BadImplementation")

macdef FirstExtensionError = $extval(int, "FirstExtensionError")
macdef LastExtensionError  = $extval(int, "LastExtensionError")

(* ****** ****** *)

// Keyboard/Pointer Definitions

(* ****** ****** *)

macdef AutoRepeatModeOff     = $extval(int, "AutoRepeatModeOff")
macdef AutoRepeatModeOn      = $extval(int, "AutoRepeatModeOn")
macdef AutoRepeatModeDefault = $extval(int, "AutoRepeatModeDefault")

macdef LedModeOff = $extval(int, "LedModeOff")
macdef LedModeOn  = $extval(int, "LedModeOn")

(* Masks for ChangeKeyboardControl *)

macdef KBKeyClickPercent = $extval(ulint, "KBKeyClickPercent")
macdef KBBellPercent     = $extval(ulint, "KBBellPercent")
macdef KBBellPitch       = $extval(ulint, "KBBellPitch")
macdef KBBellDuration    = $extval(ulint, "KBBellDuration")
macdef KBLed             = $extval(ulint, "KBLed")
macdef KBLedMode         = $extval(ulint, "KBLedMode")
macdef KBKey             = $extval(ulint, "KBKey")
macdef KBAutoRepeatMode  = $extval(ulint, "KBAutoRepeatMode")

macdef MappingSuccess    = $extval(int, "MappingSuccess")
macdef MappingBusy       = $extval(int, "MappingBusy")
macdef MappingFailed     = $extval(int, "MappingFailed")

macdef MappingModifier   = $extval(int, "MappingModifier")
macdef MappingKeyboard   = $extval(int, "MappingKeyboard")
macdef MappingPointer    = $extval(int, "MappingPointer")

(* ****** ****** *)

// Screen Saver Definitions

(* ****** ****** *)

macdef DontPreferBlanking    = $extval(int, "DontPreferBlanking")
macdef PreferBlanking        = $extval(int, "PreferBlanking")
macdef DefaultBlanking       = $extval(int, "DefaultBlanking")

macdef DisableScreenSaver    = $extval(int, "DisableScreenSaver")
macdef DisableScreenInterval = $extval(int, "DisableScreenInterval")

macdef DontAllowExposures    = $extval(int, "DontAllowExposures")
macdef AllowExposures        = $extval(int, "AllowExposures")
macdef DefaultExposures      = $extval(int, "DefaultExposures")

(* For ForceScreenSaver *)

macdef ScreenSaverReset  = $extval(int, "ScreenSaverReset")
macdef ScreenSaverActive = $extval(int, "ScreenSaverActive")

(* ****** ****** *)

// Hosts and Connections

(* ****** ****** *)

(* For ChangeHosts *)

macdef HostInsert = $extval(int, "HostInsert")
macdef HostDelete = $extval(int, "HostDelete")

(* For ChangeAccessControl *)

macdef EnableAccess  = $extval(int, "EnableAccess")
macdef DisableAccess = $extval(int, "DisableAccess")

(* Display Classes *)

macdef StaticGray  = $extval(int, "StaticGray")
macdef GrayScale   = $extval(int, "GrayScale")
macdef StaticColor = $extval(int, "StaticColor")
macdef PseudoColor = $extval(int, "PseudoColor")
macdef TrueColor   = $extval(int, "TrueColor")
macdef DirectColor = $extval(int, "DirectColor")
macdef LSBFirst    = $extval(int, "LSBFirst")
macdef MSBFirst    = $extval(int, "MSBFirst")

(* Queueing *)

macdef QueuedAlready = $extval(int, "QueuedAlready")
macdef QueuedAlready = $extval(int, "QueuedAfterReading")
macdef QueuedAfterFlush = $extval(int, "QueuedAfterFlush")

(* ****** ****** *)

// #endif

(* End of [X.sats] *)