CC=sdcc
CFLAGS=-mstm8
INCLUDEPATH=lib/stm8/inc/
DEFINES= STM8S003
SOURCE=src/main
OUTPUT_DIR=build/
all:	compile flash
compile:	
	mkdir -p $(OUTPUT_DIR)
	$(CC) $(CFLAGS) -I $(INCLUDEPATH) -D $(DEFINES) -o $(OUTPUT_DIR) $(SOURCE).c 
flash:	
	stm8flash -c stlinkv2 -p stm8s003 -w build/main.ihx
