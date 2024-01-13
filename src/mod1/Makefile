MODULE_NAME = mod1

TARGET_DIR = ../../bins
TARGET = $(TARGET_DIR)/$(MODULE_NAME)

OBJ_DIR = ../../objs
OBJ = $(OBJ_DIR)/$(MODULE_NAME).o

CFLAGS = -Wall -Werror
LDFLAGS = -lm

$(TARGET): $(OBJ)
	gcc $(<) -o $(@) $(LDFLAGS)
	chmod +x $(@)

$(OBJ): $(MODULE_NAME).c
	gcc $(CFLAGS) $(<) -c -o $(@)

run: $(TARGET)
	@./$(<)

clean:
	rm $(TARGET) $(OBJ)