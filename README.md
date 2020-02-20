# 2019-mini-h19

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

## Running CaptureAndCount.py Upon Startup (Cron)

The following code is the cron command that provides the input and output paths to call the python script CaptureAndCount.py
and to save the data, locally (on the pi) in a directory called "Results" 

I have selected an arbitrary duration for the video recording of 15 s. This can be changed simply to suit the users needs by either:
- calling the script in the command line 
- altering the cron command 

```
GNU nano 3.2              /tmp/crontab.QX17Nd/crontab                         

# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command

# The command that I added to start the script upon reboot
@reboot python3 /home/pi/2019-hardware-miniproject/CaptureAndCount.py /home/pi/me/pi/2019-hardware-miniproject/Results 15

```


