alias info="info --vi-keys"
alias sudo="sudo -E"

activate ()
{
	curd="$1"
	[ -z "$1" ] && curd="$(pwd)"
	while [[ ! -e "$HOME/.venvs/$(basename $curd)" ]]
	do
		curd="$(dirname $curd)"
	done
	echo "$HOME/.venvs/$(basename $curd)"
	. "$HOME/.venvs/$(basename $curd)/bin/activate"
}

compdef '_files -/ -q -W "$HOME"/.venvs' activate

cvenv ()
{
	curd="$1"
	[ -z "$1" ] && curd="$(pwd)"
	mkdir -p "$HOME/.venvs"
	python -m venv "$HOME/.venvs/$(basename $curd)"
}

compdef '_files -/ -q' cvenv

dvenv ()
{
	curd="$1"
	[ -z "$1" ] && curd="$(pwd)"
	while [[ ! -e "$HOME/.venvs/$(basename $curd)" ]]
	do
		curd="$(dirname $curd)"
	done
	rm -rf "$HOME/.venvs/$(basename $curd)"
}

compdef '_files -/ -q -W "$HOME"/.venvs' dvenv

