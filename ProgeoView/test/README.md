# Canale TEST — ProgeoView

Manifest usato dall’app con **Alt+F** (menu Progeo):  
`https://raw.githubusercontent.com/Matteo-Furani/progeo-updates/main/ProgeoView/test/latest.json`

Non è la release ufficiale (`stable/`). Serve per provare patch/installer in locale prima del push su stable.

## Pubblicare un aggiornamento test

Dalla cartella ProgeoView (dopo aver creato la patch zip):

```bat
python packaging/publish_github_release.py ^
  --app ProgeoView ^
  --version 0.1.5 ^
  --channel test ^
  --edge 0.1.4^|0.1.5^|packaging/releases/ProgeoView_patch_0.1.4_to_0.1.5.zip ^
  --notes "Build test: descrizione"
```

Poi commit/push di `ProgeoView/test/latest.json` su questo repo (`main`).

## Prova in app

1. Avvia Progeo (build locale o installata).
2. Nel menu: **Alt+F**.
3. Conferma «Scarica aggiornamento test» e accetta UAC se richiesto.
