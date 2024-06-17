# Dev Container Projekt

Dieses Repository enthält eine einfache HTML/CSS-Website, die in einem Docker Dev Container gehostet wird. Es ermöglicht eine reibungslose Entwicklungsumgebung, isoliert von der lokalen Umgebung.

## Voraussetzungen

Vor dem Starten des Dev Containers stellen Sie sicher, dass folgende Software installiert ist:

- Docker Desktop: [Installationsanleitung](https://www.docker.com/products/docker-desktop)

## Projektstruktur

- **index.html**: Die Haupt-HTML-Datei der Website.
- **styles.css**: Die CSS-Datei für das Styling der Website.
- **Dockerfile**: Definition, wie der Docker Container aufgebaut wird.
- **docker-compose.yml**: Docker-Compose-Datei für die Containerkonfiguration (optional).

## Öffnen des Projekts im Dev Container

1. Stelle sicher, dass Docker auf deinem System installiert ist.
2. Klonen dieses Repository:
    ```
    git clone https://github.com/giorgio-23/projekt-container-169.git
    ```
3. Öffne Visual Studio Code (VS Code).
4. Installiere die Erweiterung "Remote - Containers" für VS Code, falls noch nicht installiert. Dies ermöglicht das Öffnen des Projekts in einem Dev Container.
5. Öffne das Projekt in VS Code.
6. Wenn du VS Code zum ersten Mal öffnest, erscheint unten links ein grüner Button mit der Aufschrift "Reopen in Container". Klicke darauf. Alternativ kannst du die Befehlspalette öffnen (Strg/Cmd + Shift + P) und "Dev-Containers: Reopen in Container" eingeben.
7. VS Code baut den Dev Container basierend auf den Anweisungen im Dockerfile und der docker-compose.yml (falls vorhanden).
8. Sobald der Container eingerichtet ist, öffnet sich das Projekt im Dev Container.

## Starten der Anwendung im Dev Container

1. Im Dev Container sind die notwendigen Dienste bereits gestartet.
2. Um die Website zu starten, gehe zu Terminal > New Terminal oder öffne ein neues Terminal (Strg/Cmd + Shift + `).
3. Führe den folgenden Befehl aus, um den Webserver zu starten:
    ```
    docker-compose up
    ```
   Wenn du kein `docker-compose.yml` verwendest, kannst du stattdessen den Befehl `docker run` verwenden.

## Debugging (optional)

Wenn du Debugging in VS Code verwenden möchtest, kannst du die `launch.json`-Datei konfigurieren, um den Dev Container zu verwenden. Hier ist ein Beispiel:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Docker: Attach to Container",
      "type": "docker",
      "request": "attach",
      "containerName": "projekt-modul-169",
      "skipRun": true,
      "port": 8080,
      "sourceMaps": true,
      "trace": "verbose"
    }
  ]
}

```
## Beenden des Dev Contianers

Um den Dev Container zu beenden, kannst du das Terminal öffnen und den Befehl ausführen:

```
docker-compose down
```

