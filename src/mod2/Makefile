MODULE_NAME = mod2
TEST_MODULE_NAME = test-$(MODULE_NAME)

TARGET_DIR = ../../libs
TARGET_NAME = lib$(MODULE_NAME)
TARGET = $(TARGET_DIR)/$(TARGET_NAME).so

OBJ_DIR = ../../objs
OBJ = $(OBJ_DIR)/$(MODULE_NAME).o

INSTALL_HEADERS_DIR = ../../share-headers/$(MODULE_NAME)
TEST_BIN_DIR = ../../test-build

CFLAGS = -fPIC -Wall -Werror
LDFLAGS = 

$(TARGET): $(OBJ)
	gcc -shared $(<) -o $(@) $(LDFLAGS)

$(OBJ): $(MODULE_NAME).c
	gcc $(CFLAGS) $(<) -c -o $(@)

build_test_dir:
	@mkdir -p $(TEST_BIN_DIR)

test: build_test_dir
	gcc $(TEST_MODULE_NAME).c -o $(TEST_BIN_DIR)/$(TEST_MODULE_NAME) -L$(TARGET_DIR) -l$(MODULE_NAME)

install:
	@mkdir -p $(INSTALL_HEADERS_DIR)
	cp *.h  $(INSTALL_HEADERS_DIR)

uninstall:
	rm -rf  $(INSTALL_HEADERS_DIR)

clean:
	rm -rf $(TARGET) $(OBJ) $(TEST_BIN_DIR)

