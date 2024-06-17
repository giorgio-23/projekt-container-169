 <h1>Dev Container Projekt</h1>

    <p>Dieses Repository enthält eine einfache HTML/CSS-Website, die in einem Docker Dev Container gehostet wird. Es ermöglicht eine reibungslose Entwicklungsumgebung, isoliert von der lokalen Umgebung.</p>

    <h2>Voraussetzungen</h2>
    <p>Vor dem Starten des Dev Containers stellen Sie sicher, dass folgende Software installiert ist:</p>
    <ul>
        <li>Docker Desktop: <a href="https://www.docker.com/products/docker-desktop">Installationsanleitung</a></li>
    </ul>

    <h2>Projektstruktur</h2>
    <ul>
        <li><strong>index.html</strong>: Die Haupt-HTML-Datei der Website.</li>
        <li><strong>styles.css</strong>: Die CSS-Datei für das Styling der Website.</li>
        <li><strong>Dockerfile</strong>: Definition, wie der Docker Container aufgebaut wird.</li>
        <li><strong>docker-compose.yml</strong>: Docker-Compose-Datei für die Containerkonfiguration (optional).</li>
    </ul>

    <h2>Öffnen des Projekts im Dev Container</h2>
    <ol>
        <li>Stelle sicher, dass Docker auf deinem System installiert ist.</li>
        <li>Klonen dieses Repository:</li>
    </ol>
    <pre><code>git clone https://github.com/giorgio-23/projekt-container-169.git</code></pre>
    <ol start="3">
        <li>Öffne Visual Studio Code (VS Code).</li>
        <li>Installiere die Erweiterung "Remote - Containers" für VS Code, falls noch nicht installiert. Dies ermöglicht das Öffnen des Projekts in einem Dev Container.</li>
        <li>Öffne das Projekt in VS Code.</li>
        <li>Wenn du VS Code zum ersten Mal öffnest, erscheint unten links ein grüner Button mit der Aufschrift "Reopen in Container". Klicke darauf. Alternativ kannst du die Befehlspalette öffnen (Strg/Cmd + Shift + P) und "Dev-Containers: Reopen in Container" eingeben.</li>
        <li>VS Code baut den Dev Container basierend auf den Anweisungen im Dockerfile und der docker-compose.yml (falls vorhanden).</li>
        <li>Sobald der Container eingerichtet ist, öffnet sich das Projekt im Dev Container.</li>
    </ol>

    <h2>Starten der Anwendung im Dev Container</h2>
    <ol>
        <li>Im Dev Container sind die notwendigen Dienste bereits gestartet.</li>
        <li>Um die Website zu starten, gehe zu Terminal &gt; New Terminal oder öffne ein neues Terminal (Strg/Cmd + Shift + `).</li>
        <li>Führe den folgenden Befehl aus, um den Webserver zu starten:</li>
    </ol>
    <pre><code>docker-compose up</code></pre>
    <p>Wenn du kein <code>docker-compose.yml</code> verwendest, kannst du stattdessen den Befehl <code>docker run</code> verwenden.</p>

    <h2>Debugging (optional)</h2>
    <p>Wenn du Debugging in VS Code verwenden möchtest, kannst du die <code>launch.json</code>-Datei konfigurieren, um den Dev Container zu verwenden. Hier ist ein Beispiel:</p>
    <pre><code>{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Docker: Attach to Container",
      "type": "docker",
      "request": "attach",
      "containerName": "my-web-project_web_1",
      "skipRun": true,
      "port": 8080,
      "sourceMaps": true,
      "trace": "verbose"
    }
  ]
}
</code></pre>
    <p>Stelle sicher, dass <code>containerName</code> mit dem Namen deines Containers übereinstimmt.</p>

    <h2>Beenden des Dev Containers</h2>
    <p>Um den Dev Container zu beenden, kannst du VS Code einfach schließen oder das Terminal öffnen und <code>docker-compose down</code> ausführen.</p>

    <hr>

    <p>Mit diesen Schritten kannst du das Projekt in einem Docker Dev Container öffnen, entwickeln und debuggen.</p>
    <br>
