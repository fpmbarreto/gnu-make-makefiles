MODULE_NAME = mod4

TARGET_DIR = ../../libs
TARGET_NAME = lib$(MODULE_NAME).a
TARGET = $(TARGET_DIR)/$(TARGET_NAME)

TEST_TARGET = test_$(MODULE_NAME)

OBJ_DIR = ../../objs
OBJ = $(OBJ_DIR)/$(MODULE_NAME).o

CFLAGS = -fPIC -Wall -Werror
LDFLAGS =

$(TARGET): $(OBJ)
	ar rcs $@ $^

$(OBJ): $(MODULE_NAME).c
	gcc $(CFLAGS) $< -c -o $@

build_test:
	@gcc $(TEST_TARGET).c -L$(TARGET_DIR) -l$(MODULE_NAME) -o $(TEST_TARGET)

test: build_test
	@chmod +x $(TEST_TARGET)
	@./$(TEST_TARGET)

clean:
	rm $(TARGET) $(OBJ) $(TEST_TARGET)