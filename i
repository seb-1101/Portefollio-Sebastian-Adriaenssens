:root{
  --bg: #f9f9fb;
  --bg-alt: #f1f1f5;
  --card: #ffffff;
  --accent: #3b82f6;
  --title: #1e3a8a;
  --text: #222;
  --muted: #6b7280;
  --shadow: 0 8px 30px rgba(16,24,40,0.06);
  --radius: 12px;
}

*{box-sizing:border-box;margin:0;padding:0}
html,body{height:100%}
body{
  font-family: 'Inter', system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
  color:var(--text);
  background:var(--bg);
  line-height:1.6;
  -webkit-font-smoothing:antialiased;
  -moz-osx-font-smoothing:grayscale;
}

/* Header / Nav */
.site-header{position:sticky;top:0;z-index:1000;background:var(--card);border-bottom:1px solid #e6e7ee}
.nav{max-width:1100px;margin:0 auto;padding:0.9rem 1rem;display:flex;align-items:center;justify-content:space-between;gap:1rem}
.brand{display:flex;align-items:center;gap:.75rem}
.brand strong{font-weight:700;color:var(--title)}
.avatar{width:44px;height:44px;border-radius:10px;background:linear-gradient(135deg,var(--accent),#0f172a);color:white;display:flex;align-items:center;justify-content:center;font-weight:700;box-shadow:var(--shadow);font-size:14px}

/* Nav links */
.nav-links a{margin-left:0.6rem;color:var(--title);text-decoration:none;font-weight:600;opacity:.95;padding:.25rem .4rem;border-radius:6px;transition:all .22s}
.nav-links a:hover{color:var(--accent);transform:translateY(-1px)}
.nav-links a.active{background:rgba(59,130,246,0.08);color:var(--accent)}

/* Hero */
.hero{background:var(--bg-alt);padding:5.5rem 1rem 3rem}
.container{max-width:900px;margin:0 auto;padding:0 1rem}
.hero .lead{color:var(--muted);margin-top:.4rem}
.hero-ctas{margin-top:1rem;display:flex;gap:.6rem;justify-content:center;flex-wrap:wrap}
.btn{display:inline-flex;align-items:center;gap:.6rem;padding:.6rem .9rem;border-radius:10px;border:1px solid transparent;text-decoration:none;font-weight:600;font-size:.95rem;cursor:pointer;transition:all .18s}
.btn.primary{background:var(--accent);color:white;box-shadow:var(--shadow)}
.btn.primary:hover{filter:brightness(.98);transform:translateY(-2px)}
.btn.outline{background:transparent;color:var(--title);border-color:#e6e9f2}
.btn.outline:hover{background:#fff}

/* Content / cards */
.content{padding:2.2rem 0 4rem}
.card{background:var(--card);border-radius:var(--radius);padding:1.4rem 1.6rem;margin:1.3rem 0;box-shadow:var(--shadow);opacity:0;transform:translateY(26px);transition:all .6s cubic-bezier(.22,.9,.24,1)}
.card.show{opacity:1;transform:translateY(0)}
.card h2{color:var(--title);margin-bottom:.6rem}
.card h3{color:var(--accent);margin-top:.6rem;margin-bottom:.25rem;font-size:1rem}
.card p{color:var(--text);margin-top:.25rem}

/* Actions in conclusion */
.card-actions{margin-top:1rem;display:flex;gap:.6rem;flex-wrap:wrap}

/* Footer */
.site-footer{background:transparent;padding:2rem 0;border-top:1px solid #eee}
.site-footer small{color:var(--muted)}

/* Back to top */
.back-to-top{position:fixed;right:20px;bottom:20px;width:44px;height:44px;border-radius:50%;display:flex;align-items:center;justify-content:center;background:var(--accent);color:white;border:none;box-shadow:0 8px 26px rgba(30,58,138,0.18);cursor:pointer;font-weight:700;transform:translateY(0);transition:opacity .2s}

/* Responsive */
@media (min-width:900px){
  .nav-links a{margin-left:1rem}
  .hero{padding:6.5rem 1rem 4rem}
  .avatar{width:52px;height:52px;border-radius:12px;font-size:15px}
}
@media (max-width:720px){
  .nav{padding:.6rem 1rem}
  .nav-links{display:flex;gap:.5rem;overflow:auto}
  .hero h1{font-size:1.6rem}
  .card{padding:1rem}
}
