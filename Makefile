#     build                    build a specific configuration
#     clean                    remove built files from a configuration
#     clobber                  remove all built files
#     all                      build all configurations
#     help                     print help mesage
#  
#  Targets .build-impl, .clean-impl, .clobber-impl, .all-impl, and
#  .help-impl are implemented in nbproject/makefile-impl.mk.
#
#  Available make variables:
#
#     CND_BASEDIR                base directory for relative paths
#     CND_DISTDIR                default top distribution directory (build artifacts)
#     CND_BUILDDIR               default top build directory (object files, ...)
#     CONF                       name of current configuration
#     CND_ARTIFACT_DIR_${CONF}   directory of build artifact (current configuration)
#     CND_ARTIFACT_NAME_${CONF}  name of build artifact (current configuration)
#     CND_ARTIFACT_PATH_${CONF}  path to build artifact (current configuration)
#     CND_PACKAGE_DIR_${CONF}    directory of package (current configuration)
#     CND_PACKAGE_NAME_${CONF}   name of package (current configuration)
#     CND_PACKAGE_PATH_${CONF}   path to package (current configuration)
#
# NOCDDL

# Environment 
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

MP_CC="D:\Program Files\Microchip\xc8\v2.32\bin\xc8-cc.exe"

NAME := DCF77_Funkuhr
OUT_DIR := Output

CPU := 16F73

DIRS := .

CFLAGS += -O0
CFLAGS := -mcpu=$(CPU)
CFLAGS += -c
CFLAGS += -D__DEBUG=1
CFLAGS += -fno-short-double
CFLAGS += -fno-short-float 
CFLAGS += -fasmfile
CFLAGS += -maddrqual=ignore 
CFLAGS += -xassembler-with-cpp 
CFLAGS += -mwarn=-3 
CFLAGS += -Wa,-a 
CFLAGS += -Wl,--data-init 
CFLAGS += -mc90lib
CFLAGS += -std=c99 
CFLAGS += -mstack=compiled:auto:auto

LINKFLAGS := -mcpu=$(CPU) 
LINKFLAGS += -O0 
LINKFLAGS += -fno-short-double 
LINKFLAGS += -fno-short-float 
LINKFLAGS += -fasmfile 
LINKFLAGS += -maddrqual=ignore 
LINKFLAGS += -xassembler-with-cpp 
LINKFLAGS += -mwarn=-3 
LINKFLAGS += -Wa,-a 
LINKFLAGS += -msummary=-psect,-class,+mem,-hex,-file  
LINKFLAGS += -ginhx032 
LINKFLAGS += -Wl,--data-init 
LINKFLAGS += -mkeep-startup 
LINKFLAGS += -mno-osccal 
LINKFLAGS += -mresetbits 
LINKFLAGS += -msave-resetbits 
LINKFLAGS += -mno-download 
LINKFLAGS += -mno-stackcall 
LINKFLAGS += -mc90lib 
LINKFLAGS += -std=c99 
LINKFLAGS += -mstack=compiled:auto:auto

FILES := $(foreach dir,$(DIRS),$(wildcard $(dir)/*.c))
OUTS := $(patsubst %.c, %.p1, $(FILES))
OUTS := $(addprefix $(OUT_DIR)/, $(OUTS))
DEPS := $(patsubst %.p1, %.d, $(OUTS))

test:
	@echo FILES: $(FILES)
	@echo DIRS: $(OUTS)
	@echo DEPS: $(DEPS)

all: $(OUT_DIR)/$(NAME).hex
	@echo finished

$(OUT_DIR)/$(NAME).hex: $(OUTS)
	@echo linking ... 
	@${MP_CC} $(LINKFLAGS) -Wl,-Map=$(OUT_DIR)/$(NAME).map -o $(OUT_DIR)/$(NAME).hex $(OUTS)

-include $(DEPS)

$(OUT_DIR)/%.p1: %.c Makefile
	@$(MKDIR) $(dir $@)
	@echo compiling $< ...
	@$(MP_CC) $(INC) $(CFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -rf $(OUT_DIR)
