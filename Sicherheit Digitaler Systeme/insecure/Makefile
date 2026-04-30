CFLAGS += -ggdb3 -W -Wall -Wextra
#CFLAGS += -fPIE -fstack-protector-all
#CFLAGS += -fsanitize=address -fsanitize=leak -fsanitize=undefined
PROGS  = secure_namedemo namedemo underrun listfile password_overflow
PROGS += password_check return zasdemo zfortify asheap asdemo antispa
PROGS += buf_overflow pin_overflow sort stack4 stack-info unsort

all: $(PROGS) 

secure_namedemo: -lreadline

namedemo: -lreadline

return:

underrun:

listfile:

zfortify: CFLAGS += -D_FORTIFY_SOURCE=1
zfortify: fortify


zasdemo: CFLAGS+=-fsanitize=address
zasdemo: asdemo

password_overflow:

password_check: -lreadline

clean:
	$(RM) $(PROGS) *~ *.o *.s fortify
