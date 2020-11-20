
## Homebrew Tirepatches for ARM

These are ugly, quick hacks that help you to pretend Homebrew supports ARM macs. You can use these repositories e.g. instead of the upstream ones by using `ktemkin/tirepatch/<recipe>` after tapping the repostiory.

It's likely that's what's produced will be broken in maddeningly subtle ways. You've been warned.


### A Note on Heads

Some recipes are HEAD-only, even where their upstream veresions. You'll need to build them with `--HEAD`. Brew is pretty good at telling you when you need to do this.


### ... something's not working.

Well, yeah. Unfortunately, you'll have to figure things out on your own; this is a completely unsupported bag of bad hacks. If you want, you can PR things, but I can't even guarantee I'll review the PRs. ^_^
