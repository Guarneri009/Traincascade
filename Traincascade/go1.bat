rem === 20 x 20 Haar 24 stage =====
opencv_createsamples -info pos1.dat   -vec vec/pos1.vec -num 500 -w 20 -h 20
pause
opencv_traincascade  -data cascade/1/ -vec vec/pos1.vec -bg neg.dat -w 20 -h 20 ^
-numStages 22 -numPos 450 -numNeg 800 ^
-featureType HAAR -mode BASIC -precalcValBufSize 20000 -precalcIdxBufSize 20000  -numThreads 8
puase
