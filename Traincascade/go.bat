



rem opencv_traincascade -data cascade/0/ -vec vec/pos0.vec -bg neg.dat -w 28 -h 28 -numStages 30 -numPos 300 -numNeg 300 -featureType LBP -mode BASIC -precalcValBufSize 64000 -precalcIdxBufSize 64000
opencv_traincascade -data cascade/1/ -vec vec/pos1.vec -bg neg.dat -w 28 -h 28 -numStages 30 -numPos 100 -numNeg 1500 -featureType LBP -mode BASIC -precalcValBufSize 64000 -precalcIdxBufSize 64000
pause
rem opencv_traincascade -data cascade/2/ -vec vec/pos2.vec -bg neg.dat -w 28 -h 28 -numStages 25 -numPos 300 -numNeg 200 -featureType LBP -mode BASIC -precalcValBufSize 64000 -precalcIdxBufSize 64000
rem opencv_traincascade -data cascade/3/ -vec vec/pos3.vec -bg neg.dat -w 28 -h 28 -numStages 25 -numPos 300 -numNeg 200 -featureType LBP -mode BASIC -precalcValBufSize 64000 -precalcIdxBufSize 64000
rem opencv_traincascade -data cascade/4/ -vec vec/pos4.vec -bg neg.dat -w 28 -h 28 -numStages 25 -numPos 300 -numNeg 200 -featureType LBP -mode BASIC -precalcValBufSize 64000 -precalcIdxBufSize 64000


rem -precalcValBufSize 4000 -precalcIdxBufSize 4000

rem opencv_traincascade -data cascade/0/ -vec vec/pos0.vec -bg neg.dat -w 28 -h 28 -numStages 25 -numPos 50 -numNeg 100 -featureType HAAR -mode BASIC -precalcValBufSize 128000 -precalcIdxBufSize 128000


opencv_traincascade -data cascade/1/ -vec vec/pos1.vec -bg neg.dat -w 28 -h 28 -numStages 20 -numPos 100 -numNeg 1500 -featureType LBP -mode BASIC -precalcValBufSize 1284000 -precalcIdxBufSize 1284000

=== 20 x 20 Haar 24 stage =====
opencv_createsamples -info pos1.dat   -vec vec/pos1.vec -num 500 -w 20 -h 20
opencv_traincascade  -data cascade/1/ -vec vec/pos1.vec -bg neg.dat -w 20 -h 20 -numStages 24 -numPos 450 -numNeg 200 -featureType HAAR -mode BASIC -precalcValBufSize 2498 -precalcIdxBufSize 2498


=== 20 x 20 Haar 24 stage =====
opencv_createsamples -info pos3.dat   -vec vec/pos3.vec -num 500 -w 20 -h 20
opencv_traincascade  -data cascade/3/ -vec vec/pos3.vec -bg neg.dat -w 20 -h 20 -numStages 24 -numPos 450 -numNeg 200 -featureType HAAR -mode BASIC -precalcValBufSize 2498 -precalcIdxBufSize 2498


=== 20 x 20 Haar 24 stage =====
opencv_createsamples -info pos4.dat   -vec vec/pos4.vec -num 500 -w 20 -h 20
opencv_traincascade  -data cascade/4/ -vec vec/pos4.vec -bg neg.dat -w 20 -h 20 -numStages 24 -numPos 450 -numNeg 200 -featureType HAAR -mode BASIC -precalcValBufSize 2498 -precalcIdxBufSize 2498
