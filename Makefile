BUILD = make
CLEAN = make clean
BUILD_DIR = make build_dir
INSTALL = make install
#THIRDPRT_LIB_PATH = /usr/local/mylibs -- if you use some 3rd party lib

SRC_DIR := ./src/final-project

INSTALLATION_PATH = $(shell echo $$INSTALLATION_PATH)
ifeq ($(INSTALLATION_PATH),)
        INSTALLATION_PATH = $(shell echo $$PWD)
	export INSTALLATION_PATH
#       INSTALLATION_PATH = /usr/local/mycustombuild
endif

define makeallmodules
	for dir in $(SRC_DIR)/*; do make -C $$dir $(1); done # -C to change the path where to run the target $(1)
endef

all:
	@echo "### BUILDING ALL MODULES ###"
	$(call makeallmodules, all)
	# Using function instead of repeat these 3 lines
	# (cd $(EMPLOYEE_DIR); $(BUILD))
	# (cd $(DB_MGR_DIR); $(BUILD))
	# (cd $(UI_CTRL_DIR); $(BUILD)

build_dir:
	@echo "### BUILDING DIRECTORIES FOR OUTPUT BINARIES ###"
	$(call makeallmodules, build_dir)
	# Using function instead of repeat these 3 lines
	# (cd $(EMPLOYEE_DIR); $(BUILD_DIR))
	# (cd $(DB_MGR_DIR); $(BUILD_DIR))
	# (cd $(UI_CTRL_DIR); $(BUILD_DIR))

clean:
	@echo "### CLEAN GENERATED OUTPUT BINARIES ###"
	$(call makeallmodules, clean)
	# Using function instead of repeat these 3 lines
	#-(cd $(EMPLOYEE_DIR); $(CLEAN))
	#-(cd $(DB_MGR_DIR); $(CLEAN))
	#-(cd $(UI_CTRL_DIR); $(CLEAN))

install:
	@echo "### INSTALLING SHARED HEADERS BETWEEN BINARIES ###"
	$(call makeallmodules, install)
	# Using function instead of these 3 lines
	# (cd $(EMPLOYEE_DIR); $(INSTALL))
	# (cd $(DB_MGR_DIR); $(INSTALL))
	# (cd $(UI_CTRL_DIR); $(INSTALL))

.PHONY: all build_dir clean install
