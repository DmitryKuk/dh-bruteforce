# Makefile
# Author: Dmitry Kukovinets (d1021976@gmail.com)

# Исходники C
SRCS_C=main.c mini-gmp.c


TARGET=dh-bruteforce

#PREFIX=/urs/local/bin/


# Компиляторы
GCC=gcc

# Объектные файлы
OBJS=$(SRCS_C:.c=.o)

# Опции компиляции
COMPILE_OPTIONS=-Wall -std=c11

# Опции сборки
BUILD_OPTIONS=-lpthread


# Цели
.PHONY: all clear #install uninstall

all: $(TARGET)

clear:
	rm -f "$(TARGET)" *.o

#install:
#	install $(TARGET) $(PREFIX)

#uninstall:
#	rm -f $(PREFIX)/$(TARGET)

# Конечная цель
$(TARGET): $(OBJS)
	$(GCC) $(BUILD_OPTIONS) -o $@ $^

# Неявные преобразования
%.o: %.c
	$(GCC) $(COMPILE_OPTIONS) -o $@ -c $<
