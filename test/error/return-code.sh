#~ /usr/bin/env bash

# In Bash, all functions return a return code.
# A Return code of 0 represents... Yes! You guessed it!
# Success! 😊 Oh, wait, you didn't guess that?
# Oh, well, I guess you're just weird. That's seems pretty logical to me 🤷‍♂️🤣
#
# I'm kidding, but un-intuitive though it may be, in the Bash language,
# A return value of 0 (zero) represents success, and a non-zero return value represents an error.
# It is quite useful to be able to track the return value of a function, for a few reasons:
#	1. It allows you to try a different method of achieving the same goal if the first fails
#	2. It allows you to tell the user what happened (we users appreciate that, take it from me)
#	3. It's a common use-case! Bash is often used for system configuration, which is very state
#		dependent, and the cases where your next action is conditional upon some failure...
#		are quite numerous!
#
# So, how do you know if an operation was successful?
cat << __
This test demonstrates bash functionality which reports the return value of a function,
allowing us to decide upon further courses of action based on the success or failure of a command.
One example use-case (which I was implementing when I decided to initiate this repo a few minutes before
the time of writing) is when installing software on a system that may already have that software.

In such a situation, is it possible to skip the installation in order to save time and resources?
Well, if you wrote a command using the tool you are planning to install, and the command succeeds,
then you can go on without installing it! Or you can check whether the version of the software is suitable
for your purpose.

Let's implement a toy version of this use-case. For this example, will check for
the existence of the 'cracklee' tool, a tool which I named for the sole purpose of using a name
which will not represent any tool installed on my or your computer.
__

echo "First, let's run a successful command and see what the result will be..."
echo "That last message was an 'echo' command, and since you saw it, it must have been successful!"
echo "Let's see what the status code will be!"
echo "The status code is: $?"
echo "Wow! a zero, signifying success! Take notes, high-school students!"
echo "So how did I grab that value from the computer?"
echo "Bash stores the value of the status code for the last command in a variable that we write as: \$?"
echo "I can use that variable to print out the status code, or use it to determine the next step, and more!"
echo ""
echo "Well, 'Nothing beats a trial but a failure,' so let's go for that!"
echo "We'll try to run the command: cracklee -version as an example of someone testing whether a tool is present."
cracklee -version
echo "After that attempt, the status code is now: $?"
echo ""
echo "A non-zero value to signify a failure."
echo ""
echo "I could use this value to determine whether I should go on with my business,"
echo "or install the latest version of 'cracklee'"
echo ""
