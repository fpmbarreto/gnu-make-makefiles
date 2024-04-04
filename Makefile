BUILD = make
CLEAN = make clean
BUILD_DIR = make build_dir
INSTALL = make install
#THIRDPRT_LIB_PATH = /usr/local/mylibs -- if you use some 3rd party lib

EMPLOYEE_DIR = src/final-project/employee
DB_MGR_DIR = src/final-project/db_mgr
UI_CTRL_DIR = src/final-project/ui_controller

INSTALLATION_PATH = $(shell echo $$INSTALLATION_PATH)
ifeq ($(INSTALLATION_PATH),)
        INSTALLATION_PATH = $(shell echo $$PWD)
		export INSTALLATION_PATH
#       INSTALLATION_PATH = /usr/local/mycustombuild

endif

all:
	echo "### BUILDING ALL MODULES ###"
	(cd $(EMPLOYEE_DIR); $(BUILD)) 
	(cd $(DB_MGR_DIR); $(BUILD)) 
	(cd $(UI_CTRL_DIR); $(BUILD)) 

build_dir:
	echo "### BUILDING DIRECTORIES FOR OUTPUT BINARIES ###"
	(cd $(EMPLOYEE_DIR); $(BUILD_DIR)) 
	(cd $(DB_MGR_DIR); $(BUILD_DIR)) 
	(cd $(UI_CTRL_DIR); $(BUILD_DIR))

clean:
	echo "### CLEAN GENERATED OUTPUT BINARIES ###"
	-(cd $(EMPLOYEE_DIR); $(CLEAN)) 
	-(cd $(DB_MGR_DIR); $(CLEAN)) 
	-(cd $(UI_CTRL_DIR); $(CLEAN))

install:
	echo "### INSTALLING SHARED HEADERS BETWEEN BINARIES ###"
	(cd $(EMPLOYEE_DIR); $(INSTALL)) 
	(cd $(DB_MGR_DIR); $(INSTALL)) 
	(cd $(UI_CTRL_DIR); $(INSTALL))

.PHONY: all build_dir clean install