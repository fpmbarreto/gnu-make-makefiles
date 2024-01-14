MODULE_NAME = mod2
TEST_MODULE = test-mod2

TEST_BIN_DIR = ../../test-build
TARGET_DIR = ../../libs
TARGET_NAME = libs$(MODULE_NAME)
TARGET = $(TARGET_DIR)/$(TARGET_NAME).so

OBJ_DIR = ../../objs
OBJ = $(OBJ_DIR)/$(MODULE_NAME).o

CFLAGS = -fPIC -Wall -Werror
LDFLAGS = 

$(TARGET): $(OBJ)
	gcc -shared $(<) -o $(@) $(LDFLAGS)

$(OBJ): $(MODULE_NAME).c
	gcc $(CFLAGS) $(<) -c -o $(@)

test:
	@mkdir $(TEST_BIN_DIR)
	gcc $(TEST_MODULE).c -o $(TEST_BIN_DIR)/$(TEST_MODULE) -L$(TARGET_DIR) -l$(MODULE_NAME)

clean:
	rm $(TARGET) $(OBJ)
	rm -rf $(TEST_BIN_DIR)