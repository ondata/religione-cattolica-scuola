#!/bin/bash

set -x
set -e
set -u
set -o pipefail

folder="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# crea cartella data, se non esiste
mkdir -p "$folder"/../data
# crea cartella tmp, se non esiste
mkdir -p "$folder"/tmp

# svuota cartella tmp
find "$folder"/tmp -iname "*.*" -type f -delete

# scarica dati su alunni nelle scuole
cd "$folder"/tmp
cat "$folder"/../risorse/numero-alunni.jsonl | while read -r line; do
    URL=$(echo "$line" | jq -r '.URL')
    wget "$URL"
done

# calcola numero di alunni per scuola negli anni
mlr --csv stats1 -f ALUNNI -a sum -g ANNOSCOLASTICO,CODICESCUOLA then sort -f ANNOSCOLASTICO,CODICESCUOLA then rename ALUNNI_sum,ALUNNI "$folder"/tmp/ALUCORSOETASTA20* >"$folder"/../data/alunni-scuole.csv

cd "$folder"
