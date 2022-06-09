# datiBeneComune e Uaar: i dati ministeriali sull'insegnamento della religione cattolica

**Quanti sono gli allievi che si avvalgono dell'insegnamento della religione cattolica (IRC) nelle scuole italiane**? Ci sono delle regioni o province in cui i “no” alla materia facoltativa dell'IRC superano quelli di altre zone d'Italia? L'aumento dell'età degli allievi influisce sulla scelta? E quanti sono gli studenti che si avvalgono invece di un'attività alternativa, che per legge dovrebbe essere proposta e garantita dagli istituti scolastici?

L'[**Uaar**](https://www.uaar.it/) è tra le prime aderenti alla campagna [**#datiBeneComune**](https://www.datibenecomune.it/), che ha come obiettivo di fondo quello di valorizzare il patrimonio informativo della pubblica amministrazione e farlo diventare un bene comune.<br>In questo contesto si è innestato un confronto sul come agire sui dati sull'insegnamento della religione cattolica (IRC) nelle scuole italiane,  e il primo passo è stato presentare una richiesta di accesso civico ai dati al Ministero dell'Istruzione, in base a quanto previsto dal Decreto Legislativo 33/2013.

In particolare conoscere:

- numero di studenti che non si avvalgono dell'insegnamento della religione cattolica, aggregati per istituto scolastico;
- numero di studenti che si avvalgono dell'insegnamento della religione cattolica, aggregati per istituto scolastico;
- dettaglio delle scelte alternative all'insegnamento della religione cattolica.

La richiesta dell'Uaar ha avuto risposta soltanto al secondo punto.

Trovi due post gemelli su questa azione #datiBeneComune qui:

➡️ <https://blog.uaar.it/2022/06/09/datibenecomune-e-uaar-ecco-i-dati-su-irc><br>
➡️ <https://www.datibenecomune.it/2022/06/09/datibenecomune-e-uaar-ecco-i-dati-ministeriali-sullinsegnamento-della-religione-cattolica/>

## I dati grezzi

I dati grezzi sono disponibili in due formati, e contengono i dati su studenti e studentesse che si sono avvalsi dell'insegnamento della religione cattolica a scuola, aggregati per istituto, negli anni scolastici 2018-2019, 2019-2020 e 2020-2021.

Sono disponibili per il riuso, con il solo obbligo di citazione della fonte (questo repository), con licenza [Creative Commons — Attribution 4.0 International — CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.it).

### XLSX

Il [file `XLSX`](dati/miur/Alunni%20che%20frequentano%20Rel%20Catt_2018-19_2019-20_2020-21.xlsx?raw=true), è il formato che ci ha restituito il ministero.

È diviso in 3 fogli, uno per ogni anno scolastico.

Due le colonne presenti:

- `Codice Scuola`, con il codice scolastico dell'istituto, disponibile nell'[anagrafica delle scuole](https://dati.istruzione.it/opendata/opendata/catalogo/elements1/?area=Scuole) presente nel portale open data del Ministero dell'Istruzione;
- `Numero di alunni che frequentano l'ora di religione - a.s. 20xx/xx`, con il numero degli alunni.

### CSV

Il [file `CSV`](elaborazioni/rawdata/religione-cattolica-scuola.csv?raw=true) è stato estratto dal file `XLSX` e trasformato in un'unica tabella, con queste 3 colonne:

- `codice-scuola`, con il codice scolastico dell'istituto, disponibile nell'[anagrafica delle scuole](https://dati.istruzione.it/opendata/opendata/catalogo/elements1/?area=Scuole) presente nel portale open data del Ministero dell'Istruzione;
- `numero-alunni`, con il numero degli alunni;
- `anno`, per definire l'anno di riferimento.

## Elaborazioni

È stato creato un foglio elettronico (in formato [`ODS`](elaborazioni/ods/religione-cattolica-scuola.ods?raw=true) e [`XLSX`](elaborazioni/ods/religione-cattolica-scuola.xlsx?raw=true)), con dei dati di riepilogo, utili a farsi un quadro.

## Dati di riferimento

Abbiamo incrociato i dati ricevuti dal Ministero in risposta alla richiesta di accesso, con questi altri:

- Studenti per anno di corso e fascia di eta'. Scuola statale https://dati.istruzione.it/opendata/opendata/catalogo/elements1/leaf/?area=Studenti&datasetId=DS0010ALUCORSOETASTA
- Studenti per anno di corso e fascia di eta'. Scuola paritaria https://dati.istruzione.it/opendata/opendata/catalogo/elements1/leaf/?area=Studenti&datasetId=DS0020ALUCORSOETAPAR
- Studenti per anno di corso, classe e genere. Scuola statale anno scolastico https://dati.istruzione.it/opendata/opendata/catalogo/elements1/leaf/?area=Studenti&datasetId=DS0030ALUCORSOINDCLASTA
- Studenti per anno di corso, classe e genere. Scuola paritaria https://dati.istruzione.it/opendata/opendata/catalogo/elements1/leaf/?area=Studenti&datasetId=DS0040ALUCORSOINDCLAPAR
- Studenti scuola secondaria di secondo grado per indirizzo. Scuola statale https://dati.istruzione.it/opendata/opendata/catalogo/elements1/leaf/?area=Studenti&datasetId=DS0070ALUSECGRADOINDSTA
- Studenti scuola secondaria di secondo grado per indirizzo. Scuola paritaria https://dati.istruzione.it/opendata/opendata/catalogo/elements1/leaf/?area=Studenti&datasetId=DS0080ALUSECGRADOINDPAR
- Numero dei bambini per fascia di eta'. Scuola statale https://dati.istruzione.it/opendata/opendata/catalogo/elements1/leaf/?area=Studenti&datasetId=DS1116INFANZIAETASTA
- Numero dei bambini per fascia di eta'. Scuola paritaria https://dati.istruzione.it/opendata/opendata/catalogo/elements1/leaf/?area=Studenti&datasetId=DS1117INFANZIAETAPAR
