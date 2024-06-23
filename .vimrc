" MINIMAL SETTINGS FÜR VIM

" Whitespace TAB mit >~~~ anzeigen
setlocal list
set listchars=tab:>~

" Sprache einstellen
set spelllang=de

" Zeilennummer und relative Zeilennummern
set nu
set rnu

" Kein Zeilenumbruch
set nowrap

" Zeilenumbruch und Backspace
set backspace=indent,eol,start
set whichwrap=<,>,h,l,[,]

" Speichern der aktuellen Suchen, Puffer usw.
set viminfo=%,'50,\"100,:100,n~\\.viminfo

" Standard-Tabstopgröße und andere Tab-Einstellungen
set tabstop=2
set shiftwidth=2
set expandtab

" Automatisches einrücken zur vorherigen Zeile
set autoindent

" Zeile des Cursor wird markiert
set cursorline

" Cursor-Zeile bei INSERT deaktivieren
autocmd InsertEnter,InsertLeave * set cul!
" Position wird in der Statuszeile angezeigt
set ruler

" Alle gefundenen Treffer werden markiert (entfernen mit :noh)
set hlsearch

" ------------------------------------------------------------------------------------------------------------
"                                                REMAPS
" ------------------------------------------------------------------------------------------------------------
let mapleader=" "

" ########## <Leader>p/P : Vorheriges kopiertes/gelöschtes einfügen                                 ########## 
map <leader>p "0p
map <leader>P "0P

" ########## Bewegungen: ß 1. Zeichen links, ´ ende der Zeile, ü 1. Zeile, ä letzte Zeile           ##########
map ß 0^
map ´ $
map ä <C-D>
map ö <C-U>

" ########## Strg+Space  : Am Ende der Zeile EINFÜGEN mit einem Space                               ##########
map <S-Space> A 

" Return für neue Zeile einfügen & insertmodus
noremap <CR> o

" ########## _           : ciq, viq, yiq, diq nutzbar machen (aus VSC)                              ##########
" Verlangsamen d, c, v, und y Befehl!!!
nnoremap ciq ci"
nnoremap viq vi"
nnoremap yiq yi"
nnoremap diq di"

" ------------------------------------------------------------------------------------------------------------
"                                            DEAKTIVIERTE MAPS
" ------------------------------------------------------------------------------------------------------------
" ########## Strg+C und Strg+V für Kopieren/Einfügen                                                ##########
" vnoremap <C-c> "+y
" map <C-v> "+p

" ########## FÜR UBUNTU VIM!                                                                        ##########
" let &t_SI = "\<esc>[5 q"
" let &t_SR = "\<esc>[3 q"
" let &t_EI = "\<esc>[2 q"

" ########## Cursorbewegung umschalten (von jk normale Zeilen zu jk anzeigezeilen);nur bei set wrap ##########
" nnoremap k gk
" nnoremap j gj
" nnoremap gk k
" nnoremap gj j

" ########## Cursortasten unbrauchbar machen (zum erlernen der hjkl-Navigation)                     ##########
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

" ########## Entfernentaste als Esc-Taste nutzen                                                    ##########
" nnoremap <Del> <Esc>
" vnoremap <Del> <Esc>gV
" onoremap <Del> <Esc>
" cnoremap <Del> <C-C><Esc>
" inoremap <Del> <Esc>`^
" tnoremap <Del> <C-\><C-n>

" --- NICHT FUNKTIONIERENDE MAPS ---

" vnoremap ö exe "'< normal O{\<esc>" | exe "'> normal o}\<esc>" | exe "'<,'> normal >>"

" --------------OOOO---------
" Windows like Strg+Z   für UNDO
" map <C-z> u
" Windows like Strg+Y   für REDO
map <C-y> <C-r>
" Alternative: zu       für UNDO
" map zu u
" Alternative: zU       für REDO
" map zU <C-r>
"        oder: zr       für REDO
" map zr <C-r>

" Symbole
" map üüf i<C-V>U1f449<Esc>
" map üüe i<C-V>U1f3f4<Esc>
" map üüd i<C-V>U1f1e9<Esc>
" map üüb i<C-V>U26a1<Esc>