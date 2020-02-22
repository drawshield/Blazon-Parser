%%

 
 /******************************
  * SMALL WORDS
  ******************************/

  /* Individual words, multiple uses */

of { stash(); return OF; }
(last|same) { stash(); return SAME; }
(like|as) { stash(); return AS; }
(on|upon) { stash(); return ON; }
(with)?in { stash(); return IN; }
(a|an|the)  { stash(); return THE; }
(field|court) { stash(); return FIELD; }
quarters? { stash(); return QUARTER; }
(between|within) { stash(); return WITHIN; }