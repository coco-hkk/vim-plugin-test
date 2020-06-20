function! Welcome(name)

echo "into vim script ..."
echo "Welcome " a:name ", I'm vimscript."

lua << EOF
require("luaprint")

name = vim.eval("a:name")

luaprint.say(name)
EOF

echo "leaving vim script"
endfunction


command! -nargs=1 Welcome :call Welcome(<f-args>)
