# Mer So Studio

The site for **Mer So Studio** — a design and product studio in San Francisco.

*We create things that make the everyday worth noticing.*

**Live:** [mersostudio.com](https://mersostudio.com)

## What it is

A single-page studio site: a statement, the work, and a way to get in touch. Text-led and quiet by
design — the studio's register is stated in its own canon, and the site is the first place it has to
hold. Hand-written HTML, CSS and a small amount of JavaScript, with no framework and no build step.

## Built with

| | |
|---|---|
| **Markup / styles** | Plain HTML and CSS, design tokens as custom properties on `:root` |
| **Scripts** | `main.js` — no dependencies |
| **Type** | Satoshi (Fontshare) and DM Mono (Google Fonts), with local fallbacks in `fonts/` |
| **Spacing** | A fixed scale (`--space-28`, `--space-40`, `--space-80`…) — never ad-hoc values |
| **Hosting** | Vercel — pushes to `main` deploy automatically |

## Layout

```
index.html      # the page
styles.css      # all styles
main.js
fonts/          # local fallbacks
favicon.svg
OG_image_mer-so.png   # 1200×630 social card
```

## Running it

Nothing to install, nothing to compile. Open `index.html`, or serve the folder:

```sh
python3 -m http.server 8000
```

## Credit

Design and build by [Jen Murse](https://jenmurse.com). Typefaces are licensed from their foundries
and are not covered by this repository.
