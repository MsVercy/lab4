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
