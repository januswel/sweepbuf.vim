*sweepbuf.txt*	Plugin to sweep unused buffers
                                                Last change: 2014 Sep 18.

SYNOPSIS					*sweepbuf-synopsis*
>
	" sweep unused buffers
	:SweepBuffers

	" to show status after sweeping, define a map like below
	nmap <silent><Leader>sb :SweepBuffers<CR>:buffers<CR>

DESCRIPTION					*sweepbuf-description*

Plugin to delete buffers that are listed but unloaded from the buffer list.

PROVIDES					*sweepbuf-provides*

Commands:
:SweepBuffers
	Sweeps listed and unloaded buffers.

SETTINGS					*sweepbuf-settings*

This plugin doesn't have any settings.

DISABLES					*sweepbuf-disables*

Variables:
g:loaded_sweepbuf
	When exists, does nothing. Use to disable this plugin.


==============================================================================

Author
	janus_wel <janus.wel.3@gmail.com>
Copyright
	(c) 2014 by janus_wel
License
	This material may be distributed only subject to the terms and
	conditions set forth in the Open Publication License, v1.0 or later
	(the latest version is presently available at
	http://www.opencontent.org/openpub/).

vim:tw=78:ts=8:noet:ft=help:norl:
