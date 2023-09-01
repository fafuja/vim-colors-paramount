" based on two-firewatch's airline theme

let g:airline#themes#paramount#palette = {}

function! airline#themes#paramount#refresh()
  let g:airline#themes#paramount#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = airline#themes#get_highlight('airlineN1')
  let s:N2 = airline#themes#get_highlight('airlineN2')
  let s:N3 = airline#themes#get_highlight('airlineN3')
  let g:airline#themes#paramount#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#paramount#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = airline#themes#get_highlight('airlineInsert1')
  let s:I2 = airline#themes#get_highlight('airlineInsert2')
  let s:I3 = s:N3
  let g:airline#themes#paramount#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#paramount#palette.insert_modified = g:airline#themes#paramount#palette.normal_modified

  let s:R1 = airline#themes#get_highlight('airlineReplace1')
  let s:R2 = airline#themes#get_highlight('airlineReplace2')
  let s:R3 = s:N3
  let g:airline#themes#paramount#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#paramount#palette.replace_modified = g:airline#themes#paramount#palette.normal_modified

  let s:V1 = airline#themes#get_highlight('airlineVisual1')
  let s:V2 = airline#themes#get_highlight('airlineVisual2')
  let s:V3 = s:N3
  let g:airline#themes#paramount#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#paramount#palette.visual_modified = g:airline#themes#paramount#palette.normal_modified

  let s:IA = airline#themes#get_highlight2(['NonText', 'fg'], ['StatusLineNC', 'bg'])
  let g:airline#themes#paramount#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#paramount#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }
endfunction

call airline#themes#paramount#refresh()
