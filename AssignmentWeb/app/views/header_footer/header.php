<?php 
require_once __DIR__ . '/../../helper/session.php';
$session = Session::getInstance();
?>
<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>VNB Sports - Hệ thống shop cầu lông hàng đầu Việt Nam</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <link rel="stylesheet" href="<?php echo URL::to('assets/css/style.css'); ?>">
  <link rel="stylesheet" href="<?php echo URL::to('assets/css/stylenews.css'); ?>">
  <style>
    :root {
      --primary-color: #0056b3;
      --secondary-color: #ff6600;
      --light-color: #f8f9fa;
      --dark-color: #343a40;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      line-height: 1.6;
      color: #333;
    }

    /* Top bar */
    .top-bar {
      background-color: var(--light-color);
      padding: 10px 0;
    }

    .hotline {
      color: var(--dark-color);
      font-weight: 500;
    }

    .store-system {
      color: var(--dark-color);
      font-weight: 500;
      text-decoration: none;
    }

    .store-system:hover {
      color: var(--primary-color);
    }

    .auth-buttons .btn {
      margin-left: 5px;
    }

    /* Footer styles */
    .footer {
      background-color: var(--dark-color);
      color: white;
      padding: 60px 0 30px;
    }

    .social-icons a {
      display: inline-block;
      width: 40px;
      height: 40px;
      background-color: rgba(255, 255, 255, 0.1);
      border-radius: 50%;
      text-align: center;
      line-height: 40px;
      color: white;
      margin-right: 10px;
      transition: all 0.3s;
    }

    .social-icons a:hover {
      background-color: var(--secondary-color);
      transform: translateY(-3px);
    }

    .copyright {
      border-top: 1px solid rgba(255, 255, 255, 0.1);
      padding-top: 20px;
      margin-top: 40px;
      font-size: 14px;
      color: #aaa;
    }

    /* Desktop Navigation */
    .main-nav .nav-link {
      color: var(--dark-color);
      font-weight: 500;
      padding: 0.5rem 1rem;
      transition: color 0.3s ease;
    }

    .main-nav .nav-link:hover,
    .main-nav .nav-link.active {
      color: var(--primary-color);
    }

    /* Mobile navigation */
    .navbar-toggler {
      border: none;
      padding: 0;
    }

    .mobile-nav {
      position: fixed;
      top: 0;
      left: -100%;
      width: 80%;
      height: 100%;
      background-color: white;
      z-index: 1000;
      transition: all 0.3s ease-in-out;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      overflow-y: auto;
    }

    .mobile-nav.active {
      left: 0;
    }

    .mobile-nav-overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      z-index: 999;
      display: none;
    }

    .mobile-nav-overlay.active {
      display: block;
    }

    .mobile-nav-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px;
      border-bottom: 1px solid #eee;
    }

    .mobile-nav-close {
      font-size: 1.5rem;
      cursor: pointer;
    }

    .mobile-nav-body {
      padding: 15px;
    }

    .mobile-nav-body .nav-link {
      display: block;
      padding: 10px 0 !important;
      border-bottom: 1px solid #eee;
    }

    /* Floating Cart Button */
    .floating-cart {
      position: fixed;
      bottom: 20px;
      left: 20px;
      z-index: 1000;
      background-color: #ff6600;
      color: white;
      width: 60px;
      height: 60px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
      transition: all 0.3s ease;
    }

    .floating-cart:hover {
      transform: translateY(-3px);
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
      background-color: #ff5500;
      color: white;
    }

    .floating-cart i {
      font-size: 24px;
    }

    .floating-cart .cart-count {
      position: absolute;
      top: -5px;
      right: -5px;
      background-color: #dc3545;
      color: white;
      border-radius: 50%;
      padding: 0.25rem 0.5rem;
      font-size: 0.75rem;
      font-weight: bold;
    }

    @media (max-width: 768px) {
      .floating-cart {
        bottom: 15px;
        left: 15px;
        width: 50px;
        height: 50px;
      }
      
      .floating-cart i {
        font-size: 20px;
      }
    }

    /* Responsive Breakpoints */
    /* Desktop view */
    @media (min-width: 992px) {
      .desktop-menu {
        display: block;
      }

      .mobile-menu,
      .navbar-toggler,
      .mobile-nav,
      .mobile-nav-overlay {
        display: none !important;
      }
    }

    /* Tablet view */
    @media (min-width: 768px) and (max-width: 991px) {
      .desktop-menu {
        display: block;
      }

      .mobile-menu,
      .navbar-toggler,
      .mobile-nav,
      .mobile-nav-overlay {
        display: none !important;
      }

      .top-bar .col-lg-2 {
        width: 25%;
      }

      .top-bar .col-lg-4 {
        width: 35%;
      }

      .top-bar .col-lg-3:first-of-type {
        width: 40%;
      }

      .main-nav .nav-link {
        padding: 0.5rem 0.75rem;
        font-size: 0.9rem;
      }

      /* Footer tablet adjustments */
      .footer h5 {
        font-size: 1.1rem;
      }

      .footer p,
      .footer li {
        font-size: 0.9rem;
      }
    }

    /* Mobile view */
    @media (max-width: 767px) {
      .desktop-menu {
        display: none;
      }

      .mobile-menu {
        display: block;
      }

      .top-bar .container>.row {
        display: flex;
        flex-wrap: wrap;
      }

      .top-bar .col-lg-2,
      .top-bar .col-lg-4,
      .top-bar .col-lg-3 {
        width: 50%;
        margin-bottom: 10px;
      }

      .top-bar .auth-buttons {
        width: 100%;
        margin-top: 10px;
      }
    }

    /* Small mobile view */
    @media (max-width: 575px) {

      .top-bar .col-lg-2,
      .top-bar .col-lg-4,
      .top-bar .col-lg-3 {
        width: 100%;
        text-align: center;
      }
    }
  </style>
</head>

<body>
  <!-- Floating Cart Button -->
  <a href="<?php echo URL::to('public/ProductSite/productcart'); ?>" class="floating-cart">
    <i class="fas fa-shopping-cart"></i>
    <span class="cart-count">0</span>
  </a>

  <div class="top-bar">
    <div class="container py-2">
      <div class="row align-items-center">
        <div class="col-lg-2 col-md-3 col-6">
          <a href="" class="logo navbar-brand">
            <?php foreach($formalInfo as $info): ?>
              <?php if($info['name'] == 'Logo'): ?>
                <img src="<?php echo $info['description']; ?>" width="50" height="50" alt="Logo" class="logo me-1 d-inline-block align-text-top">
              <?php endif; ?>
            <?php endforeach; ?>
          </a>
        </div>
        <div class="col-lg-4 col-md-5 col-6">
          <div class="hotline">
            <img src="<?php echo URL::to('assets/images/phone-call.svg'); ?>" width="18" height="18" alt="Phone Call" class="phone-call me-1 d-inline-block align-text-top">
            HOTLINE: <span class="text-danger">
              <?php foreach($formalInfo as $info): ?>
                <?php if($info['name'] == 'Hotline'): ?>
                  <?php echo $info['description']; ?>
                <?php endif; ?>
              <?php endforeach; ?>
            </span>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 col-6 mt-2 mt-md-0">
          <a href="" class="store-system navbar-brand">
            <img src="<?php echo URL::to('assets/images/pin-white.svg'); ?>" width="18" height="18"
              alt="Store Location Icon" class="store-icon me-1 d-inline-block align-text-top">
            HỆ THỐNG CỬA HÀNG
          </a>
        </div>
        <div class="col-lg-3 col-md-12 col-12 text-end auth-buttons mt-2 mt-lg-0">
          <div class="d-flex justify-content-end align-items-center">
            <a href="<?php echo URL::to('public/ProductSite/productcart'); ?>" class="btn btn-outline-primary position-relative me-2">
              <i class="fas fa-shopping-cart"></i>
              <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger cart-count">
                0
              </span>
            </a>
            <?php if (!$session->get('user')): ?>
              <!-- Hiển thị nút Đăng nhập và Đăng ký nếu chưa đăng nhập -->
              <a href="<?php echo URL::to('public/auth/login'); ?>" class="btn btn-outline-secondary login-button me-2">Đăng nhập</a>
              <a href="<?php echo URL::to('public/auth/register'); ?>" class="btn btn-outline-secondary register-button">Đăng ký</a>
            <?php else: ?>
              <!-- Hiển thị nút Profile nếu đã đăng nhập -->
              <div class="dropdown">
                <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="profileDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                  <?php echo htmlspecialchars($session->get('user')['name']); ?>
                </button>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profileDropdown">
                  <li>
                    <a class="dropdown-item" href="<?php echo URL::to('public/profile'); ?>">
                      <i class="fas fa-user me-2"></i> Thông tin cá nhân
                    </a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="<?php echo URL::to('public/orders'); ?>">
                      <i class="fas fa-box me-2"></i> Đơn hàng của tôi
                    </a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="<?php echo URL::to('public/auth/changePasswordAction'); ?>">
                      <i class="fas fa-key me-2"></i> Đổi mật khẩu
                    </a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li>
                    <a class="dropdown-item text-danger" href="<?php echo URL::to('public/auth/logout'); ?>">
                      <i class="fas fa-sign-out-alt me-2"></i> Đăng xuất
                    </a>
                  </li>
                </ul>
              </div>
            <?php endif; ?>
          </div>
        </div>
      </div>
    </div>
  </div>

  <hr class="break my-0">

  <nav class="main-nav">
    <div class="container py-2">
      <!-- Desktop menu -->
      <div class="desktop-menu">
        <ul class="nav justify-content-center">
          <li class="nav-item">
            <a class="nav-link" href="<?php echo URL::to('public/home/index'); ?>">Trang chủ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo URL::to('public/ProductSite/index'); ?>">Sản phẩm</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo URL::to('public/News_site/tintuc'); ?>">Tin tức</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo URL::to('public/introduce/index'); ?>">Giới thiệu</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo URL::to('public/qaa/index'); ?>">Hỏi đáp</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo URL::to('public/home/contract'); ?>">Liên hệ</a>
          </li>
        </ul>
      </div>
      <!-- Mobile menu -->
      <div class="mobile-menu">
        <div class="d-flex justify-content-between align-items-center">
          <button class="navbar-toggler" type="button" id="mobile-menu-toggle">
            <i class="fas fa-bars fa-lg"></i>
          </button>
          <div class="d-flex align-items-center">
            <a href="" class="btn btn-outline-primary me-2"><i class="fas fa-search"></i></a>
          </div>
        </div>
      </div>

      <div class="mobile-nav-overlay" id="mobile-nav-overlay"></div>

      <div class="mobile-nav" id="mobile-nav">
        <div class="mobile-nav-header">
          <a href="" class="logo navbar-brand">
          <?php foreach($formalInfo as $info): ?>
              <?php if($info['name'] == 'Logo'): ?>
                <img src="<?php echo $info['description']; ?>" width="40" height="40" alt="Logo"
                class="logo me-1 d-inline-block align-text-top">
              <?php endif; ?>
            <?php endforeach; ?>
          </a>
          <div class="mobile-nav-close" id="mobile-nav-close">
            <i class="fas fa-times"></i>
          </div>
        </div>
        <div class="mobile-nav-body">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link" href="<?php echo URL::to('public/home/index'); ?>">Trang chủ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="">Sản phẩm</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="">Tin tức</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo URL::to('public/introduce/index'); ?>">Giới thiệu</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo URL::to('public/qaa/index'); ?>">Hỏi đáp</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo URL::to('public/home/contract'); ?>">Liên hệ</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>

  <hr class="break my-0">
  
  <!-- Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  
  <script>
    // Function to update cart count badges
    function updateCartCount() {
      const cart = JSON.parse(localStorage.getItem('cart')) || [];
      const count = cart.reduce((total, item) => total + 1, 0);
      
      // Update all cart count badges
      document.querySelectorAll('.cart-count').forEach(badge => {
        badge.textContent = count;
        // Hide badge if count is 0
        badge.style.display = count > 0 ? 'block' : 'none';
      });
    }

    // Update cart count when page loads
    document.addEventListener('DOMContentLoaded', updateCartCount);

    // Listen for cart updates
    window.addEventListener('storage', function(e) {
      if (e.key === 'cart') {
        updateCartCount();
      }
    });
  </script>
</body>
</html>