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
  fun init_display(display_name: stropt): Display_ptr1 = dpy where {
    val dpy = XOpenDisplay(display_name)
    val () = if iseqz(dpy) then (
      fprintln!(stderr_ref, "Failed to open the display.");
      exit(1)
    )
    val () = assertloc(isneqz(dpy))
  }

  val dpy = init_display(stropt_none())
  val () = XCloseDisplay(dpy)
}