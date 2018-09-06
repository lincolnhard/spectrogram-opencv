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
./spectrogram-opencv-file testsound/baby.wav 12 0.1 100
```

![sspp](https://user-images.githubusercontent.com/16308037/45131120-20faa580-b1be-11e8-89e8-07c14e16d6e4.gif)
