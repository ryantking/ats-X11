(* ****** ****** *)
//
// Test00 for X11
//
(* ****** ****** *)

// #include "./../SATS/X11.sats"
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
  val () = println!("Black Pixel = ", bpx)
  val () = println!("White Pixel = ", wpx)
  val () = XCloseDisplay(dpy)
}