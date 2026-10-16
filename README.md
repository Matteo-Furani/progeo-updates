# progeo-updates

Repository **pubblico** con i manifest di aggiornamento dei programmi Progeo.

I client (ProgeoView, SysPick, …) leggono `latest.json` da qui via
`raw.githubusercontent.com`. Gli installer e le patch grandi stanno nelle
**GitHub Releases** di questo stesso repo.

## Struttura

```text
ProgeoView/
  stable/
    latest.json
SysPick/
  stable/
    latest.json
```

## URL manifest (ProgeoView)

```text
https://raw.githubusercontent.com/Matteo-Furani/progeo-updates/main/ProgeoView/stable/latest.json
```

## Pubblicare una release

Dal PC di build (con `gh auth login`):

```bat
cd path\to\Programmi\ProgeoView
python packaging\publish_github_release.py --app ProgeoView --version 0.1.1 --from-version 0.1.0 --patch path\to\patch.zip --updates-repo Matteo-Furani/progeo-updates
```

Poi commit/push di `ProgeoView/stable/latest.json` su questo repo.
