<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title> Renz S. Garcia — Version 2.0 of Me</title>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,700;0,900;1,400&family=Space+Mono:ital,wght@0,400;0,700;1,400&family=DM+Sans:wght@300;400;500&display=swap" rel="stylesheet"/>
<style>
  :root {
    --bg: #0a0a0f;
    --surface: #111118;
    --card: #16161f;
    --accent1: #00fff2;
    --accent2: #7c6af7;
    --accent3: #8c00ff;
    --text: #e8e8f0;
    --muted: #888899;
    --border: #2a2a3a;
  }

  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

  html { scroll-behavior: smooth; }

  body {
    background: var(--bg);
    color: var(--text);
    font-family: 'DM Sans', sans-serif;
    overflow-x: hidden;
  }

  /* ── NAV ── */
  nav {
    position: fixed; top: 0; left: 0; width: 100%; z-index: 999;
    background: rgba(10,10,15,0.85);
    backdrop-filter: blur(12px);
    border-bottom: 1px solid var(--border);
    padding: 0 2rem;
    display: flex; align-items: center; justify-content: space-between;
    height: 60px;
  }
  .nav-brand {
    font-family: 'Space Mono', monospace;
    font-size: 0.85rem;
    color: var(--accent1);
    letter-spacing: 0.12em;
  }
  .nav-links { display: flex; gap: 2rem; list-style: none; }
  .nav-links a {
    color: var(--muted); text-decoration: none;
    font-size: 0.8rem; letter-spacing: 0.08em;
    font-family: 'Space Mono', monospace;
    transition: color 0.2s;
  }
  .nav-links a:hover { color: var(--accent1); }

  /* ── HERO ── */
  #home {
    min-height: 100vh;
    display: flex; align-items: center; justify-content: center;
    position: relative; overflow: hidden;
    padding: 6rem 2rem 4rem;
  }
  .hero-grid {
    position: absolute; inset: 0;
    background-image:
      linear-gradient(var(--border) 1px, transparent 1px),
      linear-gradient(90deg, var(--border) 1px, transparent 1px);
    background-size: 60px 60px;
    opacity: 0.4;
  }
  .hero-glow {
    position: absolute; top: 20%; left: 50%; transform: translateX(-50%);
    width: 600px; height: 600px; border-radius: 50%;
    background: radial-gradient(circle, rgba(124,106,247,0.15) 0%, transparent 70%);
    pointer-events: none;
  }
  .hero-content { position: relative; text-align: center; max-width: 800px; }
  .hero-tag {
    display: inline-block;
    background: rgba(232,197,71,0.1);
    border: 1px solid rgba(232,197,71,0.3);
    color: var(--accent1);
    font-family: 'Space Mono', monospace;
    font-size: 0.72rem;
    letter-spacing: 0.18em;
    padding: 0.35rem 1rem;
    border-radius: 2px;
    margin-bottom: 2rem;
    animation: fadeUp 0.8s ease both;
  }
  .hero-title {
    font-family: 'Playfair Display', serif;
    font-size: clamp(3rem, 8vw, 7rem);
    font-weight: 900;
    line-height: 1;
    letter-spacing: -0.02em;
    animation: fadeUp 0.8s 0.15s ease both;
  }
  .hero-title em {
    font-style: italic;
    background: linear-gradient(135deg, var(--accent1), var(--accent2));
    -webkit-background-clip: text; -webkit-text-fill-color: transparent;
    background-clip: text;
  }
  .hero-sub {
    margin-top: 1.5rem;
    color: var(--muted);
    font-size: 1.05rem;
    line-height: 1.7;
    max-width: 520px; margin-left: auto; margin-right: auto;
    animation: fadeUp 0.8s 0.3s ease both;
  }
  .hero-cta {
    margin-top: 2.5rem;
    display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap;
    animation: fadeUp 0.8s 0.45s ease both;
  }
  .btn-primary {
    background: var(--accent1); color: #0a0a0f;
    padding: 0.75rem 1.8rem; border: none; border-radius: 3px;
    font-family: 'Space Mono', monospace; font-size: 0.78rem;
    letter-spacing: 0.1em; cursor: pointer; text-decoration: none;
    font-weight: 700;
    transition: opacity 0.2s, transform 0.2s;
  }
  .btn-primary:hover { opacity: 0.85; transform: translateY(-2px); }
  .btn-ghost {
    background: transparent; color: var(--text);
    padding: 0.75rem 1.8rem; border: 1px solid var(--border); border-radius: 3px;
    font-family: 'Space Mono', monospace; font-size: 0.78rem;
    letter-spacing: 0.1em; cursor: pointer; text-decoration: none;
    transition: border-color 0.2s, transform 0.2s;
  }
  .btn-ghost:hover { border-color: var(--accent2); transform: translateY(-2px); }

  /* ── SECTIONS ── */
  section { padding: 6rem 2rem; }
  .container { max-width: 1100px; margin: 0 auto; }
  .section-label {
    font-family: 'Space Mono', monospace;
    font-size: 0.72rem; letter-spacing: 0.2em;
    color: var(--accent2); margin-bottom: 0.6rem;
  }
  .section-title {
    font-family: 'Playfair Display', serif;
    font-size: clamp(2rem, 5vw, 3.5rem);
    font-weight: 900; line-height: 1.1;
    margin-bottom: 1.5rem;
  }
  .section-divider {
    width: 60px; height: 3px;
    background: linear-gradient(90deg, var(--accent1), var(--accent2));
    margin-bottom: 3rem; border-radius: 2px;
  }

  /* ── ME HOLISTICALLY ── */
  #holistic { background: var(--surface); }
  .self-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 1.5rem;
  }
  .self-card {
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: 8px;
    padding: 2rem;
    position: relative;
    overflow: hidden;
    transition: transform 0.3s, border-color 0.3s;
  }
  .self-card:hover { transform: translateY(-4px); border-color: var(--accent2); }
  .self-card::before {
    content: ''; position: absolute; top: 0; left: 0; right: 0; height: 3px;
  }
  .card-physical::before { background: var(--accent3); }
  .card-material::before { background: var(--accent1); }
  .card-spiritual::before { background: var(--accent2); }
  .card-sexual::before { background: #f07ab0; }
  .card-digital::before { background: #47e8c5; }
  .card-icon { font-size: 2.2rem; margin-bottom: 1rem; }
  .card-title {
    font-family: 'Playfair Display', serif;
    font-size: 1.2rem; font-weight: 700;
    margin-bottom: 0.75rem;
  }
  .card-text { color: var(--muted); line-height: 1.75; font-size: 0.93rem; }

  /* ── FUTURE SELF ── */
  #future { background: var(--bg); }
  .future-layout {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 4rem; align-items: start;
  }
  @media (max-width: 700px) { .future-layout { grid-template-columns: 1fr; } }
  .future-visual {
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: 12px;
    padding: 2.5rem;
    position: relative;
  }
  .future-badge {
    display: inline-flex; align-items: center; gap: 0.5rem;
    background: rgba(124,106,247,0.12);
    border: 1px solid rgba(124,106,247,0.3);
    color: var(--accent2);
    font-family: 'Space Mono', monospace; font-size: 0.72rem;
    padding: 0.3rem 0.8rem; border-radius: 20px;
    margin-bottom: 1.5rem;
  }
  .role-title {
    font-family: 'Playfair Display', serif;
    font-size: 2rem; font-weight: 900; margin-bottom: 1rem;
    line-height: 1.2;
  }
  .skill-list { list-style: none; margin-top: 1.5rem; }
  .skill-list li {
    display: flex; align-items: center; gap: 0.75rem;
    padding: 0.65rem 0; border-bottom: 1px solid var(--border);
    font-size: 0.92rem; color: var(--muted);
  }
  .skill-list li:last-child { border-bottom: none; }
  .skill-dot {
    width: 8px; height: 8px; border-radius: 50%;
    background: var(--accent2); flex-shrink: 0;
  }
  .ethics-grid {
    display: grid; grid-template-columns: 1fr 1fr; gap: 1rem;
    margin-top: 1.5rem;
  }
  .ethics-card {
    background: rgba(124,106,247,0.07);
    border: 1px solid rgba(124,106,247,0.15);
    border-radius: 6px; padding: 1rem;
    font-size: 0.85rem;
  }
  .ethics-card strong {
    display: block; margin-bottom: 0.3rem;
    color: var(--accent2); font-family: 'Space Mono', monospace;
    font-size: 0.72rem; letter-spacing: 0.1em;
  }

  /* ── VERSION 2.0 ── */
  #version2 { background: var(--surface); }
  .v2-hero {
    text-align: center; margin-bottom: 4rem;
  }
  .v2-number {
    font-family: 'Playfair Display', serif;
    font-size: clamp(4rem, 12vw, 10rem); font-weight: 900;
    background: linear-gradient(135deg, var(--accent1) 0%, var(--accent3) 50%, var(--accent2) 100%);
    -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;
    line-height: 1; letter-spacing: -0.03em;
  }
  .goals-grid {
    display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
    gap: 1.5rem; margin-top: 3rem;
  }
  .goal-card {
    background: var(--card); border: 1px solid var(--border);
    border-radius: 8px; padding: 1.8rem;
    transition: transform 0.3s; position: relative; overflow: hidden;
  }
  .goal-card:hover { transform: translateY(-4px); }
  .goal-type {
    font-family: 'Space Mono', monospace; font-size: 0.65rem;
    letter-spacing: 0.18em; color: var(--accent1);
    margin-bottom: 0.75rem;
  }
  .goal-text { color: var(--muted); line-height: 1.7; font-size: 0.92rem; }

  /* ── LETTER ── */
  #letter {
    background: var(--bg);
    display: flex; align-items: center; justify-content: center;
  }
  .letter-wrapper {
    max-width: 680px; width: 100%;
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: 12px;
    padding: 3rem;
    position: relative;
  }
  .letter-header {
    font-family: 'Playfair Display', serif;
    font-size: 1.8rem; font-style: italic;
    margin-bottom: 0.5rem;
  }
  .letter-date {
    font-family: 'Space Mono', monospace; font-size: 0.72rem;
    color: var(--muted); letter-spacing: 0.1em;
    margin-bottom: 2rem;
  }
  .letter-body {
    color: var(--muted); line-height: 1.9; font-size: 0.97rem;
  }
  .letter-body p { margin-bottom: 1.25rem; }
  .letter-sig {
    margin-top: 2rem;
    font-family: 'Playfair Display', serif;
    font-style: italic; font-size: 1.2rem;
  }
  .letter-corner {
    position: absolute; top: 1.5rem; right: 2rem;
    font-size: 2.5rem; opacity: 0.08;
    font-family: 'Playfair Display', serif; font-weight: 900;
  }

  /* ── FOOTER ── */
  footer {
    border-top: 1px solid var(--border);
    padding: 2rem; text-align: center;
    color: var(--muted);
    font-family: 'Space Mono', monospace; font-size: 0.72rem;
    letter-spacing: 0.1em;
  }

  /* ── ANIMATIONS ── */
  @keyframes fadeUp {
    from { opacity: 0; transform: translateY(24px); }
    to { opacity: 1; transform: translateY(0); }
  }
  .reveal {
    opacity: 0; transform: translateY(30px);
    transition: opacity 0.7s ease, transform 0.7s ease;
  }
  .reveal.visible { opacity: 1; transform: none; }

  /* Timeline for action plan */
  .timeline { margin-top: 2rem; }
  .timeline-item {
    display: flex; gap: 1.5rem; padding-bottom: 2rem;
    position: relative;
  }
  .timeline-item:last-child { padding-bottom: 0; }
  .timeline-item::before {
    content: ''; position: absolute;
    left: 15px; top: 30px; bottom: 0; width: 1px;
    background: var(--border);
  }
  .timeline-item:last-child::before { display: none; }
  .timeline-dot {
    width: 30px; height: 30px; border-radius: 50%; flex-shrink: 0;
    display: flex; align-items: center; justify-content: center;
    background: var(--accent2); color: var(--bg);
    font-family: 'Space Mono', monospace; font-size: 0.75rem; font-weight: 700;
    z-index: 1;
  }
  .timeline-content { flex: 1; }
  .timeline-label {
    font-family: 'Space Mono', monospace; font-size: 0.7rem;
    letter-spacing: 0.12em; color: var(--accent2); margin-bottom: 0.3rem;
  }
  .timeline-text { color: var(--muted); line-height: 1.7; font-size: 0.92rem; }
</style>
</head>
<body>

<!-- NAVIGATION -->
<nav>
  <span class="nav-brand">// VERSION 2.0</span>
  <ul class="nav-links">
    <li><a href="#home">Home</a></li>
    <li><a href="#holistic">Me Holistically</a></li>
    <li><a href="#future">Future Self</a></li>
    <li><a href="#version2">Version 2.0 Plan</a></li>
    <li><a href="#letter">Letter</a></li>
  </ul>
</nav>

<!-- HERO -->
<section id="home">
  <div class="hero-grid"></div>
  <div class="hero-glow"></div>
  <div class="hero-content">
    <span class="hero-tag">UTS FINAL REQUIREMENT · UNDERSTANDING THE SELF</span>
    <h1 class="hero-title">Ang Buhay ni<br/><em>Eba / Adan</em></h1>
    <p class="hero-sub">A holistic, reflective, and forward-looking portrait of who I am — physically, materially, spiritually, sexually, and digitally — as I evolve into my best self as a future IT professional.</p>
    <div class="hero-cta">
      <a href="#holistic" class="btn-primary">Explore My Story</a>
      <a href="#version2" class="btn-ghost">See Version 2.0 Plan</a>
    </div>
  </div>
</section>

<!-- ME HOLISTICALLY -->
<section id="holistic">
  <div class="container">
    <p class="section-label reveal">01 — WHO I AM</p>
    <h2 class="section-title reveal">Me, <em style="font-family:'Playfair Display',serif;font-style:italic;">Holistically</em></h2>
    <div class="section-divider reveal"></div>
    <div class="self-grid">
      <div class="self-card card-physical reveal">
        <div class="card-icon">🧍</div>
        <h3 class="card-title">Physical Self</h3>
        <p class="card-text">My body is the vessel through which I experience the world. I am learning to embrace my physical form with compassion, understanding that body image is shaped not just by mirrors, but by culture, comparison, and inner dialogue. Building self-esteem starts with accepting — and then celebrating — what I see when I look inward, not outward.</p>
      </div>
      <div class="self-card card-material reveal">
        <div class="card-icon">🏠</div>
        <h3 class="card-title">Material / Economic Self</h3>
        <p class="card-text">What I own, how I live, and what I aspire to possess all shape my sense of security and identity. I come from a place where simplicity is a strength, not a limitation. My lifestyle is grounded in resourcefulness and gratitude — I find meaning not in accumulation, but in purpose-driven ownership and financial intentionality.</p>
      </div>
      <div class="self-card card-spiritual reveal">
        <div class="card-icon">🌿</div>
        <h3 class="card-title">Spiritual Self</h3>
        <p class="card-text">My spiritual self is rooted in faith, meaning, and values. I believe in something larger than myself — a guiding force that calls me toward kindness, integrity, and service. My values include honesty, empathy, and resilience. These beliefs are not just philosophical — they are the compass I use when navigating difficult choices.</p>
      </div>
      <div class="self-card card-sexual reveal">
        <div class="card-icon">💛</div>
        <h3 class="card-title">Sexual Self & Love Language</h3>
        <p class="card-text">My love language reflects how I give and receive affection. I express care through acts of service and quality time — I show up, I listen, and I help. Understanding my love language has helped me cultivate healthier, more authentic relationships. I am still discovering who I am in love — and that journey is beautiful.</p>
      </div>
      <div class="self-card card-digital reveal">
        <div class="card-icon">💻</div>
        <h3 class="card-title">Digital Self</h3>
        <p class="card-text">Online, I present a curated, aspirational version of myself — thoughtful posts, shared achievements, a polished profile. Offline, I am quieter, more uncertain, more raw. The gap between my digital and physical self is something I actively work to close. My digital identity should reflect — not mask — who I truly am.</p>
      </div>
    </div>
  </div>
</section>

<!-- FUTURE SELF -->
<section id="future">
  <div class="container">
    <p class="section-label reveal">02 — WHERE I'M GOING</p>
    <h2 class="section-title reveal">Future Self as an<br/><em style="font-family:'Playfair Display',serif;font-style:italic;">IT Professional</em></h2>
    <div class="section-divider reveal"></div>
    <div class="future-layout">
      <div class="future-visual reveal">
        <div class="future-badge">⚡ Dream Career</div>
        <h3 class="role-title">Full-Stack Developer<br/>&amp; Systems Architect</h3>
        <p style="color:var(--muted);font-size:0.92rem;line-height:1.7;">I envision myself building digital systems that solve real human problems — from local community tools to enterprise-level platforms. Technology, in my hands, will be a force for equity and progress.</p>
        <ul class="skill-list">
          <li><span class="skill-dot"></span>Web Development (HTML, CSS, JS, React)</li>
          <li><span class="skill-dot"></span>Back-end &amp; Database Management</li>
          <li><span class="skill-dot"></span>Cybersecurity Fundamentals</li>
          <li><span class="skill-dot"></span>Cloud Computing &amp; DevOps</li>
          <li><span class="skill-dot"></span>UI/UX Design Principles</li>
          <li><span class="skill-dot"></span>AI &amp; Machine Learning Basics</li>
        </ul>
      </div>
      <div class="reveal">
        <h3 style="font-family:'Playfair Display',serif;font-size:1.5rem;margin-bottom:1rem;">Technology &amp; My Identity</h3>
        <p style="color:var(--muted);line-height:1.75;font-size:0.93rem;margin-bottom:1.5rem;">Technology is not separate from who I am — it <em>is</em> part of who I am becoming. Every system I learn to build, every bug I solve, and every line of code I write shapes my problem-solving mind and my sense of agency in a digital world.</p>
        <div class="ethics-grid">
          <div class="ethics-card">
            <strong>Privacy</strong>
            Respecting user data as a fundamental human right, not a commodity.
          </div>
          <div class="ethics-card">
            <strong>Inclusion</strong>
            Building accessible technology for all people, not just the privileged.
          </div>
          <div class="ethics-card">
            <strong>Accountability</strong>
            Owning the impact of my code on communities and environments.
          </div>
          <div class="ethics-card">
            <strong>Integrity</strong>
            Refusing to build or enable systems that harm, deceive, or exploit.
          </div>
        </div>
        <p style="color:var(--muted);line-height:1.75;font-size:0.93rem;margin-top:1.5rem;">As I grow in the IT field, I carry these principles not as rules imposed on me, but as values I have chosen — because the technology we build reflects the humanity we hold.</p>
      </div>
    </div>
  </div>
</section>

<!-- VERSION 2.0 PLAN -->
<section id="version2">
  <div class="container">
    <p class="section-label reveal">03 — THE UPGRADE</p>
    <div class="v2-hero reveal">
      <div class="v2-number">2.0</div>
      <h2 class="section-title" style="margin-top:-0.5rem;">"Version 2.0 of Me"</h2>
      <p style="color:var(--muted);max-width:520px;margin:0 auto;line-height:1.7;">Not a reinvention — an upgrade. Same soul, sharper mind, stronger habits, clearer direction. Here is my plan to grow into the best version of myself.</p>
    </div>

    <div class="goals-grid">
      <div class="goal-card reveal">
        <p class="goal-type">🎯 SHORT-TERM GOALS</p>
        <p class="goal-text">Complete my IT degree with academic excellence. Finish at least two online certifications in web development. Build a personal portfolio of three real projects. Improve my daily study habits and reduce procrastination through time-blocking.</p>
      </div>
      <div class="goal-card reveal">
        <p class="goal-type">🚀 LONG-TERM GOALS</p>
        <p class="goal-text">Land a junior developer role within a year of graduation. Contribute to an open-source project that benefits my community. Eventually launch a tech startup or social enterprise. Achieve financial stability to support my family and invest in continuous learning.</p>
      </div>
      <div class="goal-card reveal">
        <p class="goal-type">🔧 AREAS FOR IMPROVEMENT</p>
        <p class="goal-text">I need to work on consistency — starting projects with enthusiasm but finishing them with discipline. I will also improve my communication skills, especially in professional and collaborative settings. My digital wellness also needs attention: intentional screen time, not mindless scrolling.</p>
      </div>
    </div>

    <div style="margin-top:4rem;" class="reveal">
      <h3 style="font-family:'Playfair Display',serif;font-size:1.6rem;margin-bottom:0.5rem;">Concrete Action Plan</h3>
      <p style="color:var(--muted);font-size:0.9rem;margin-bottom:2rem;">Step-by-step, semester-by-semester upgrades.</p>
      <div class="timeline">
        <div class="timeline-item">
          <div class="timeline-dot">1</div>
          <div class="timeline-content">
            <p class="timeline-label">NOW — THIS SEMESTER</p>
            <p class="timeline-text">Complete all academic requirements with focus and intention. Start one personal coding project. Reduce social media to 30 minutes daily and replace that time with reading or practicing code.</p>
          </div>
        </div>
        <div class="timeline-item">
          <div class="timeline-dot">2</div>
          <div class="timeline-content">
            <p class="timeline-label">NEXT 6 MONTHS</p>
            <p class="timeline-text">Enroll in a free online course (freeCodeCamp or The Odin Project). Build my first portfolio site. Apply for an internship or shadowing opportunity. Join a local tech community or student org.</p>
          </div>
        </div>
        <div class="timeline-item">
          <div class="timeline-dot">3</div>
          <div class="timeline-content">
            <p class="timeline-label">WITHIN 1 YEAR</p>
            <p class="timeline-text">Complete internship and document learnings. Earn at least one industry certification. Publish a project on GitHub. Reflect on this "Version 2.0 Plan" and write a Version 3.0.</p>
          </div>
        </div>
        <div class="timeline-item">
          <div class="timeline-dot">4</div>
          <div class="timeline-content">
            <p class="timeline-label">GRADUATION & BEYOND</p>
            <p class="timeline-text">Enter the workforce as a professional developer. Mentor younger IT students. Continue learning — AI, cloud, security — the field never stops and neither will I.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- LETTER TO SELF -->
<section id="letter">
  <div class="container">
    <p class="section-label reveal" style="text-align:center;">04 — A NOTE TO MYSELF</p>
    <h2 class="section-title reveal" style="text-align:center;margin-bottom:3rem;">Letter to My <em style="font-family:'Playfair Display',serif;font-style:italic;">Present Self</em></h2>
    <div class="letter-wrapper reveal">
      <div class="letter-corner">✉</div>
      <h3 class="letter-header">Dear Me,</h3>
      <p class="letter-date">// WRITTEN WITH HONESTY · SENT WITH HOPE</p>
      <div class="letter-body">
        <p>I know you are tired sometimes. Tired of comparing yourself, tired of not feeling enough, tired of wondering if you made the right choices. I want you to know: it's okay. All of that is part of the process — not a sign that you are failing, but proof that you are growing.</p>
        <p>You chose IT not because it was easy, but because you saw in technology the power to build something meaningful. Hold onto that. On the days when the code won't run and the deadlines feel impossible — remember why you started.</p>
        <p>You are more than your GWA. You are more than your follower count. You are more than what others think of you. You are the sum of your curiosity, your kindness, your resilience — and all of that is already remarkable.</p>
        <p>Version 2.0 isn't a perfect you. It's a more intentional you. A you who shows up even when it's hard. A you who builds things that matter, who treats people with dignity, and who keeps learning — not to impress anyone, but because growth is its own reward.</p>
        <p>The future IT professional you're becoming needs you — the present you — to keep going. So please: rest when you must, push forward when you can, and always, always be kind to yourself.</p>
        <p>The upgrade has already begun.</p>
      </div>
      <div class="letter-sig">With love and belief, <br/>Future You 🌿</div>
    </div>
  </div>
</section>

<footer>
  &copy; 2025 · Renz S. Garcia · VERSION 2.0 OF ME · UTS FINAL REQUIREMENT
</footer>

<script>
  // Scroll reveal
  const reveals = document.querySelectorAll('.reveal');
  const observer = new IntersectionObserver((entries) => {
    entries.forEach((e, i) => {
      if (e.isIntersecting) {
        setTimeout(() => e.target.classList.add('visible'), i * 80);
      }
    });
  }, { threshold: 0.12 });
  reveals.forEach(el => observer.observe(el));

  // Smooth nav link active state
  const sections = document.querySelectorAll('section[id]');
  const navLinks = document.querySelectorAll('.nav-links a');
  window.addEventListener('scroll', () => {
    let current = '';
    sections.forEach(s => {
      if (window.scrollY >= s.offsetTop - 100) current = s.id;
    });
    navLinks.forEach(a => {
      a.style.color = a.getAttribute('href') === '#' + current ? '#e8c547' : '';
    });
  });
</script>
</body>
</html>
