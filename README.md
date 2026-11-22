# GroceryIQ — privacy-safe demo

Privacy-safe grocery store demo with simulated aisles, stock bands, and a local basket.

**Live demo:** https://groceryiq.pages.dev/

Part of the OmegaAPI set of small, free, demo-ready builds.

Built by **Krishna Prakash Ojha (Leon)** at **OmegaAPI** · [omegaapi.com](https://omegaapi.com)

> Simulated data only. No real customer, patient, student, tenant, or inventory records are used.

---

## What it shows

- 9 sample items — Made-up catalog
- No checkout — No card or payment code
- Local basket — Saved in this browser only
- Free to host — Cloudflare free tier
- A three-step workflow and four quick actions
- A local activity log that stays in your browser

## Safety and privacy

Prices and products are samples. There is no checkout, payment, or customer record.

There is no sign-up, no database, no payment code, no API key, and no external data service. The signed three-day preview cookie is set by a Pages Function and contains only an expiry timestamp.

## Run locally

```bash
npm install
npm test
npm run dev
```

Open `http://localhost:8788`.

## Deploy

```bash
wrangler pages secret put DEMO_TRIAL_SECRET --project-name groceryiq
npm run deploy
```

Set `DEMO_TRIAL_SECRET` to a long random value. Never commit it.

## Support

Goal: **10 monthly sponsors** · tiers from **$5 to $250**. [View tiers](https://github.com/sponsors/omegaapi-india?interval=monthly).

[♥ Sponsor OmegaAPI](https://github.com/sponsors/omegaapi-india)

Contact: [info@omegaapi.com](mailto:info@omegaapi.com) · [Telegram](https://t.me/Omegaapiofficial)

## License

MIT — Copyright © 2026 Krishna Prakash Ojha (Leon), OmegaAPI.
