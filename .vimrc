set smartindent
set tabstop=4
set shiftwidth=4
set number
syntax on

"set all .md files as markdown, not Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

autocmd Filetype markdown call SetMarkdownOptions()

function SetMarkdownOptions()
	set autowriteall
	set spell spelllang=en
	set background=light
	set nonu
	set laststatus=0
	colorscheme default
	hi FoldColumn guibg=white
	set foldcolumn=12
	set linespace=8
	set guifont=Source\ Code\ Pro\ Light:h20
	set tw=80
	hi Normal guibg=gray95
	hi NonText guifg=gray95
	hi FoldColumn guibg=gray95
	hi CursorLine guibg=gray90
	hi Title gui=bold guifg=gray25
	hi MarkdownHeadingDelimiter gui=bold guifg=gray25
	hi htmlSpecialChar guifg=black
	hi markdownBold gui=bold guifg=gray25
	hi markdownItalic guifg=gray25 gui=underline
	hi markdownUrl guifg=#2fb3a6
	hi markdownAutomaticLink guifg=#2fb3a6
	hi markdownLinkText guifg=#317849
	hi markdownUrlTitle guifg=#317849
	hi markdownBlockquote guifg=#317849 gui=bold
	hi markdownId guifg=#2fb3a6
	hi markdownIdDeclaration guifg=#317849 gui=bold
	hi markdownListMarker guifg=#317849
	highlight Cursor guibg=#15abdd
endfunction
