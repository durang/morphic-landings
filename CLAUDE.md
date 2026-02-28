# CLAUDE.md — Morphic Landings

> **⚠️ READ THIS BEFORE TOUCHING ANY CODE.**

## Identity
- **Project:** Morphic Landings — Static landing pages for Morphic Labs marketing
- **URL:** https://morphic-landings.vercel.app
- **Repo:** durang/morphic-landings (PUBLIC)
- **Status:** Marketing pages. Changes are visible immediately.

## 🚨 CONFUSION PREVENTION

### This project has NO database.
- No Supabase, no Neon, no Postgres.
- If you need a DB connection, you are in the WRONG repo.

### This is NOT the main Morphic Labs app.
| Project | What it is | DB |
|---------|-----------|----|
| **Morphic Landings (this)** | Static marketing pages | None |
| Morphic Labs | AI platform with mini-apps | Neon Postgres |
| Clawdex | WhatsApp chatbot SaaS | Supabase ffvkicucqjvsodsgmfmw |
| SD Command | Agent dashboard | Supabase hclkqjyzhvasucziyayl |
| PDF Spy | Document intelligence | None |

## Stack
- Static HTML + CSS + JavaScript
- Vercel (auto-deploy on push to main)
- Brand guidelines: see BRAND_MORPHIC.md
- Landing format: see LANDING_REQUEST_FORMAT.md

## Structure
```
index.html          → Main entry / redirect
landings/           → Individual landing pages
public/             → Static assets (images, fonts)
scripts/            → Build/deploy scripts
vercel.json         → Vercel routing config
```

## Rules
1. Follow BRAND_MORPHIC.md for colors, fonts, tone
2. Follow LANDING_REQUEST_FORMAT.md for new landings
3. No database connections — this is static only
4. Push to main = auto-deploy to Vercel
5. Check PERMISSIONS.md before adding external resources
