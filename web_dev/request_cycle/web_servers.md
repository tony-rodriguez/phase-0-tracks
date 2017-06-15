*What are some of the key design philosophies of the Linux operating system?*
* One of the main philosphies of Linux is the assumption that the user is computer literate and knows what they are doing. This means that the user has a lot of power. There are also 9 main tenents of the Linux Philosophy. They are:
    1. Small is Beautiful - programs are small/do one thing
    2. Each Program Does One Thing Well - see above, specialized commands to do one thing well 
    3. Prototype as Soon as Possible - 
    4. Choose Portability Over Efficiency - The portability of shell scripts can be far more efficient in the long run than the perceived efficiency of writing a program in a compiled language
    5. Store Data in Flat Text Files
    6. Use Software Leverage
    7. Use Shell Scripts to Increase Leverage and Portability
    8. Avoid Captive User Interfaces - Most commands expect their options and arguments to be typed on the command line when the command is launched.
    9. Make Every Program a Filter - Commands receive data as input, filter/changes it some way, then output

*In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?*
A VPS is a virtual machine that can be purchased and used as a web server. As described earlier in the lesson, it is a 'chunk of memory' that runs its own operating system and acts the same as a physical server. They are advantageous because of the ease with which they can be created and configured. They also can be inexpensive. 

*Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?*
Running programs as root runs the risk of damaging your system if something goes wrong. Running programs as a regular user does not have that risk because a regular user does not have the priveleges that the root user has. This means that if there is a bug in your program that can wipe your system, you are protected because a regular user does not have the priveleges required to wipe the system. In addition, running a program as root has security concerns, as an attacker would have full access to your system if the program has a bug that is exploitable.