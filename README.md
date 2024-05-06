# Template Tesi
Il template tesi è stato creato da me, come studente, non è un template ufficiale. Ad ogni modo al netto delle modifiche del caso. si tratta di un template specifico per il Dipartimento di Economia "Marco Biagi" dell'università di Modena e Reggio-Emilia.

## 1. Istruzioni 
### 1.1 Opzioni
| Opzioni                  | Descrizione                                                      | Esempio                               |
|--------------------------|------------------------------------------------------------------|---------------------------------------|
| [oneside]                | Layout tesi per stampa tradizionale (stampa su pagina dispari)           | \documentclass[oneside]{TESI}        |
| [twoside, openany]      | Layout tesi per stampa fronte-retro                          | \documentclass[twoside, openany]{TESI}|
| [twoside, openright]    | Layout tesi per stampa fronte-retro (nuovi capitoli solo su pagina dispari)          | \documentclass[twoside, openright]{TESI}|

### 1.2 Comandi
| Comando                  | Descrizione                                                     | Esempio                               |
|--------------------------|-----------------------------------------------------------------|---------------------------------------|
| \Indirizzo{ }           | Inserisce all'interno della copertina il nome del corso di studi specificato all'interno delle parentesi graffe {}        | \Indirizzo{Corso di Laurea Magistrale della strada} |
| \Laureando{ }           | Inserisce all'interno della copertina il nome ed il cognome dello studente specificato all'interno delle parentesi graffe {}  | \Laureando{Mario Rossi}               |
| \Relatore{ }            | Inserisce all'interno della copertina il nome ed il cognome del relatore specificato all'interno delle parentesi graffe {}  | \Relatore{Marco Bianchi}              |
| \Correlatore{ }         | Inserisce all'interno della copertina il nome ed il cognome del correlatore specificato all'interno delle parentesi graffe {}. Se non si ha un relatore, non utilizzare il comando e quindi cancellarlo.          | \Correlatore{Giuseppe Verdi}          |
| \Titolo{ }              | Inserisce all'interno della copertina il titolo della tesi specificato all'interno delle parentesi graffe {}              | \Titolo{L'uso dei dati nei processi industriali} |
| \ParoleChiave{ }        | Aggiunge ai metadati del documento le parole chiave specificate. Separare le parole chiave con virgola.        | \ParoleChiave{tesi magistrale, economia, analisi dei dati} |
| \AnnoAccademico{ }      | Inserisce all'interno della copertina l'anno accademico di riferimento specificato all'interno delle parentesi graffe {}   | \AnnoAccademico{2023/2024}            |
| \dedica{ }              | Inserisce nella seconda pagina della tesi la dedica contenuta all'interno delle parentesi graffe {}. La dedica apparirà come quella dei libri e quindi al centro a destra della pagina, scritta in corsivo.            | \dedica{Ai miei cari famigliari}     |

## 2. Consigli
Qualora non si voglia scaricare la cartella compressa già pronta, link nella sezione successiva, consiglio di strutturare la cartella del tesi nel seguente modo:
```
Elaborato_finale:
   Immagini:
     ...
   Capitoli:
     ...
   nome_cognome_matricola.tex
   TESI.cls
   ...
```
## 3. Download
Di seguito è stato inserito il link con il quale si potrà scaricare una cartella compressa, costruita come suggerito in precedenza.

[download - zip](https://github.com/michaeltavoni/Thesis_LaTeX_template/archive/refs/heads/main.zip)

