# DEFAULT ALIAS
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


#
#Custom
alias d='docker'
alias dcr='docker-compose down && docker-compose up -d && docker logs -f $(docker ps --format '{{.ID}}' | head -1)'
alias dtag="docker tag ${1} ${2} && docker push $2"