%%

  /* how many things */
(piece|part)s? { stash(); return PIECES; }
points? { stash(); return POINTS; }


