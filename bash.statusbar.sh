# You can implement this by overwriting a line. Use \r to go back to the beginning of the line without writing \n to the terminal.
# Write \n when you're done to advance the line.
# Use echo -ne to (1) not print \n and (2) to recognize escape sequences line \r.

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
