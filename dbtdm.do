set project_path [pwd]
cd $project_path
vlib work
vlog -reportprogress 300 -work work mIsolateModule.v -novopt
vlog -reportprogress 300 -work work mFringeModule.v -novopt
vlog -reportprogress 300 -work work mSimilarityModule.v -novopt
vlog -reportprogress 300 -work work mFilterModule.v -novopt
vlog -reportprogress 300 -work work mTopModule.v -novopt
vlog -reportprogress 300 -work work TopTestBench.sv -novopt
vsim -gui work.TopTestBench-novopt
#do wave.do
run -all
quit -sim