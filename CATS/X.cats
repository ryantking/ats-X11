/* ****** ****** */
//
// API in ATS for X11
// Author: Ryan King <rtking@bu.edu>
//
/* ****** ****** */

#ifndef ATSCNTRB_X_CATS
#define ATSCNTRB_X_CATS

/* ***** ****** */

#include <X11/X.h>

/* ***** ****** */

typedef atstype_lint EventMask;
typedef atstype_int EventType;

/* ***** ****** */

ATSinline()
atstype_bool atscntrb_X11_eq_EventType_EventType(EventType et1, EventType et2) {
  return (et1 == et2) ? atsbool_true : atsbool_false;
}

/* ***** ****** */

ATSinline()
EventMask atscntrb_X11_lor_EventMask_EventMask(EventMask em1, EventMask em2) {
  return em1 | em2;
}

/* ***** ****** */

#endif

/* End of [X11.cats] */
