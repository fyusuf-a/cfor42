autocmd filetype c setlocal nosmarttab noexpandtab tabstop=4 softtabstop=0 shiftwidth=4 tw=80

let g:c_syntax_for_h=1

call neomake#configure#automake('nrwi', 500)
let g:neomake_gcc_args=[
	\ '-Wall',
	\ '-Wextra',
	\ '-I.',
	\ '-Ilibft'
	\]

let g:neomake_c_norminette_maker = {
	\ 'errorformat': '%PNorme: %f,%IError: %m,%IError (line %l): %m,%IError (line %l\, col %c): %m'
	\ }
let g:neomake_c_enabled_makers = ['gcc', 'norminette']
