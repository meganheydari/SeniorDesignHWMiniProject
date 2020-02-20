# Video Acquisition and Processing 

Using CaptureMotion.py, I captured video clips from the senior design labs of cars driving by on I-90. 

I recorded videos of 5 s, 15 s, and 30 s durations. 

The CaptureMotion.py script saves 2 files in a directory every time it is run: 
- motion.h5 
- raw.mp4 

Motion.h5 is the datasource that is used in the scripts CountMotion.py. I used the scp command to access the raw.mp4 file on my local machine and played it back to verify the actual number of cars that had passed by. 

CountMotion.py uses motion.h5 as the data source and detects planar data of your choosing (x axis in this case). 

CountMotion.py returns the number of cars in the terminal command line along with a vector of cars detected per frame. 

The data from CountMotion.py is what will be used to plot data information on the processed video. 
