# Template Tesi

_Thesis\_LaTeX\_template_, si presenta come un template **non ufficiale** del dipartimento di economia "Marco Biagi" dell'università degli studi di Modena e Reggio-Emilia, con il quale poter redigere la propria tesi (sia triennale che magistrale) sfruttando il linguaggio di typesetting $\latex$.

## 1. Download

[![Download](https://img.shields.io/badge/Download-Click%20Here-blue.svg)](https://github.com/michaeltavoni/Thesis_LaTeX_template/archive/refs/heads/main.zip)

Premendo il seguente bottone per il download, scaricherete sul vostro dispositivo un file compresso contenente l'intero ambiente di lavoro, ovvero, una cartella strutturata come segue:

```raw
Thesis_LaTeX_template:
    capitoli: #cartella che conterrà i vostri capitoli .tex
        ...
    help: #cartella contenente i facsimile tesi che si potranno ottenere dal template e l'help dei comandi
        facsimile_tesi_oneside.pdf
        ...
        help_comandi.png
    immagini: #cartella che conterrà le immagini da inserire nella tesi
        ...
    nome_cognome_matricola.tex #il file della tesi "generale"
    TESI.cls #template della tesi
    README.md #file non utile per fini di stesura (eliminabile)
```

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

Qualora non si voglia scaricare la cartella compressa già pronta, link nella sezione successiva, consiglio di strutturare la cartella del tesi nel seguente modo:
