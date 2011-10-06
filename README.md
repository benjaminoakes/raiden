Raiden
======

![Raiden Esper from Final Fantasy VI](https://github.com/benjaminoakes/raiden/raw/master/images/raiden-ff6.gif)

Raiden is a simple **ATN** (Augmented Transition Network) parser for natural languages with basic part of speech tagging and word-sense disambiguation.  Currently, the only supported language is English, but other languages can be added.

If interested, please become a watcher.

History
-------

This is based on a project I made for a Computational Linguistics course at the University of Iowa taught by now-retired [Professor Oden][oden] in 2007.  The original version of the code was called [Odin][] because of that (and it's just a cool name :) ).  Odin has decent code, but is more complicated than necessary.

Raiden is my re-do, but is much less functional (although still useful).  The name comes from Final Fantasy VI, where Raiden is an upgrade of the esper Odin.

  [oden]: http://cs.uiowa.edu/~oden
  [odin]: https://github.com/benjaminoakes/raiden

Resources
---------

The design of the `AugmentedTransitionNetwork` class was inspired by Paul Graham's implementation in Lisp.  For details on his implementation, please see the full text of his book [_On Lisp_][onlisp] (pages 309 - 320).

Also, there's a diagram of the ATN being used in `images/atn_diagram.pdf`.

  [onlisp]: http://www.paulgraham.com/onlisptext.html

License
-------

MIT.  Please see the `LICENSE.md` file.
