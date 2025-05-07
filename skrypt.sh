if [[ "$1" == "--date" ]]; then
	date
fi

if [[ "$1" == "--logs" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    filename="log${i}.txt"
    echo -e "$filename\nskrypt.sh\n$(date)" > $filename
  done
fi

if [[ "$1" == "--help" ]]; then
  echo "-d, --date         Wyświetla dzisiejszą datę"
  echo "-l, --logs [N]     Tworzy N plików logx.txt (domyślnie 100)"
  echo "-h, --help         Wyświetla pomoc"
  exit 0
fi

if [[ "$1" == "-d" ]]; then date; fi
if [[ "$1" == "-l" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    filename="log${i}.txt"
    echo -e "$filename\nskrypt.sh\n$(date)" > $filename
  done
fi
if [[ "$1" == "-h" ]]; then
  # Wyświetl pomoc
fi

if [[ "$1" == "--init" ]]; then
  git clone https://github.com/TwojLogin/Lab4-GIT.git
  export PATH="$PATH:$(pwd)/Lab4-GIT"
fi

if [[ "$1" == "--error" || "$1" == "-e" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    mkdir -p "error${i}"
    echo -e "error${i}.txt\nskrypt.sh\n$(date)" > "error${i}/error${i}.txt"
  done
fi

