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
  echo "--date         Wyświetla dzisiejszą datę"
  echo "--logs [N]     Tworzy N plików logx.txt (domyślnie 100)"
  echo "--help         Wyświetla pomoc"
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
