#import aliases if exist
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.bash_scripts ]; then
    . ~/.bash_scripts
fi
#import logout if exists
if [ -f ~/.bash_logout ]; then
    . ~/.bash_logout
fi

PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '\''NR == 1{ split($2, a," ");print a[1]}'\'')'; PS1='\[\e]0;CPU: $(top -bn1 | grep '\''Cpu(s)'\'' | awk '\''{print $2 + $4}'\'')% | RAM: $(free | awk '\''/Mem:/ {print $3/$2 * 100.0}'\'')% | Disk: $(df -h / | awk '\''/\// {print $5}'\'')\a\]${debian_chroot:+($debian_chroot)}\[$(tput setaf 39)\]\u \[$(tput setaf 45)\]\h \[$(tput setaf 51)\]${PS1_CMD1} \[$(tput setaf 195)\]\w \[$(tput sgr0)\]$ '