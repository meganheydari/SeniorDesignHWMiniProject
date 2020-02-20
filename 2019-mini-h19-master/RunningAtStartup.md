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



