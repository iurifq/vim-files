command! -range=% GistPrivate Gist -p
command! -range=% GistPublic Gist -P
command! -nargs=? GistList Gist -l <f-args>
command! GistDelete Gist -d
command! GistFork Gist -f
command! GistStar Gist +1
command! GistUnstar Gist -1

let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1
