org 100h

include 'emu8086.inc'
 
org 100h

print "Enter the marks/percentile you have secured: "
call scan_num ; 

printn ''
printn ''
printn ''
printn "Your Final Grade is: "
printn ''


cmp cx,90
jge gradeO

cmp cx,80
jge gradeA+

cmp cx,70
jge gradeA

cmp cx,60
jge gradeB+

cmp cx,50
jge gradeB

cmp cx,40
jge gradeC+ 

cmp cx,34
jge gradeD 

cmp cx,33
jl gradeF

gradeO: 
printn ' O '
printn '' 
printn 'You have passed'

jmp stop

gradeA+: 
printn ' A+<PLUS> '
printn ''
printn 'You have passed'

jmp stop

gradeA: 
printn 'A'
printn '' 
printn 'You have passed'
 
jmp stop

gradeB+: 
printn 'B+ (PLUS)'
printn ''
printn 'You have passed'

jmp stop

gradeB: 
printn ' B '
printn ''
printn 'You have passed'

jmp stop

gradeC+: 
printn 'C+ <PLUS>'
printn ''  
printn 'You have passed'

jmp stop

gradeD: 
printn 'D'
printn ''
printn 'You have passed'

jmp stop

gradeF: 
printn 'F '
printn ''             
printn 'You have failed'

jmp stop 


stop:

ret 
define_scan_num

define_print_num
define_print_num_uns
end

ret