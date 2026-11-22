# Daily Wisdom

Satu konsep penting setiap hari — game theory, psikologi, finance, konglomerasi, dan mental models — dalam bentuk slide PDF penuh warna yang nyaman dibaca di iPad, HP, maupun komputer.

## Struktur

```
daily-wisdom/
├── topics/
│   ├── topics.md                 # antrian 40 topik terkurasi
│   └── 001-dunning-kruger/
│       └── slides.html           # sumber slide (HTML + SVG)
├── build/
│   └── build.sh                  # render HTML -> PDF via headless Chrome
└── output/
    └── 001-Dunning-Kruger-Effect.pdf
```

## Cara membuat edisi baru

1. Buat folder topik baru, misal `topics/002-confirmation-bias/`
2. Salin `slides.html` edisi sebelumnya sebagai template (10 slide, ukuran 1280×720 per halaman)
3. Edit kontennya, lalu render:

```bash
bash build/build.sh topics/002-confirmation-bias/slides.html output/002-Confirmation-Bias.pdf
```

## Kenapa format ini aman di semua perangkat

- Semua chart/diagram adalah **SVG inline** → dirender sebagai vektor di PDF, tajam di zoom berapa pun
- Font **di-embed** otomatis oleh Chrome saat print ke PDF — tampilan identik di iPad/HP/PC
- Ukuran halaman 16:9 (960×540 pt) — pas di layar iPad & laptop, mudah di-zoom di HP
- Tanpa JavaScript, tanpa gambar eksternal, tanpa font web — tidak ada yang bisa "aneh" saat dibuka offline
