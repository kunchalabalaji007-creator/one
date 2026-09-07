<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Google Font & Icon Library -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400..700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: "Inter", system-ui, -apple-system, sans-serif;
      background: #f8faff;
      color: #0b1a33;
      line-height: 1.5;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- buttons & badges ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 10px 22px;
      border-radius: 40px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: 0.2s ease;
      font-size: 0.95rem;
      background: #eef2f6;
      color: #0b1a33;
    }
    .btn-primary {
      background: #1a2e4a;
      color: white;
      box-shadow: 0 8px 18px -6px rgba(10, 37, 64, 0.2);
    }
    .btn-primary:hover {
      background: #0f233b;
      transform: scale(0.97);
    }
    .btn-accent {
      background: #00c2d7;
      color: #0b1a33;
    }
    .btn-accent:hover {
      background: #00b0c4;
    }
    .btn-outline {
      background: transparent;
      border: 2px solid rgba(255, 255, 255, 0.3);
      color: white;
    }
    .btn-outline:hover {
      background: rgba(255, 255, 255, 0.08);
    }

    /* ----- header (glassmorphism) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.75);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.03);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      flex-wrap: wrap;
    }

    .brand {
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand span {
      background: #00c2d7;
      color: #0b1a33;
      padding: 0 6px;
      border-radius: 40px;
      font-size: 1rem;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      box-shadow: 0 2px 12px rgba(0, 0, 0, 0.02);
      border: 1px solid rgba(0, 0, 0, 0.04);
      flex: 1 1 280px;
      max-width: 400px;
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      width: 100%;
      font-size: 0.95rem;
      outline: none;
    }
    .search-wrap button {
      background: #1a2e4a;
      border: none;
      color: white;
      padding: 10px 18px;
      border-radius: 60px;
      cursor: pointer;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: 0.2s;
    }
    .search-wrap button:hover {
      background: #0f233b;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 8px;
      list-style: none;
    }
    .nav-links a {
      padding: 6px 14px;
      border-radius: 40px;
      font-weight: 500;
      color: #1f334f;
      transition: 0.15s;
      text-decoration: none;
      font-size: 0.95rem;
    }
    .nav-links a:hover {
      background: rgba(0, 194, 215, 0.08);
      color: #00aabb;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .header-actions .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.3rem;
      color: #1a2e4a;
      cursor: pointer;
      transition: 0.15s;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .header-actions .icon-btn:hover {
      background: rgba(0, 0, 0, 0.02);
    }
    .cart-badge {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #00c2d7;
      color: #0b1a33;
      font-weight: 700;
      font-size: 0.7rem;
      width: 20px;
      height: 20px;
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      cursor: pointer;
      color: #1a2e4a;
    }

    /* ----- hero (soft gradient) ----- */
    .hero {
      background: linear-gradient(145deg, #e9f2fa, #dce7f5);
      border-radius: 32px;
      margin: 28px auto 20px;
      padding: 52px 48px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: "✨";
      font-size: 12rem;
      position: absolute;
      right: -20px;
      bottom: -40px;
      opacity: 0.08;
      transform: rotate(8deg);
    }
    .hero-content {
      max-width: 600px;
      z-index: 2;
    }
    .hero-content h1 {
      font-size: 3rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.1;
      margin-bottom: 16px;
    }
    .hero-content p {
      font-size: 1.05rem;
      color: #2b405c;
      margin-bottom: 28px;
      max-width: 460px;
    }
    .hero-actions {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }
    .hero-illustration {
      font-size: 8rem;
      opacity: 0.3;
      z-index: 1;
      pointer-events: none;
    }

    /* ----- section titles ----- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      margin: 42px 0 18px;
    }
    .section-head h2 {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.01em;
    }
    .section-head .sub {
      color: #526b86;
      font-size: 0.95rem;
    }
    .muted {
      color: #5b6f89;
    }

    /* categories grid */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: white;
      border-radius: 24px;
      padding: 22px 12px;
      text-align: center;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
      border: 1px solid rgba(0, 0, 0, 0.02);
      transition: 0.2s;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: #00c2d7;
      box-shadow: 0 16px 32px -12px rgba(0, 194, 215, 0.2);
    }
    .cat-card i {
      font-size: 2.2rem;
      color: #1a2e4a;
      background: #eef3f9;
      padding: 12px;
      border-radius: 60px;
      margin-bottom: 8px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 1rem;
    }

    /* products grid */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 28px;
    }
    .product-card {
      background: white;
      border-radius: 28px;
      overflow: hidden;
      box-shadow: 0 4px 18px rgba(0, 0, 0, 0.02);
      transition: 0.25s;
      border: 1px solid rgba(0, 0, 0, 0.02);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 24px 48px -16px rgba(10, 37, 64, 0.12);
    }
    .product-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f2f6fc;
    }
    .product-body {
      padding: 16px 18px 12px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1.05rem;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 0.75rem;
      color: #5b6f89;
      background: #eef3f9;
      padding: 2px 12px;
      border-radius: 60px;
      display: inline-block;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 10px 0 4px;
    }
    .price {
      font-weight: 700;
      font-size: 1.25rem;
    }
    .old-price {
      color: #8b9bb3;
      text-decoration: line-through;
      font-size: 0.9rem;
    }
    .rating {
      color: #f5b342;
      font-size: 0.85rem;
    }
    .product-footer {
      padding: 8px 18px 18px;
      display: flex;
      gap: 10px;
    }
    .product-footer .add-btn {
      flex: 1;
      background: #1a2e4a;
      color: white;
      border: none;
      padding: 10px 0;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.15s;
    }
    .product-footer .add-btn:hover {
      background: #0f233b;
    }
    .wish-btn {
      background: transparent;
      border: 1px solid #e0e6ef;
      border-radius: 40px;
      width: 44px;
      font-size: 1rem;
      cursor: pointer;
      transition: 0.15s;
      color: #3d5575;
    }
    .wish-btn:hover {
      background: #fef0f0;
      border-color: #ff8a8a;
      color: #d43f3f;
    }

    /* flash sale */
    .flash-sale {
      background: #0b1a33;
      color: white;
      border-radius: 32px;
      padding: 28px 34px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 28px;
      margin: 36px 0;
    }
    .flash-sale .info {
      flex: 2;
      min-width: 200px;
    }
    .flash-sale .info h3 {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }
    .timer-box {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-unit {
      background: rgba(255, 255, 255, 0.06);
      padding: 8px 16px;
      border-radius: 20px;
      text-align: center;
      min-width: 70px;
    }
    .time-unit .num {
      font-size: 1.8rem;
      font-weight: 700;
      line-height: 1.2;
    }
    .time-unit .label {
      font-size: 0.7rem;
      opacity: 0.6;
      text-transform: uppercase;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .deal-price .current {
      font-size: 2rem;
      font-weight: 700;
    }
    .deal-price .old {
      text-decoration: line-through;
      opacity: 0.5;
      font-size: 1.1rem;
    }
    .deal-badge {
      background: #ff6b6b;
      padding: 4px 14px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 0.9rem;
    }
    .flash-sale .thumb {
      flex: 1;
      min-width: 140px;
      background: rgba(255, 255, 255, 0.02);
      border-radius: 28px;
      padding: 8px;
      text-align: center;
    }
    .flash-sale .thumb img {
      width: 100%;
      max-height: 180px;
      object-fit: contain;
      border-radius: 20px;
    }

    /* testimonials */
    .testimonial-grid {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 2px 20px;
    }
    .testimonial-card {
      background: white;
      border-radius: 28px;
      padding: 24px;
      min-width: 280px;
      border: 1px solid rgba(0, 0, 0, 0.02);
      box-shadow: 0 4px 12px rgba(0,0,0,0.01);
    }
    .testimonial-card .stars {
      color: #f5b342;
      letter-spacing: 2px;
    }
    .testimonial-card p {
      margin: 12px 0;
      color: #1f334f;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .avatar {
      width: 44px;
      height: 44px;
      background: #dce7f5;
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 600;
      color: #1a2e4a;
    }

    /* newsletter */
    .newsletter-box {
      background: white;
      border-radius: 40px;
      padding: 40px 32px;
      margin: 40px 0;
      text-align: center;
      border: 1px solid rgba(0, 0, 0, 0.02);
      box-shadow: 0 4px 24px rgba(0, 0, 0, 0.01);
    }
    .newsletter-box h3 {
      font-size: 1.6rem;
    }
    .newsletter-box form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
      max-width: 500px;
      margin: 18px auto 0;
    }
    .newsletter-box input {
      flex: 1;
      padding: 14px 20px;
      border-radius: 60px;
      border: 1px solid #dce3ed;
      background: #f8faff;
      font-size: 1rem;
      min-width: 200px;
      outline: none;
    }
    .newsletter-box input:focus {
      border-color: #00c2d7;
    }

    footer {
      margin-top: 24px;
      padding: 36px 0 20px;
      border-top: 1px solid rgba(0, 0, 0, 0.02);
      color: #4b617c;
      font-size: 0.9rem;
    }
    .footer-inner {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: space-between;
    }
    .footer-links {
      display: flex;
      gap: 40px;
    }
    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-links div strong {
      color: #0b1a33;
      font-weight: 600;
    }
    .footer-links a {
      text-decoration: none;
      color: inherit;
    }
    .footer-links a:hover {
      color: #0b1a33;
    }

    /* responsive */
    @media (max-width: 820px) {
      .mobile-toggle {
        display: block;
      }
      .nav-links {
        display: none;
      }
      .header-inner {
        flex-wrap: wrap;
      }
      .search-wrap {
        order: 3;
        flex: 1 1 100%;
        max-width: 100%;
      }
      .hero {
        padding: 36px 24px;
        flex-direction: column;
        text-align: center;
      }
      .hero-content h1 {
        font-size: 2.4rem;
      }
      .hero-actions {
        justify-content: center;
      }
      .flash-sale {
        flex-direction: column;
        text-align: center;
      }
      .timer-box {
        justify-content: center;
      }
      .deal-price {
        justify-content: center;
      }
    }
    @media (max-width: 480px) {
      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 14px;
      }
      .cat-grid {
        grid-template-columns: repeat(3, 1fr);
        gap: 10px;
      }
      .hero-content h1 {
        font-size: 2rem;
      }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <div class="brand">Nexus<span>Shop</span></div>
    </div>

    <ul class="nav-links" id="navLinks">
      <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
    </ul>

    <div class="search-wrap">
      <input type="text" id="searchInput" placeholder="Search for products..." />
      <button id="searchBtn"><i class="fas fa-search"></i> Search</button>
    </div>

    <div class="header-actions">
      <button class="icon-btn"><i class="far fa-heart"></i></button>
      <button class="icon-btn"><i class="far fa-user"></i></button>
      <div class="cart-badge">
        <button class="icon-btn"><i class="fas fa-shopping-cart"></i></button>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none; background:white; padding:12px 24px; border-top:1px solid #eef2f6;">
    <ul style="list-style:none; display:flex; flex-direction:column; gap:8px;">
      <li><a href="#">Home</a></li>
      <li><a href="#">Categories</a></li>
      <li><a href="#deals">Deals</a></li>
      <li><a href="#">Trending</a></li>
    </ul>
  </div>
</header>

<main class="container">
  <!-- Hero -->
  <section class="hero">
    <div class="hero-content">
      <h1>New arrivals · <br />winter edit</h1>
      <p>Discover tech, fashion & lifestyle — curated with love. Free shipping on orders over $50.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline" style="color:#0b1a33;border-color:#1a2e4a40;" id="dealsBtn">Explore deals</button>
      </div>
    </div>
    <div class="hero-illustration"><i class="fas fa-bag-shopping"></i></div>
  </section>

  <!-- Categories -->
  <div class="section-head">
    <h2>Shop by category</h2>
    <span class="sub">Find what you love</span>
  </div>
  <div class="cat-grid" id="categoriesGrid"></div>

  <!-- Products -->
  <div class="section-head">
    <h2>Trending now</h2>
    <span class="sub">Popular picks</span>
  </div>
  <div class="product-grid" id="productsGrid"></div>

  <!-- Flash sale -->
  <section id="deals">
    <div class="flash-sale">
      <div class="info">
        <h3>⚡ Flash sale</h3>
        <p style="opacity:0.7;">Limited time – grab it before it's gone.</p>
        <div class="timer-box" id="timerBox">
          <div class="time-unit"><div class="num" id="dealDays">0</div><div class="label">days</div></div>
          <div class="time-unit"><div class="num" id="dealHours">00</div><div class="label">hrs</div></div>
          <div class="time-unit"><div class="num" id="dealMinutes">00</div><div class="label">min</div></div>
          <div class="time-unit"><div class="num" id="dealSeconds">00</div><div class="label">sec</div></div>
        </div>
        <div class="deal-price">
          <span class="current">$999</span>
          <span class="old">$1,199</span>
          <span class="deal-badge">-17%</span>
        </div>
        <button class="btn btn-accent" style="margin-top:12px;" id="buyDealBtn"><i class="fas fa-bolt"></i> Add to cart</button>
      </div>
      <div class="thumb">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=300&q=80" alt="MacBook Air" />
        <p style="margin:4px 0 0; opacity:0.5; font-size:0.8rem;">MacBook Air M2</p>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <div class="section-head">
    <h2>What our customers say</h2>
    <span class="sub">Real reviews</span>
  </div>
  <div class="testimonial-grid" id="testimonialsGrid">
    <div class="testimonial-card">
      <div class="stars">★★★★★</div>
      <p>“Fast shipping, great quality. Exactly what I needed.”</p>
      <div class="author">
        <div class="avatar">AM</div>
        <div><strong>Ava M.</strong> <span style="color:#6b7f9a;font-size:0.8rem;">Verified</span></div>
      </div>
    </div>
    <div class="testimonial-card">
      <div class="stars">★★★★☆</div>
      <p>“Smooth checkout and the packaging was beautiful.”</p>
      <div class="author">
        <div class="avatar">ML</div>
        <div><strong>Michael L.</strong> <span style="color:#6b7f9a;font-size:0.8rem;">Frequent buyer</span></div>
      </div>
    </div>
    <div class="testimonial-card">
      <div class="stars">★★★★★</div>
      <p>“Loved the selection. Will definitely order again.”</p>
      <div class="author">
        <div class="avatar">SR</div>
        <div><strong>Sophia R.</strong> <span style="color:#6b7f9a;font-size:0.8rem;">New customer</span></div>
      </div>
    </div>
  </div>

  <!-- Newsletter -->
  <div class="newsletter-box">
    <h3>📬 Stay in the loop</h3>
    <p style="color:#4b617c;">Subscribe for exclusive offers and new arrivals.</p>
    <form id="newsletterForm">
      <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
      <button class="btn btn-primary" type="submit">Subscribe</button>
    </form>
    <div id="newsletterMsg" style="margin-top:10px; font-size:0.9rem; display:none;"></div>
  </div>
</main>

<footer>
  <div class="container footer-inner">
    <div>
      <div style="font-weight:700; font-size:1.3rem;">NexusShop</div>
      <p style="max-width:260px; margin-top:6px;">Modern e‑commerce demo · built with ♡</p>
      <div style="display:flex; gap:12px; margin-top:12px;">
        <a href="#" style="color:inherit;"><i class="fab fa-twitter"></i></a>
        <a href="#" style="color:inherit;"><i class="fab fa-instagram"></i></a>
        <a href="#" style="color:inherit;"><i class="fab fa-facebook"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Company</strong> <a href="#">About</a> <a href="#">Careers</a> <a href="#">Press</a></div>
      <div><strong>Support</strong> <a href="#">Help</a> <a href="#">Returns</a> <a href="#">Contact</a></div>
    </div>
  </div>
  <div style="text-align:center; margin-top:24px; opacity:0.5; font-size:0.8rem;">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<script>
  (function() {
    // ----- Data -----
    const categories = [
      { name: 'Smartphones', icon: 'fa-mobile-alt' },
      { name: 'Laptops', icon: 'fa-laptop' },
      { name: 'Clothing', icon: 'fa-tshirt' },
      { name: 'Gadgets', icon: 'fa-headphones' },
      { name: 'Footwear', icon: 'fa-shoe-prints' },
      { name: 'Accessories', icon: 'fa-watch' },
    ];

    const products = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'Laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: null, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, oldPrice: null, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' },
      { id: 6, title: 'Chanel No.5', price: 120, oldPrice: null, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, oldPrice: null, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' },
    ];

    // ----- DOM refs -----
    const catGrid = document.getElementById('categoriesGrid');
    const prodGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');

    let cart = 0;

    function renderCategories() {
      catGrid.innerHTML = categories.map(c => `
        <div class="cat-card" data-cat="${c.name}">
          <i class="fas ${c.icon}"></i>
          <h4>${c.name}</h4>
        </div>
      `).join('');
      // filter by category
      catGrid.querySelectorAll('.cat-card').forEach(el => {
        el.addEventListener('click', function() {
          const catName = this.dataset.cat;
          searchInput.value = catName;
          filterProducts(catName);
          document.querySelector('.section-head h2').scrollIntoView({ behavior: 'smooth', block: 'center' });
        });
      });
    }

    function renderProducts(list) {
      prodGrid.innerHTML = list.map(p => `
        <div class="product-card">
          <img src="${p.img}" alt="${p.title}" loading="lazy" />
          <div class="product-body">
            <h5>${p.title}</h5>
            <span class="category-tag">${p.category}</span>
            <div class="price-row">
              <span class="price">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
            </div>
            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="color:#5b6f89;font-size:0.75rem;">(${p.reviews})</span></div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
        </div>
      `).join('');

      prodGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function() {
          const id = Number(this.dataset.id);
          addToCart(id);
        });
      });
    }

    function addToCart(id) {
      const product = products.find(p => p.id === id);
      if (!product) return;
      cart++;
      cartCountEl.textContent = cart;
      // feedback
      const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '✓ Added';
        btn.style.background = '#00c2d7';
        btn.style.color = '#0b1a33';
        setTimeout(() => {
          btn.innerHTML = orig;
          btn.style.background = '';
          btn.style.color = '';
        }, 1200);
      }
    }

    function filterProducts(query) {
      const q = query.trim().
