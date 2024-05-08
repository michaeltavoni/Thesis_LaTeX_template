# Template Tesi

_Thesis\_LaTeX\_template_, si presenta come un template **non ufficiale** del dipartimento di economia "Marco Biagi" dell'università degli studi di Modena e Reggio-Emilia, con il quale poter redigere la propria tesi (sia triennale che magistrale) sfruttando il linguaggio di typesetting $\LaTeX$.

## 1. Download

[![Download](https://img.shields.io/badge/Download-Click%20Here-blue.svg)](https://github.com/michaeltavoni/Thesis_LaTeX_template/archive/refs/heads/main.zip)

Premendo il bottone per il download, scaricherete sul vostro dispositivo un file compresso contenente l'intero ambiente di lavoro, ovvero, una cartella strutturata come segue:

```raw
Thesis_LaTeX_template:
    capitoli: 
        ...
    help: 
        facsimile_tesi_oneside.pdf
        ...
        help_comandi.png
    immagini:
        ...
    nome_cognome_matricola.tex 
    TESI.cls 
    README.md 
```

Dove:

- **capitoli**\
cartella nella quale poter organizzare i capitoli della tesi (conterrà un file `.tex` vuoto da eliminare).
- **help**\
cartella contenente i facsimili dei risultati ottenibili con il template e le istruzioni ai comandi.
- **immagini**\
cartella nella quale poter organizzare: immagini, grafici ed altro (conterrà un file `.txt` vuoto, da eliminare).
- **nome_cognome_matricola**.tex\
file `.tex` della tesi (file centrale).
- **TESI.cls**\
template della tesi
- **README.md**\
file di spiegazione del template, visualizzabile anche da GitHub.

## 2. Istruzioni

### 2.1 Opzioni

| Opzioni                  | Descrizione                                                      | Esempio                               |
|--------------------------|------------------------------------------------------------------|---------------------------------------|
| [oneside]                | Layout tesi per stampa tradizionale (stampa su pagina dispari)           | \documentclass[oneside]{TESI}        |
| [twoside, openany]      | Layout tesi per stampa fronte-retro                          | \documentclass[twoside, openany]{TESI}|
| [twoside, openright]    | Layout tesi per stampa fronte-retro (nuovi capitoli solo su pagina dispari)          | \documentclass[twoside, openright]{TESI}|

### 2.2 Comandi

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

## 3. Consigli

1. gestire i capitoli della tesi in file `.tex` dedicati, così da non appesantire e rendere complessa la lettura del file "centrale" ovvero: `nome_cognome_matricola.tex`.
1. se si ha del codice (python, r o altro), consiglio di creare un'apposita cartella.
1. non mi sono ancora posto il problema della bilbiografia....
