(* ****** ****** *)
//
// API in ATS for X11
// Author: Ryan King <rtking@bu.edu>
//
// Xlib.sats: X11 Structure and Functions
//
(* ****** ****** *)

// #ifndef X11_XLIB
// #define X11_XLIB

%{#
#include "./../CATS/Xlib.cats"
%}

#define ATS_STALOADFLAG 0

#define ATS_PACKNAME "ATSCNTRB.X11"
#define ATS_EXTERN_PREFIX "atscntrb_X11_"

(* ****** ****** *)

staload "./X.sats"

(* ****** ****** *)

// Pointers

(* ****** ****** *)

(* Display Pointer *)

absvtype Display_ptr (l:addr) = ptr(l)
vtypedef Display_ptr0 = [l:agez] Display_ptr(l)
vtypedef Display_ptr1 = [l:addr | l > null] Display_ptr(l)

fun Display_ptr_is_null{l:addr} (dpy_p: !Display_ptr(l)): bool (l == null) =
  "atspre_ptr_is_null"
fun Display_ptr_isnot_null{l:addr} (dpy_p: !Display_ptr(l)): bool (l > null) =
  "atspre_ptr_isnot_null"


overload iseqz with Display_ptr_is_null
overload isneqz with Display_ptr_isnot_null

(* Screen Pointer *)

absvtype Screen_ptr (l:addr) = ptr(l)
vtypedef Screen_ptr0 = [l:agez] Screen_ptr(l)
vtypedef Screen_ptr1 = [l:addr | l > null] Screen_ptr(l)

(* Visual Pointer *)

absvtype Visual_ptr (l:addr) = ptr(l)
vtypedef Visual_ptr0 = [l:agez] Visual_ptr(l)
vtypedef Visual_ptr1 = [l:addr | l > null] Visual_ptr(l)

(* Graphics Content Pointer *)

absvtype GC_ptr (l:addr) = ptr(l)
vtypedef GC_ptr0 = [l:agez] GC_ptr(l)
vtypedef GC_ptr1 = [l:addr | l > null] GC_ptr(l)
abstype GCref = $extype"GC"

(* ****** ****** *)

// Display Macros

(* ****** ****** *)

fun ConnectionNumber{l:agz}(Display_ptr(l)): int = "mac#%"
fun RootWindow{l:agz}(Display_ptr(l), int): Window = "mac#%"
fun DefaultScreen{l:agz}(Display_ptr(l)): int = "mac#%"
fun DefaultRootWindow{l:agz}(Display_ptr(l)): Window = "mac#%"
fun DefaultVisual{l1:agz}(Display_ptr(l1), int): [l2:addr] Visual_ptr(l2) =
  "mac#%"
fun DefaultGC{l1:agz}(Display_ptr(l1), int): [l2:addr] GC_ptr(l2) = "mac#%"
fun BlackPixel{l:agz}(Display_ptr(l), int): lint = "mac#%"
fun WhitePixel{l:agz}(Display_ptr(l), int): lint = "mac#%"
fun QLength{l:agz}(Display_ptr(l)): int = "mac#%"
fun RootWindow{l:agz}(Display_ptr(l), int): Window = "mac#%"
fun DisplayWidth{l:agz}(Display_ptr(l), int): int = "mac#%"
fun DisplayHeight{l:agz}(Display_ptr(l), int): int = "mac#%"
fun DisplayWidthMM{l:agz}(Display_ptr(l), int): int = "mac#%"
fun DisplayHeightMM{l:agz}(Display_ptr(l), int): int = "mac#%"
fun DisplayPlanes{l:agz}(Display_ptr(l), int): int = "mac#%"
fun DisplayCells{l:agz}(Display_ptr(l), int): int = "mac#%"
fun ScreenCount{l:agz}(Display_ptr(l)): int = "mac#%"
fun ServerVendor{l:agz}(Display_ptr(l)): string = "mac#%"
fun ProtocolVersion{l:agz}(Display_ptr(l)): int = "mac#%"
fun ProtocolRevision{l:agz}(Display_ptr(l)): int = "mac#%"
fun VendorRelease{l:agz}(Display_ptr(l)): int = "mac#%"
fun DisplayString{l:agz}(Display_ptr(l)): string = "mac#%"
fun DefaultDepth{l:agz}(Display_ptr(l), int): int = "mac#%"
fun DefaultColormap{l:agz}(Display_ptr(l), int): Colormap = "mac#%"
fun BitmapUnit{l:agz}(Display_ptr(l)): int = "mac#%"
fun BitmapBitOrder{l:agz}(Display_ptr(l)): int = "mac#%"
fun BitmapPad{l:agz}(Display_ptr(l)): int = "mac#%"
fun ImageByteOrder{l:agz}(Display_ptr(l)): int = "mac#%"
fun NextRequest{l:agz}(Display_ptr(l)): ulint = "mac#%"
fun LastKnownRequestProcessed{l:agz}(Display_ptr(l)): ulint = "mac#%"

fun ScreenOfDisplay{l1:agz}(Display_ptr(l1), int): [l2:addr] Screen_ptr(l2) =
  "mac#%"
fun DefaultScreenOfDisplay{l1:agz}(Screen_ptr(l1)): [l2:addr] Screen_ptr(l2) =
  "mac#%"
fun DisplayOfScreen{l1:agz}(Screen_ptr(l1)): [l2:agz] Display_ptr(l2) = "mac#%"
fun RootWindowOfScreen{l:agz}(Screen_ptr(l)): Window = "mac#%"
fun BlackPixelOfScreen{l:agz}(Screen_ptr(l)): lint = "mac#%"
fun WhitePixelOfScreen{l:agz}(Screen_ptr(l)): lint = "mac#%"
fun DefaultColorMapOfScreen{l:agz}(Screen_ptr(l)): Colormap = "mac#%"
fun DefaultDepthOfScreen{l:agz}(Screen_ptr(l)): int = "mac#%"
fun DefaultGCOfScreen{l1:agz}(Screen_ptr(l1)): [l2:addr] GC_ptr(l2) = "mac#%"
fun DefaultVisualOfScreen{l1:agz}(Screen_ptr(l1)): [l2:addr] Visual_ptr(l2) =
  "mac#%"
fun WidthOfScreen{l:agz}(Screen_ptr(l)): int = "mac#%"
fun HeightOfScreen{l:agz}(Screen_ptr(l)): int = "mac#%"
fun WidthMMOfScreen{l:agz}(Screen_ptr(l)): int = "mac#%"
fun HeightMMOfScreen{l:agz}(Screen_ptr(l)): int = "mac#%"
fun PlanesOfScreen{l:agz}(Screen_ptr(l)): int = "mac#%"
fun CellsOfScreen{l:agz}(Screen_ptr(l)): int = "mac#%"
fun MinCmapsOfScreen{l:agz}(Screen_ptr(l)): Colormap = "mac#%"
fun MaxCmapsOfScreen{l:agz}(Screen_ptr(l)): int = "mac#%"
fun DoesSaveUnders{l:agz}(Screen_ptr(l)): bool = "mac#%"
fun DoesBackingStore{l:agz}(Screen_ptr(l)): bool = "mac#%"
fun EventMaskOfScreen{l:agz}(Screen_ptr(l)): lint = "mac#%"

fun XOpenDisplay(Stropt): Display_ptr0 = "mac#%"

fun XConnectionNumber{l:agz}(Display_ptr(l)): int = "mac#%"
fun XRootWindow{l:agz}(Display_ptr(l), int): Window = "mac#%"
fun XDefaultScreen{l:agz}(Display_ptr(l)): int = "mac#%"
fun XDefaultRootWindow{l:agz}(Display_ptr(l)): Window = "mac#%"
fun XDefaultVisual{l1:agz}(Display_ptr(l1), int): [l2:addr] Visual_ptr(l2) =
  "mac#%"
fun XDefaultGC{l1:agz}(Display_ptr(l1), int): [l2:addr] GC_ptr(l2) = "mac#%"
fun XBlackPixel{l:agz}(Display_ptr(l), int): ulint = "mac#%"
fun XWhitePixel{l:agz}(Display_ptr(l), int): ulint = "mac#%"
fun XQLength{l:agz}(Display_ptr(l)): int = "mac#%"
fun XRootWindow{l:agz}(Display_ptr(l), int): Window = "mac#%"
fun XDisplayPlanes{l:agz}(Display_ptr(l), int): int = "mac#%"
fun XDisplayCells{l:agz}(Display_ptr(l), int): int = "mac#%"
fun XScreenCount{l:agz}(Display_ptr(l)): int = "mac#%"
fun XServerVendor{l:agz}(Display_ptr(l)): string = "mac#%"
fun XProtocolVersion{l:agz}(Display_ptr(l)): int = "mac#%"
fun XProtocolRevision{l:agz}(Display_ptr(l)): int = "mac#%"
fun XVendorRelease{l:agz}(Display_ptr(l)): int = "mac#%"
fun XDisplayString{l:agz}(Display_ptr(l)): string = "mac#%"
fun XDefaultDepth{l:agz}(Display_ptr(l), int): int = "mac#%"
fun XDefaultColormap{l:agz}(Display_ptr(l), int): Colormap = "mac#%"
fun XNextRequest{l:agz}(Display_ptr(l)): ulint = "mac#%"
fun XLastKnownRequestProcessed{l:agz}(Display_ptr(l)): ulint = "mac#%"

(* ****** ****** *)

// Image Funcations/Macros

(* ****** ****** *)

typedef XPixmapFormatValues = $extype_struct"XPixmapFormatValues" of {
  depth = int,
  bits_per_pixel = int,
  scanline_pad = int
}

(* ****** ****** *)

macdef LSBFirst = $extval(int, "LSBFirst")
macdef MSBFirst = $extval(int, "MSBFirst")

(* ****** ****** *)

fun XBitmapUnit{l:agz}(Display_ptr(l)): int = "mac#%"
fun XBitmapBitOrder{l:agz}(Display_ptr(l)): int = "mac#%"
fun XBitmapPad{l:agz}(Display_ptr(l)): int = "mac#%"
fun XImageByteOrder{l:agz}(Display_ptr(l)): int = "mac#%"
fun XDisplayWidth{l:agz}(Display_ptr(l), int): int = "mac#%"
fun XDisplayHeight{l:agz}(Display_ptr(l), int): int = "mac#%"
fun XDisplayWidthMM{l:agz}(Display_ptr(l), int): int = "mac#%"
fun XDisplayHeightMM{l:agz}(Display_ptr(l), int): int = "mac#%"

(* ****** ****** *)

// Screen Information Functions

(* ****** ****** *)

fun XBlackPixelOfScreen{l:agz}(!Screen_ptr(l)): ulint = "mac#%"
fun XWhitePixelOfScreen{l:agz}(!Screen_ptr(l)): ulint = "mac#%"
fun XCellsOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XDefaultDepthOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XDefaultColorMapOfScreen{l:agz}(!Screen_ptr(l)): Colormap = "mac#%"
fun XDefaultGCOfScreen{l:agz}(!Screen_ptr(l)): GCref = "mac#%"

(* ****** ****** *)

fun XDoesBackingStore{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XDoesSaveUnders{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XScreenNumberOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XEventMaskOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XWidthOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XHeightOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XWidthMMOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XHeightMMOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XMaxCmapsOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XMinCmapsOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XPlanesOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"
fun XRootWindowOfScreen{l:agz}(!Screen_ptr(l)): int = "mac#%"

(* ****** ****** *)

// Closing the Display

(* ****** ****** *)

fun XCloseDisplay(Display_ptr1): void = "mac#%"

abst@ype close_mode = int
macdef DestroyAll = $extval(close_mode, "DestroyAll")
macdef RetainPermanent = $extval(close_mode, "RetainPermanent")
macdef RetainTemporary = $extval(close_mode, "RetainTemporary")

fun XSetCloseDownMode{l:agz}(Display_ptr(l), mode: close_mode): void

(* ****** ****** *)

// Windows

(* ****** ****** *)

typedef XSetWindowAttributes = $extype_struct"XSetWindowAttributes" of {
  background_pixmap = Pixmap,
  background_pixel = ulint,
  border_pixmap = Pixmap,
  border_pixel = ulint,
  bit_gravity = int,
  win_gravity = int,
  backing_store = int,
  backing_planes = ulint,
  backing_pixel = ulint,
  save_under = bool,
  event_mask = lint,
  do_not_propagate_mask = lint,
  override_redirect = bool,
  colormap = Colormap,
  cursor = Cursor
}

(* ****** ****** *)

fun XVisualIDFromVisual{l:agz}(!Visual_ptr(l)): VisualID = "mac#%"

(* ****** ****** *)

fun XCreateWindow{ld,lv:agz}(
  !Display_ptr(ld),
  Window,
  int, int,
  uint, uint,
  uint,
  uint,
  uint,
  !Visual_ptr(lv),
  ulint,
  &XSetWindowAttributes
): Window = "mac#%"

fun XCreateSimpleWindow{ld:agz}(
  !Display_ptr(ld),
  Window,
  int, int,
  uint, uint,
  uint,
  uint,
  ulint
): Window = "mac#%"

(* ****** ****** *)

fun XDestroyWindow{l:agz}(!Display_ptr(l), Window): void = "mac#%"
fun XDestroySubwindows{l:agz}(!Display_ptr(l), Window): void = "mac#%"

(* ****** ****** *)

fun XMapWindow{l:agz}(!Display_ptr(l), Window): void = "mac#%"
fun XMapRaised{l:agz}(!Display_ptr(l), Window): void = "mac#%"
fun XMapSubwindow{l:agz}(!Display_ptr(l), Window): void = "mac#%"

fun XUnmapWindow{l:agz}(!Display_ptr(l), Window): void = "mac#%"
fun XUnmapSubwindow{l:agz}(!Display_ptr(l), Window): void = "mac#%"

(* ****** ****** *)

typedef XWindowChanges = $extype_struct "XWindowChanges" of {
  x = int, y = int,
  width = int, height = int,
  border_width = int,
  sibling = Window,
  stack_mode = int
}

(* ****** ****** *)

fun XConfigureWindow{l:agz}(Display_ptr(l), Window, uint, values: &XWindowChanges): void = "mac#%"
fun XMoveWindow{l:agz}(!Display_ptr(l), Window, int, int) : void = "mac#%"
fun XResizeWindow{l:agz}(!Display_ptr(l), Window, uint, uint) : void = "mac#%"
fun XMoveResizeWindow{l:agz}(!Display_ptr(l), Window, int, int, uint, uint) : void = "mac#%"

fun XSetWindowBorderWidth{l:agz}(
  !Display_ptr l,
  Window,
  uint
): void = "mac#%"

(* ****** ****** *)

fun XRaiseWindow{l:agz}(!Display_ptr(l), Window): void = "mac#%"
fun XLowerWindow{l:agz}(!Display_ptr(l), Window): void = "mac#%"
fun XCirculateSubwindows{l:agz}(!Display_ptr(l), Window, int): void = "mac#%"
fun XCirculateSubwindowsUp{l:agz}(!Display_ptr(l), Window): void = "mac#%"
fun XCirculateSubwindowsDown{l:agz}(!Display_ptr(l), Window): void = "mac#%"
fun XRestackWindows{l:agz}{n:nat}(!Display_ptr(l), &(@[Window][n]), int(n)): void = "mac#%"

(* ****** ****** *)

fun XChangeWindowAttributes{l:agz} (
  !Display_ptr(l),
  Window,
  ulint,
  &XSetWindowAttributes
) : void = "mac#%"

fun XSetWindowBackground{l:agz}(!Display_ptr(l), Window, ulint): void = "mac#%"
fun XSetWindowBackgroundPixmap{l:agz}(!Display_ptr(l), Window, bg_pixmap: Pixmap): void = "mac#%"
fun XSetWindowBorder{l:agz}(!Display_ptr(l), Window, ulint): void = "mac#%"
fun XSetWindowBorderPixmap{l:agz}(!Display_ptr(l), Window, Pixmap): void = "mac#%"
fun XSetWindowColormap{l:agz}(!Display_ptr(l), Window, Colormap): void = "mac#%"
fun XDefineCursor{l:agz}(!Display_ptr(l), Window, Cursor): void = "mac#%"
fun XUndefineCursor{l:agz}(!Display_ptr(l), Window): void = "mac#%"

(* ****** ****** *)

// #endif

(* End of [Xlib.sats] *)