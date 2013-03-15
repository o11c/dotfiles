#python
#import sys
#sys.path.insert(0, '/usr/share/gcc-4.6/python')
#from libstdcxx.v6.printers import register_libstdcxx_printers
#register_libstdcxx_printers (None)
#end

echo Parsing .gdbinit\n

set print object on
set print array on
set print pretty on
set print static-members off
set disassembly-flavor intel

define s
step
info args
info locals
print *this
end

define n
next
info args
info locals
print *this
end

define f
finish
info args
info locals
print *this
end
