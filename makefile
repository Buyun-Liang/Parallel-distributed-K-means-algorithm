.SUFFIXES: .c .o .f .F

##CC			=  gcc
CC			=  mpicc 
CFLAGS			= -g -Wall
##LIBS			=  -L/project/scicom/scicom00/SOFT/lib/linux/ -lblas
LIBS			=  -lblas 

FILES =  main.o auxil1.o 

main.ex: $(FILES) 
	${CC} ${CFLAGS} -o main.ex -lm $(FILES) $(LIBS) 

.c.o:
	${CC} ${CFLAGS} $< -c -o $@ $(LIBS) 

clean:
	rm *.o *.ex ./OUT/*

