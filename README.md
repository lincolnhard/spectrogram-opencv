# spectrogram-opencv
Spectrogram display with the help of sndfile-tool, opencv, and portaudio

**Dependencies**
1. [libsndfile](https://github.com/erikd/libsndfile)
2. [portaudio](http://www.portaudio.com/download.html)
3. [opencv](https://github.com/opencv/opencv)
4. [fftw3](http://www.fftw.org/download.html)

**Install**
```
#After install all dependencies, just invoke
make
```

**Result**
```
./spectrogram-opencv-file testsound/baby.wav 5 0.1 200
```

![spectro](https://user-images.githubusercontent.com/16308037/45088367-55794d80-b13b-11e8-8f01-72e7f4a0b696.gif)
