" Vim plugin file for rendering
" flowcharts.js(https://github.com/adrai/flowchart.js)
"
" Maintainer: Thomas Birke <tbirke@netextreme.de>
" Last change: Aug 08 2016
" Version:     0.1.0

if exists( "g:generate_flow_diagram" )
  finish
endif
let g:generate_flow_diagram=1

let flow_plugin_script_path = resolve(expand('<sfile>:p:h'))
"default nmap is <leader>t
if ( !hasmapto( '<Plug>GenerateFlowDiagram', 'n' ) )
  nmap <unique> <leader>tf <Plug>GenerateFlowDiagram
endif
autocmd FileType flow nmap <silent> <buffer> <Plug>GenerateFlowDiagram
      \ :call vim_flow_diag#Generate_flow_diagram(flow_plugin_script_path)<CR>
