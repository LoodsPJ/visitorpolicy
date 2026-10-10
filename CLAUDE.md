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

## Claude-mods en ontwerpregels (besluit gebruiker 2026-10-10)
- In deze repo staan de mods uit `LoodsPJ/claude-mods` aan (via `.claude/settings.json`): werkregels,
  inhoudsregels, cloudflare-valkuilen, kwaliteitspoort, geheimenfilter, besluiten, werkstromen, nieuw-project en
  onderweg. Ze bewaken de regels in dit bestand. Laden ze in een sessie niet, dan gelden de regels nog steeds.
- **UI, UX en design:** neem de skills `design-taste-frontend` (bij een bestaand scherm ook
  `redesign-existing-projects`) en `web-design-guidelines` mee bij het máken, vanaf de eerste regel, samen met de
  huisstijl van dit project. Denk aan de telefoon: duimbereik, leesbaar zonder inzoomen, aanraakdoelen van minstens
  44 px, contrast AA in licht en donker. Geen aparte toets na elke kleine aanpassing; de volledige toets in de
  browser gebeurt op verzoek (`/design-check`).
- **Committen** pas als typecheck en tests (of `./check.sh`) na de laatste wijziging groen zijn.
