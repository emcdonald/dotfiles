# Colors!
set       red="%{\033[1;31m%}"
set     green="%{\033[1;32m%}"
set    yellow="%{\033[1;33m%}"
set      blue="%{\033[1;34m%}"
set   magenta="%{\033[1;35m%}"
set      cyan="%{\033[1;36m%}"
set     white="%{\033[0;37m%}"
set whiteBold="%{\033[1;37m%}"
set       end="%{\033[0m%}" # This is needed at the end

#set prompt="`hostname -s`<`whoami`> "
set prompt="${white}[${cyan}%n${whiteBold}@${blue}%m ${white}%~]${end} "

umask 002

alias ls 'ls --color=always'
alias ltr 'ls -latrh'
alias ll 'ls -lh'
alias la 'ls -ah'

alias prof 'cd /home/wejteam/team/dev_support/profiles/eric'

alias sudo 'sudo env "PATH=$PATH"'

#sdev (teamtools) meld is broken on Centos8
alias meld '/bin/meld'

alias firefox '/home/eric/applications/firefox/firefox'
alias kitty '/home/eric/applications/kitty/kitty.app/bin/kitty'

alias cshrc 'vi ~/.cshrc'
alias renew 'source ~/.cshrc'

alias sows 'cd ~/Desktop/sows/2013/04_April'

alias go 'ssh -X jtlsgo@radagast'
alias 50 'ssh -X jtls50@radagast'
alias 51 'ssh -X jtls51@radagast'
alias 60 'ssh -X jtls60@radagast'
alias 61 'ssh -X jtls61@radagast'

alias sshweb '/home/eric/scripts/ssh_to_website.sh'
alias sftpweb '/home/eric/scripts/sftp_to_website.sh'
alias scpweb '/home/eric/scripts/scp_to_website.sh'

#Setup emacs
setenv EMACS_USER_DIRECTORY /home/eric/.emacs.d
setenv EMACS_USER_DIR /home/eric/.emacs.d
alias emacs '/home/eric/applications/emacs/bin/emacs -q --user=eric'

#alias vi '/home/eric/applications/vim'
#alias vim '/home/eric/applications/vim'
#alias gi '/home/eric/applications/gvim'
#alias vi 'vim -S /home/eric/.vimrc'
#alias vi 'setenv VIMINIT /home/eric/.vimrc; setenv VIMRUNTIME /home/eric/.vim/; vim'
#alias gvim 'gvim -S /home/eric/.vimrc'
#alias vi '/home/eric/applications/vim --cmd "set runtimepath^=/home/eric/.vim" -u /home/eric/.vimrc'
#alias vi '/home/eric/applications/neovim/current/nvim.appimage --cmd "set runtimepath^=/home/eric/.vim"  --cmd "set runtimepath+=/home/eric/.vim/after" -u /home/eric/.vimrc'
#alias vi '/home/eric/applications/neovim/current/nvim.appimage --cmd "set runtimepath^=/home/eric/.vim"  --cmd "set runtimepath+=/home/eric/.vim/after"'
alias vi '/home/eric/applications/neovim/current/nvim.appimage -u /home/eric/.config/nvim/init.vim'
alias vim vi
alias vimrc 'vi /home/eric/.config/nvim/init.vim'

#alias vi 'vim --cmd "set runtimepath^=/home/eric/.vim" -u /home/eric/.vimrc'
alias gvim 'gvim --cmd "set runtimepath^=/home/eric/.vim" -u /home/eric/.vimrc'

set filec
set autolist
set addsuffix
set rmstar
set nobeep
# Immediate notification of job completion
set notify

setenv EDITOR vim
setenv PAGER less

command -v "kitty"  >/dev/null
if ($? == 0) then
    set d = `date +%H`
    if ($d > 6 && $d < 20) then
        kitty +kitten themes --reload-in=all "Gruvbox Light"
        #kitty @ set-colors -a -c "/home/eric/.config/kitty/Gruvbox Light.conf"
    else
        kitty +kitten themes --reload-in=all "duckbones"
        #kitty @ set-colors -a -c "/home/eric/.config/kitty/duckbones.conf"
    endif
endif


#setenv LS_COLORS 'rs=0:di=01;95:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;95:ow=34;95:st=37;95:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'   

