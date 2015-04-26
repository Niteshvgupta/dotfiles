for file in ~/.{aliases,functions}; do
 	 [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Make ls use colors
export CLICOLOR=1
alias ls='ls -Fa'

# Add 'killall' tab completion for common apps
complete -o "nospace" -W "Preview Calendar Dock Finder Mail Safari \
						  iTunes SystemUIServer Terminal Twitter" killall;
