" vim plugin file
" Filename:     sweepbuf.vim
" Maintainer:   janus_wel <janus.wel.3@gmail.com>
" License:      MIT License {{{1
"   See under URL.  Note that redistribution is permitted with LICENSE.
"   https://github.com/januswel/sweepbuf.vim/blob/master/LICENSE

" preparations {{{1
" check if this plugin is already loaded or not
if exists('loaded_sweepbuf')
    finish
endif
let loaded_sweepbuf = 1

" reset the value of 'cpoptions' for portability
let s:save_cpoptions = &cpoptions
set cpoptions&vim

" main {{{1
" commands {{{2
if exists(':SweepBuffers') != 2
    command SweepBuffers call <SID>SweepBuffers()
endif

" functions {{{2
function! s:SweepBuffers()
    let bufs = range(1, bufnr('$'))
    let targets = filter(bufs, 'buflisted(v:val) && !bufloaded(v:val)')
    if !empty(targets)
        execute 'silent bdelete' join(targets)
    endif
endfunction

" post-processings {{{1
" restore the value of 'cpoptions'
let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions

" }}}1
" vim: ts=4 sw=4 sts=0 et fdm=marker fdc=3
