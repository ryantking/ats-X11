(* ****** ****** *)
//
// Test00 for X11
//
(* ****** ****** *)

staload "libats/libc/SATS/unistd.sats"

staload "./../SATS/X.sats"
staload "./../SATS/Xlib.sats"

(* ****** ****** *)

implement main0() = () where {
  val dpy = XOpenDisplay(stropt_none())
  val () = if iseqz(dpy) then (
    fprintln!(stderr_ref, "Failed to open the display.");
    exit(1)
  )
  val () = assertloc(isneqz(dpy))
  val bpx = XBlackPixel(dpy, 0)
  val wpx = XWhitePixel(dpy, 0)
  val nconn = XConnectionNumber(dpy)
  val cmap = xid where {
    extern castfn __cast(cmap: Colormap):<> ulint
    val cmap = XDefaultColormap(dpy, 0)
    val xid = __cast(cmap)
  }
  val depth = XDefaultDepth(dpy, 0)

  val () = println!("Black Pixel = ", bpx)
  val () = println!("White Pixel = ", wpx)
  val () = println!("Number of Connections = ", nconn)
  val () = println!("Colormap = ", cmap)
  val () = println!("Depth = ", depth)

  val GC = XDefaultGC(dpy, 0)

  val win = xid where {
    extern castfn __cast(win: Window):<> ulint
    val win = XDefaultRootWindow(dpy)
    val xid = __cast(win)
  }
  val () = println!("window = ", win)

  val scr = XDefaultScreen(dpy)
  val ncells = XDisplayCells(dpy, 0)
  val nplanes = XDisplayPlanes(dpy, 0)
  val name = XDisplayString(dpy)
  val maxsz = XMaxRequestSize(dpy)

  val () = println!("Screen = ", scr)
  val () = println!("Number of Cells = ", ncells)
  val () = println!("Number of planes = ", nplanes)
  val () = println!("Name = ", name)
  val () = println!("Max Request Size = ", maxsz)

  val version = XProtocolVersion(dpy)
  val revision = XProtocolRevision(dpy)
  val vendor = XServerVendor(dpy)
  val release = XVendorRelease(dpy)

  val () = println!("X Protocol Version ", version, ", revision ", revision)
  val () = println!("Vendor: ", vendor)
  val () = println!("Release: ", release)

  val last = XLastKnownRequestProcessed(dpy)
  val next = XNextRequest(dpy)
  val nque = XQLength(dpy)

  val () = println!("Last Request = ", last)
  val () = println!("Next Request = ", next)
  val () = println!("Queue Length = ", nque)

  val rtwin = XRootWindow(dpy, 0)
  val scrn_cnt = XScreenCount(dpy)
  val scr_h = XDisplayHeight(dpy, 0)
  val scr_w = XDisplayWidth(dpy, 0)
  val scr_h_mm = XDisplayHeightMM(dpy, 0)
  val scr_w_mm = XDisplayWidthMM(dpy, 0)

  val () = println!("Root Window = ", xid) where {
    extern castfn __cast(win: Window):<> ulint
    val xid = __cast(rtwin)
  }
  val () = println!("Screen Count = ", scrn_cnt)
  val () = println!("Screen Dimensions = ", scr_w, "x", scr_h)
  val () = println!("Screen Dimensions MM = ", scr_w_mm, "x", scr_h_mm)

  val win = XCreateSimpleWindow(dpy, rtwin, 0, 0, 100U, 100U, 0U, 0UL, 0UL)
  val () = XMapWindow(dpy, win)
  val () = XRaiseWindow(dpy, win)
  val () = XFlush(dpy)
  val _ = sleep(15)

  val () = XCloseDisplay(dpy)
}