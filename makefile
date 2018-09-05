CCL += gcc
CXXCL += g++

INCLUDES += -I src
INCLUDES += `pkg-config --cflags opencv`
INCLUDES += `pkg-config --cflags portaudio-2.0`
INCLUDES += `pkg-config --cflags sndfile`
INCLUDES += `pkg-config --cflags fftw3`

CFLAGS += -Ofast -funsafe-math-optimizations -ftree-vectorize
CXXFLAGS += -Ofast -std=c++11 -funsafe-math-optimizations -ftree-vectorize

LDFLAGS += `pkg-config --libs opencv`
LDFLAGS += `pkg-config --libs portaudio-2.0`
LDFLAGS += `pkg-config --libs sndfile`
LDFLAGS += `pkg-config --libs fftw3`

APP_NAME1 += spectrogram-opencv-file
APP_NAME2 += spectrogram-opencv-mic

OBJS1 += main_file_input.o common.o spectrum.o window.o
OBJS2 += main_mic_input.o common.o spectrum.o window.o

all: $(OBJS1) $(OBJS2)
	$(CXXCL) -o $(APP_NAME1) $(OBJS1) $(LDFLAGS)
	$(CXXCL) -o $(APP_NAME2) $(OBJS2) $(LDFLAGS)
	
main_file_input.o:
	$(CXXCL) -c -pipe $(CXXFLAGS) $(INCLUDES) examples/main_file_input.cpp
main_mic_input.o:
	$(CXXCL) -c -pipe $(CXXFLAGS) $(INCLUDES) examples/main_mic_input.cpp
common.o:
	$(CCL) -c -pipe $(CFLAGS) $(INCLUDES) src/common.c
spectrum.o:
	$(CCL) -c -pipe $(CFLAGS) $(INCLUDES) src/spectrum.c
window.o:
	$(CCL) -c -pipe $(CFLAGS) $(INCLUDES) src/window.c


clean:
	rm -rf *.o
