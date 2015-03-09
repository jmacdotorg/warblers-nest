# The Warbler's Nest

This repository contains the source and skein files of _The Warbler's Nest_, an interactive fiction by Jason McIntosh. The author shares them in order to provide those interested in Inform with a complete, ready-to-compile example of non-trivial scope.

If you just want to _play_ the game, you don't want to be here. [Visit the game's homepage instead.](http://jmac.org/warbler)

## About the game

[_The Warbler's Nest_](http://jmac.org/warbler) was originally written as an entry to the 2010 [interactive fiction competition](http://ifcomp.org). Since then it won 2010's [XYZZY Award](http://xyzzyawards.org) for Best Story, and [has been commercially adapted to iOS](http://orangepeelgames.com/the-warblers-nest.html) by way of [Andrew Plotkin's IosFizmo](https://github.com/erkyrath/iosfizmo). 

The game is quite short, taking perhaps about half an hour for an experienced player to explore thoroughly. Obviously, the author recommends that you [play the game](http://jmac.org/warbler) at least once before reading the source code.

## About the code

This code is not beautiful or well organized. The author learned Inform 7 while writing this game, and shipped the game's first version before reading [a book about Inform 7 best practices](http://inform7.textories.com) with its [corresponding example code](http://inform7.textories.com/sand-dancer/) (which happens to be an excellent game in its own right).

That said, the code in this repository works, and demonstrates various (though by no means all) key features of the Inform language and development system. This includes a complete skein file that acts as an effective regression-test suite for the game, leading its automated player down every significant story-path. 

## What's included

This source release includes:

* This README file, and a corresponding LICENSE file.

* A `Warbler.inform` bundle, ready for opening with the Inform IDE. It contains the story source and the skein, more or less as it stood when I finished creating the game in 2010.

* The game's cover art.

## Making it go

First, download and install the latest release of [Inform](http://inform7.com) in a matter befitting your computer. Then open `warbler.inform` with Inform. Poof, you should see the story's source code in the Inform IDE. Hitting the IDE's __Go!__ button should, indeed, compile the game and make it go.

**Unfortunately, it doesn't,** at least not with the actual latest release of Inform. The code in this repository was last successfully compiled using [Inform 7 release 6G60](http://inform7.com/download/release/6G60/). Subsequent releases to I7 introduced changes that cannot cope with the _Warbler's Nest_ source found here.

Therefore, if you would like to play with a working version of this game's source immediaitely, you should [download an earlier release of I7](http://inform7.com/download/release/6G60/) first. 

If you'd like to have a go at updating the source to work with a post-6G60 release, please do! I would quite welcome pull requests.

## License 

This work is copyright (c) 2010-2013 by Jason McIntosh.

For more details, please see the file `LICENSE.md`, found in the same directory as the file you are now reading.
