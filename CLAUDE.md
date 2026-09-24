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
