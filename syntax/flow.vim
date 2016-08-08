if exists("b:flow_syntax")
  finish
endif
let b:flow_syntax = 1

syntax match flowType /start:/
syntax match flowType /end:/
syntax match flowType /operation:/
syntax match flowType /subroutine:/
syntax match flowType /condition:/
syntax match flowType /inputoutput:/
syntax match flowOperator /=>/
syntax match flowOperator /->/
syntax region flowString matchgroup=Special start=/\v:\s/ end=/\v$/
highlight link flowType Type
highlight link flowOperator Operator
highlight link flowString String
