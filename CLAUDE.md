# visitorpolicy — werkafspraken

## Werken vanuit de cloud — geen lokale PC (sinds 2026-09-24)
- Er wordt niet lokaal gewerkt. Alles gebeurt in claude.ai/code (browser, app,
  telefoon); elke sessie begint met een verse kopie van GitHub.
- **Code staat alleen op GitHub.** Na elke wijziging: commit en push — wat niet
  gepusht is, bestaat na de sessie niet meer.
- **Documenten** (exports, rapporten, bijlagen, aangeleverde bestanden) staan in
  Google Drive onder `Programma's/visitorpolicy/`. Zet daar nooit code, `node_modules`,
  lokale databases of `.env`/`.dev.vars` neer.
- **Geheimen nooit in Drive of git**: als secret bij de hostingdienst (bijv.
  `wrangler secret put`) of in de omgevingsinstellingen van claude.ai/code.
- **Nieuw project** = een private GitHub-repo én een map `Programma's/<naam>` in
  Drive, allebei meteen bij de start, plus een SessionStart-hook zoals hier.

## Design- en UI-skills
In `.claude/skills/` staan gedeelde skills (herkomst: `.claude/skills/SOURCES.md`):
- **design-taste-frontend** — landingspagina's, marketingsites, portfolio's en redesigns. Niet voor
  dashboards en app-schermen: daar geldt `webapp-house-style` (als die beschikbaar is).
- **web-design-guidelines** — UI-review op toegankelijkheid en UX. Draai hem na elke grotere
  frontend-wijziging en bij elke vraag om een review of audit.
- **playwright-cli** — gerenderde uitkomst controleren: dev-server starten, pagina openen,
  snapshot/screenshot, console-fouten lezen. Verifieer frontend-werk hiermee voordat je het af meldt.
  `.claude/hooks/playwright-cli.sh` installeert hem in elke cloudsessie.

Werkwijze:
- Pas de passende skill toe bij frontend-werk. Vraagt de opdracht er niet om maar helpt een skill
  duidelijk, stel hem dan in één zin voor.
- Wat in deze CLAUDE.md staat (huisstijl, kleuren, fonts, AVG: geen externe CDN's, Google Fonts of
  tracking) gaat vóór de suggesties van de skills. Placeholder-afbeeldingen of icon-CDN's uit de
  skills alleen tijdens ontwerp, nooit in productie.
- Referentie: github.com/VoltAgent/awesome-design-md (DESIGN.md-bestanden van bekende merken).
  Alleen als voorbeeld voor structuur en tokens; nooit de merkuitstraling van een derde kopiëren.
  Bij een nieuwe site: stel voor een eigen `DESIGN.md` in de repo-root te maken.
