Raiden
======

![Raiden Esper from Final Fantasy VI](https://github.com/benjaminoakes/raiden/raw/master/images/raiden-ff6.gif)

Raiden is a simple **ATN** (Augmented Transition Network) parser for natural languages with basic part of speech tagging and word-sense disambiguation.  Currently, the only supported language is English, but other languages can be added.

If interested, please become a watcher.

Usage
-----

There's no frontend, just the underlying ATN backend.  Example:

    push(:noun_phrase, position, registers, :into => :object_of_preposition, :next => :prepositional_phrase__noun_phrase)

Contributing
------------

Running `rake` in the root of this directory will run the unit tests.  I've left a sample parse of the nonsensical sentence 'the monster in the man grows avocados in the street' uncommented so that you can see some output.  You should receive this at the command prompt:

    :sentence
        :noun_phrase
            :determiner
            "the"
            :noun
            "monster"
            :prepositional_phrase
                :preposition
                "in"
                :noun_phrase
                    :determiner
                    "the"
                    :noun
                    "man"
        :verb
        "grows"
        :noun_phrase
            :noun
            "avocados"
            :prepositional_phrase
                :preposition
                "in"
                :noun_phrase
                    :determiner
                    "the"
                    :noun
                    "street"

The vocabulary of this ATN is quite limited -- see `string.rb`.  I have more in-depth categorization routines in [Odin][].  I haven't added them here yet -- it would have only taken longer.  Also, the grammar the ATN represents isn't too entirely complicated.  I spent most of my time paring the former code down so that it could be manageable.  At the moment, only noun phrases, prepositional phrases, verb phrases, and (of course) sentences are defined.  The important part is that it handles non-determinism gracefully.

Also of note, the ATN computes the deep structure of passive sentences.  For example, it can figure this out:

    %w{the old cookie was eaten by the monster} -> "the monster ate the old cookie"

History
-------

This is based on a project I made for a Computational Linguistics course at the University of Iowa taught by now-retired [Professor Oden][oden] in 2007.  The original version of the code was called [Odin][] because of that (and it's just a cool name :) ).  Odin has decent code, but is more complicated than necessary.

Raiden is my re-do, but is much less functional (although still useful).  The name comes from Final Fantasy VI, where Raiden is an upgrade of the esper Odin.

  [oden]: http://cs.uiowa.edu/~oden
  [odin]: https://github.com/benjaminoakes/odin

Resources
---------

The design of the `AugmentedTransitionNetwork` class was inspired by Paul Graham's implementation in Lisp.  For details on his implementation, please see the full text of his book [_On Lisp_][onlisp] (pages 309 - 320).

Also, there's a diagram of the ATN being used in `images/atn_diagram.pdf`.

  [onlisp]: http://www.paulgraham.com/onlisptext.html

License
-------

MIT.  Please see the `LICENSE.md` file.
