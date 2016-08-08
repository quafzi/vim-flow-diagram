function! vim_flow_diag#Generate_flow_diagram(pluginPath)
  let buf = getline(1, '$')
  "for substitute here needs 4 backslashs, but remember it's inside of double
  "quota string, so actually 8 backslashs literally
  call map(buf, 'substitute' . "(v:val, '\\', '\\\\\\\\', 'g')")
  call map(buf, 'substitute' . "(v:val, '`', '\\\\`', 'g')")

  let tmpl = a:pluginPath . '/tmpl.html'
  let tmpDir = "/tmp/vim-js-flow/"
  call system("mkdir " . tmpDir)
  "TODO check file already exists?
  call system("cp " . a:pluginPath . '/underscore-min.js' . " " . tmpDir)
  call system("cp " . a:pluginPath . '/raphael-min.js' . " " . tmpDir)
  call system("cp " . a:pluginPath . '/flowchart.min.js' . " " . tmpDir)

  let out = tmpDir . "out.html"
  call system("cp " . tmpl . " " . out)

  let originTab = tabpagenr()
  execute "tabe " . out

  call append(10, buf)
  silent :w!
  :bd
  execute "tabn " . originTab

endfunction
