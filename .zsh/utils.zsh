function add-ssh-keys {
	keys=(~/.ssh/id_rsa)
	for key in $keys; {
		ssh-add $key;
	}
}

function open_on_github {
	xdg-open `git config --get remote.origin.url`
}

function yt_music {
	youtube-dl --default-search=ytsearch: \
		--youtube-skip-dash-manifest \
		-o - "$*" | mpv -
}

function httpless {
    http --pretty=all --print=hb $@ | less -R;
}

alias please=sudo
