rem === 20 x 20 Haar 24 stage =====
opencv_createsamples.exe -img img/img_plus.bmp -vec vec/plus.vec -num 500 -bgcolor 255 -w 20 -h 20
pause
opencv_traincascade  -data cascade/P/ -vec vec/plus.vec -bg neg.dat -w 20 -h 20 -numStages 24 -numPos 400 -numNeg 300 -featureType HAAR -mode BASIC -precalcValBufSize 20000 -precalcIdxBufSize 20000 -numThreads 8
pause
