" Vim global plugin for clear whitespace
" Last Change: 2020年 06月 21日 星期日 16:52:29 CST
" Maintainer: coco-hkk

function! ClearWhitespace()

py3 << EOF

sys.path.append(r"./")

from cls import clearWhitespace

clearWhitespace()

EOF

endfunction

command! -nargs=0 ClearWhitespace :call ClearWhitespace()
