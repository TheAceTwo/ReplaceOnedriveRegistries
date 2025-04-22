i learned powershell for this

its a powershell script

in order for it to work youve got to set [google drive for desktop]([url](https://support.google.com/drive/answer/10838124/)) to MIRROR FILES to your hard drive
then you gotta run it.
then you gotta go to that folder and take your email address out of the name so that the script can find it
eg. 'C:\Users\useraccount\My Drive (email@gmail.com)\' turns into 'C:\Users\useraccount\My Drive\'

its really simple, i just don't know how to do the variable-to-string thing where you take apart the file path with code and make it look for the directory regardless of what email address it has in it - no
chatgpt taught me to code in highschool, i cant do all that

By default google drive adds your email address to the file path if you're like me and have a whole bunch of accounts connected so that's what I had to do. Don't quote me on this but it might just work outta the box if you only connect one account to your computer.

if someone else knows how to make the powershell script not care what the google drive directory is named as long as it starts with '\My Drive' and is in the user folder, then please feel free to fix it.
