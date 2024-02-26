MODULE_NAME = mod5

TARGET_DIR = ../../bins
TARGET = $(TARGET_DIR)/$(MODULE_NAME)

OBJ_DIR = ../../objs
OBJ = $(OBJ_DIR)/$(MODULE_NAME).o

INCLUDES = ../../share-headers
WARN_FLAGS = -Wall -Werror 
CFLAGS = $(WARN_FLAGS) -I$(INCLUDES)

LIBS_PATH = ../../libs
LDFLAGS = -L$(LIBS_PATH) -lmod2 -lmod4

$(TARGET): $(OBJ)
	@mkdir -p $(TARGET_DIR)
	gcc $(<) -o $(@) $(LDFLAGS)
	chmod +x $(@)

$(OBJ): $(MODULE_NAME).c
	gcc $(CFLAGS) -c $(<) -o $(@)

run: $(TARGET)
	@./$(<)

clean:
	rm $(TARGET) $(OBJ)