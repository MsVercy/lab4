#!/bin/bash

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "-d, --date           Wyświetla dzisiejszą datę"
  echo "-l, --logs [N]       Tworzy N plików logx.txt (domyślnie 100)"
  echo "-h, --help           Wyświetla pomoc"
  echo "    --init           Klonuje repozytorium i ustawia PATH"
  echo "-e, --error [N]      Tworzy N katalogów errorx z plikiem errorx.txt (domyślnie 100)"
  exit 0
fi

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  date
  exit 0
fi

if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    filename="log${i}.txt"
    echo -e "$filename\n$SCRIPT_NAME\n$(date)" > "$filename"
  done
  exit 0
fi

if [[ "$1" == "--init" ]]; then
  git clone https://github.com/TwojLogin/Lab4-GIT.git
  export PATH="$PATH:$(pwd)/Lab4-GIT"
  exit 0
fi

if [[ "$1" == "--error" || "$1" == "-e" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    mkdir -p "error${i}"
    echo -e "error${i}.txt\n$SCRIPT_NAME\n$(date)" > "error${i}/error${i}.txt"
  done
  exit 0
fi

if [[ -z "$1" ]]; then
  echo "Brak argumentów. Użyj --help lub -h, aby zobaczyć dostępne opcje."
  exit 1
fi

echo "Nieznana opcja: $1"
echo "Użyj --help lub -h, aby zobaczyć dostępne opcje."
exit 1

