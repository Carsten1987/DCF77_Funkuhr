# MIT License
# 
# Copyright (c) 2021 Carsten1987
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Environment
ifeq ($(OS),Windows_NT)
	MKDIR=gnumkdir -p
else
	MKDIR=mkdir -p
endif
RM=rm -f 
MV=mv 
CP=cp 

MP_CC=xc8-cc

NAME := DCF77_Funkuhr
OUT_DIR := Output

CPU := 16F73

DIRS := .

INC :=

CFLAGS += -O0
CFLAGS := -mcpu=$(CPU)
CFLAGS += -c
#CFLAGS += -D__DEBUG=1
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
