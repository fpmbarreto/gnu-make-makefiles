SRCS := $(wildcard *.c)
OBJS := $(SRCS:%.c=%.o)
BINS := $(SRCS:%.c=%)

all: $(BINS) $(OBJS)

% : %.o
	@echo "Generating binaries"
	gcc -c $< -o $@

%.o : %.c
	@echo "Generating objects"
	gcc $< -o $@

clean:
	rm $(BINS) $(OBJS)
