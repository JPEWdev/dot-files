# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

add_to_path() {
    if [ -d $1 ]; then
        case ":$PATH:" in
            (*:$1:*) ;;
            (*) PATH="$PATH:$1"
        esac
    fi
}

add_to_path $HOME/bin
add_to_path $HOME/.local/bin
add_to_path $HOME/.cargo/bin
add_to_path $HOME/go/bin
add_to_path $HOME/.npm-global/bin

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
