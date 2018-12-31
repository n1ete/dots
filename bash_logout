# ~/.bash_logout: executed by bash(1) when login shell exits.

# kill off macromedia flash super cookies...
[ -d ~/.adobe ] && rm -rf ~/.adobe
[ -d ~/.macromedia ] && rm -rf ~/.macromedia

# when leaving the console clear the screen to increase privacy
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
