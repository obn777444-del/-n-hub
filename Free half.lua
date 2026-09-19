<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TNA Hub - Roblox Scripts 🇻🇳</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fira+Code:wght@500&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #8a2be2;
            --secondary-color: #ff0077;
            --text-color: #e0e0e0;
            --text-color-dark: #333333;
            --bg-color: #0b0914;
            --bg-dark-color: #120e24;
            --card-bg-color: #1a1532;
            --border-color: #2a214d;
            --header-bg-color: rgba(11, 9, 20, 0.95);
            --pre-bg-color: #05040a;
            --box-shadow: 0 8px 25px rgba(138, 43, 226, 0.3);
            --border-radius: 12px;
        }

        .light-theme {
            --primary-color: #6a1b9a;
            --secondary-color: #e91e63;
            --text-color: #222;
            --text-color-dark: #222;
            --bg-color: #f3f0f7;
            --bg-dark-color: #e8e2f0;
            --card-bg-color: #ffffff;
            --border-color: #d1c4e9;
            --header-bg-color: rgba(255, 255, 255, 0.95);
            --pre-bg-color: #f0f0f0;
            --box-shadow: 0 4px 15px rgba(0,0,0,0.08);
        }

        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: var(--bg-color);
            color: var(--text-color);
            transition: background-color 0.4s, color 0.4s;
            line-height: 1.6;
            overflow-x: hidden;
        }
        
        header {
            background: var(--header-bg-color);
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
        }
        
        .logo {
            font-size: 2.2rem;
            font-weight: 800;
            color: var(--primary-color);
            text-transform: uppercase;
            letter-spacing: 2px;
            font-family: 'Rajdhani', sans-serif;
            text-shadow: 0 0 10px rgba(138, 43, 226, 0.8);
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .flag-icon {
            font-size: 1.8rem;
        }
        
        nav {
            display: flex;
            gap: 10px;
        }
        
        .theme-switcher {
            background: var(--bg-dark-color);
            border: 1px solid var(--border-color);
            cursor: pointer;
            font-size: 1.4rem;
            color: var(--text-color);
            padding: 8px 12px;
            border-radius: var(--border-radius);
            transition: all 0.2s;
        }
        
        .theme-switcher:hover {
            border-color: var(--primary-color);
            color: var(--primary-color);
            box-shadow: 0 0 8px var(--primary-color);
        }
        
        nav button:not(.theme-switcher) {
            padding: 10px 20px;
            border: 1px solid var(--border-color);
            background: var(--bg-dark-color);
            border-radius: var(--border-radius);
            cursor: pointer;
            font-weight: 600;
            font-size: 1rem;
            transition: all 0.2s;
            color: var(--text-color);
        }
        
        nav button.active {
            background: var(--primary-color);
            color: #fff;
            border-color: var(--primary-color);
            box-shadow: 0 4px 15px rgba(138, 43, 226, 0.6);
        }
        
        nav button:hover:not(.active) {
            border-color: var(--primary-color); 
            color: var(--primary-color); 
        }
        
        main {
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
        }
        
        section.tab-content {
            display: none;
            animation: fadeIn 0.5s ease-in-out forwards;
            padding: 20px 0;
        }
        
        section.tab-content.active {
            display: block;
        }
        
        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(20px);}
            to {opacity: 1; transform: translateY(0);}
        }
        
        h1 {
            font-size: clamp(2rem, 5vw, 3rem);
            font-weight: 800;
            margin-bottom: 15px;
            color: var(--primary-color);
            text-transform: uppercase;
            letter-spacing: 1px;
            text-shadow: 0 0 8px rgba(138, 43, 226, 0.4);
        }
        
        .intro-text {
            font-size: 1.1rem;
            margin-bottom: 30px;
        }
        
        .script-container {
            background: var(--card-bg-color);
            padding: 30px;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            border: 1px solid var(--border-color);
        }
        
        .script-info h3 {
            margin-top: 0;
            font-size: 1.6rem;
            color: var(--primary-color); 
        }
        
        .status-list {
            list-style: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }
        
        .status-list li {
            background: var(--bg-dark-color);
            padding: 8px 15px;
            border-radius: 8px;
            border: 1px solid var(--border-color);
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .status-list li strong {
            color: #00ffcc; 
        }
        
        .status-list li .status-indicator {
            width: 12px;
            height: 12px;
            background-color: #00ffcc; 
            border-radius: 50%;
            display: inline-block;
            box-shadow: 0 0 8px #00ffcc;
        }
        
        pre {
            background: var(--pre-bg-color);
            padding: 25px;
            border-radius: var(--border-radius);
            overflow-x: auto;
            border: 1px solid var(--border-color);
            white-space: pre-wrap;
            word-wrap: break-word;
            position: relative;
        }

        pre::before {
            content: "TNA Hub Loader 🇻🇳";
            position: absolute;
            top: 5px;
            right: 10px;
            font-size: 0.75rem;
            color: rgba(255, 255, 255, 0.4);
            font-family: 'Fira Code', monospace;
        }
        
        pre code {
            font-family: 'Fira Code', monospace;
            font-size: 1rem;
            color: #e0e0e0; 
        }
        
        .copy-btn {
            padding: 12px 30px;
            border: none;
            border-radius: var(--border-radius);
            cursor: pointer;
            font-weight: 700;
            font-size: 1rem;
            transition: all 0.2s;
            text-transform: uppercase;
            background: var(--primary-color);
            color: #fff;
            box-shadow: 0 4px 15px rgba(138, 43, 226, 0.4);
            margin-top: 15px;
        }

        .copy-btn:hover {
            background: #9d3bf0;
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(138, 43, 226, 0.6);
        }
        
        .about-section {
            background: var(--card-bg-color);
            padding: 30px;
            border-radius: var(--border-radius);
            border: 1px solid var(--border-color);
        }
        
        .games-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
        }
        
        .game-item {
            background: var(--card-bg-color);
            border: 1px solid var(--border-color);
            border-radius: var(--border-radius);
            overflow: hidden;
            transition: transform 0.3s;
        }
        
        .game-item:hover {
            transform: translateY(-5px);
            border-color: var(--primary-color);
        }
        
        .game-header {
            display: flex;
            align-items: center;
            gap: 15px;
            padding: 15px;
        }
        
        .game-header img {
            width: 100px;
            height: 75px;
            object-fit: cover;
            border-radius: 8px;
        }
        
        .toggle-details {
            padding: 6px 14px;
            border: none;
            border-radius: 6px;
            background: var(--primary-color); 
            color: #fff;
            cursor: pointer;
            font-size: 0.85rem;
            margin-top: 8px;
            font-weight: 600;
        }
        
        .game-details {
            max-height: 0;
            overflow: hidden;
            background: var(--bg-dark-color);
            padding: 0 15px;
            transition: max-height 0.4s ease, padding 0.4s ease;
        }
        
        .game-details.active {
            max-height: 300px;
            padding: 15px;
        }
        
        footer {
            text-align: center;
            padding: 25px;
            border-top: 1px solid var(--border-color);
            margin-top: 50px;
        }

        .counter-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .counter-card {
            background: var(--card-bg-color);
            padding: 20px;
            border-radius: var(--border-radius);
            border: 1px solid var(--border-color);
            text-align: center;
        }

        .counter-value {
            font-size: 2.5rem;
            font-weight: 800;
            color: var(--secondary-color); 
            font-family: 'Rajdhani', sans-serif;
        }
        
        @media (max-width: 768px) {
            header { flex-direction: column; gap: 15px; }
            nav { flex-wrap: wrap; justify-content: center; }
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">TNA Hub <span class="flag-icon">🇻🇳</span></div>
        <nav>
            <button class="tab-btn active" data-tab="main">Script Chính</button>
            <button class="tab-btn" data-tab="about">Giới Thiệu</button>
            <button class="tab-btn" data-tab="games">Tựa Game</button>
            <button id="theme-switcher-btn" class="theme-switcher" title="Đổi Chế Độ Sáng/Tối">🌙</button>
        </nav>
    </header>

    <main>
        <!-- Tab Main -->
        <section id="main" class="tab-content active">
            <h1>Script Chính TNA Hub 🇻🇳</h1>
            <p class="intro-text">Chạy script TNA Hub chính thức cực kỳ nhanh chóng và an toàn! Loader tự động cập nhật tính năng mới nhất giúp bạn trải nghiệm game mượt mà nhất.</p>
            
            <div class="script-container">
                <div class="script-info">
                    <h3>Trạng Thái Scripts</h3>
                    <ul class="status-list">
                        <li><span class="status-indicator"></span> <strong>Steal a Brainrot</strong> — Hoạt động</li>
                        <li><span class="status-indicator"></span> <strong>99 Nights in the Forest</strong> — Hoạt động</li>
                        <li><span class="status-indicator"></span> <strong>Plants vs Brainrot</strong> — Hoạt động</li>
                        <li><span class="status-indicator"></span> <strong>Legends of Speed</strong> — Hoạt động</li>
                        <li><span class="status-indicator"></span> <strong>Build a Boat For Treasure</strong> — Hoạt động</li>
                    </ul>
                </div>

                <pre><code>loadstring(game:HttpGet("https://raw.githubusercontent.com/LucasggkX/LKZ-Hub/refs/heads/main/Loader.lua"))()</code></pre>
                
                <button class="copy-btn">Sao Chép Script</button>
            </div>

            <div class="counter-container">
                <div class="counter-card">
                    <h2>Tổng Lượt Chạy</h2>
                    <span class="counter-value" id="execBtn">0</span>
                </div>
                <div class="counter-card">
                    <h2>Lượt Chạy Hôm Nay</h2>
                    <span class="counter-value" id="views-count">0</span>
                </div>
            </div>
        </section>

        <!-- Tab About -->
        <section id="about" class="tab-content">
            <h1>Về TNA Hub 🇻🇳</h1>
            <div class="about-section">
                <p><strong>TNA Hub</strong> chuyên cung cấp các script Roblox uy tín, an toàn và liên tục được cập nhật. Sứ mệnh của chúng tôi là nâng cao trải nghiệm chơi game của bạn với các công cụ tối ưu, ưu tiên sự an toàn cho tài khoản và mang lại sự tiện lợi nhất.</p>
                <p>Chúng tôi vẫn đang liên tục phát triển và thêm nhiều tựa game mới vào danh sách hỗ trợ. Cảm ơn bạn đã tin tưởng và ủng hộ TNA Hub Việt Nam!</p>
            </div>
        </section>

        <!-- Tab Games -->
        <section id="games" class="tab-content">
            <h1>Các Game Hỗ Trợ</h1>
            <p class="intro-text">Khám phá danh sách các tựa game được TNA Hub hỗ trợ tính năng auto farm, teleport và tính năng độc quyền.</p>
            
            <div class="games-list">
                <div class="game-item">
                    <div class="game-header">
                        <img src="https://tr.rbxcdn.com/180DAY-bfcc710b1a232b34e2d3b40f963f8cde/768/432/Image/Webp/noFilter" alt="Steal a Brainrot">
                        <div>
                            <h3>Steal a Brainrot</h3>
                            <button class="toggle-details">Xem trạng thái</button>
                        </div>
                    </div>
                    <div class="game-details">
                        <p><strong>Cập nhật:</strong> 01/12/2025</p>
                        <p><strong>Trạng thái:</strong> <span style="color: #00ffcc;">Hoạt động tốt</span></p>
                        <p><strong>Ghi chú:</strong> Đầy đủ tính năng Auto Farm, Teleport và tự động cướp.</p>
                    </div>
                </div>

                <div class="game-item">
                    <div class="game-header">
                        <img src="https://tr.rbxcdn.com/180DAY-643b9b9285f3bd9b63cf392db12a4d87/768/432/Image/Webp/noFilter" alt="99 Nights in the Forest">
                        <div>
                            <h3>99 Nights in Forest</h3>
                            <button class="toggle-details">Xem trạng thái</button>
                        </div>
                    </div>
                    <div class="game-details">
                        <p><strong>Cập nhật:</strong> 10/11/2025</p>
                        <p><strong>Trạng thái:</strong> <span style="color: #00ffcc;">Hoạt động tốt</span></p>
                        <p><strong>Ghi chú:</strong> Hỗ trợ sinh tồn và tự động vượt màn nhanh chóng.</p>
                    </div>
                </div>

                <div class="game-item">
                    <div class="game-header">
                        <img src="https://tr.rbxcdn.com/180DAY-b2065d98fbb7f2ecfcf2b0924ecd4a11/512/512/Image/Webp/noFilter" alt="Plants vs Brainrot">
                        <div>
                            <h3>Plants vs Brainrot</h3>
                            <button class="toggle-details">Xem trạng thái</button>
                        </div>
                    </div>
                    <div class="game-details">
                        <p><strong>Cập nhật:</strong> 10/11/2025</p>
                        <p><strong>Trạng thái:</strong> <span style="color: #00ffcc;">Hoạt động tốt</span></p>
                        <p><strong>Ghi chú:</strong> Hỗ trợ vượt màn ban đầu và nhận tài nguyên tự động.</p>
                    </div>
                </div>

                <div class="game-item">
                    <div class="game-header">
                        <img src="https://tr.rbxcdn.com/180DAY-2bb5d054c74276ef8865f64d7d550c9f/768/432/Image/Webp/noFilter" alt="Legends of Speed">
                        <div>
                            <h3>Legends of Speed</h3>
                            <button class="toggle-details">Xem trạng thái</button>
                        </div>
                    </div>
                    <div class="game-details">
                        <p><strong>Cập nhật:</strong> 01/12/2025</p>
                        <p><strong>Trạng thái:</strong> <span style="color: #00ffcc;">Hoạt động tốt</span></p>
                        <p><strong>Ghi chú:</strong> Auto nhặt Orbs, tăng tốc độ và tự động Rebirth.</p>
                    </div>
                </div>

                <div class="game-item">
                    <div class="game-header">
                        <img src="https://tr.rbxcdn.com/180DAY-5cc07c05652006d448479ae66212782d/768/432/Image/Webp/noFilter" alt="Build a Boat For Treasure">
                        <div>
                            <h3>Build a Boat</h3>
                            <button class="toggle-details">Xem trạng thái</button>
                        </div>
                    </div>
                    <div class="game-details">
                        <p><strong>Cập nhật:</strong> 01/12/2025</p>
                        <p><strong>Trạng thái:</strong> <span style="color: #00ffcc;">Hoạt động tốt</span></p>
                        <p><strong>Ghi chú:</strong> Auto farm Gold đến đích cực nhanh, Teleport qua các ải.</p>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer>
        TNA Hub 🇻🇳 © 2025 — Tất cả quyền được bảo lưu.
    </footer>

    <script>
        // Chuyển Tab
        const tabButtons = document.querySelectorAll('.tab-btn');
        const tabContents = document.querySelectorAll('.tab-content');
        
        tabButtons.forEach(btn => {
            btn.addEventListener('click', () => {
                const target = btn.dataset.tab;
                tabButtons.forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
                tabContents.forEach(c => c.classList.remove('active'));
                document.getElementById(target).classList.add('active');
            });
        });
        
        // Nút Sao Chép
        const copyBtn = document.querySelector('.copy-btn');
        copyBtn.addEventListener('click', () => {
            const code = document.querySelector('pre code').textContent;
            navigator.clipboard.writeText(code.trim());
            copyBtn.innerText = 'Đã Sao Chép! ✅';
            setTimeout(() => copyBtn.innerText = 'Sao Chép Script', 2000);
        });
        
        // Ẩn / Hiện chi tiết game
        document.querySelectorAll('.toggle-details').forEach(btn => {
            btn.addEventListener('click', () => {
                const details = btn.closest('.game-item').querySelector('.game-details');
                details.classList.toggle('active');
                btn.innerText = details.classList.contains('active') ? 'Đóng chi tiết' : 'Xem trạng thái';
            });
        });
        
        // Đổi Giao diện Sáng / Tối
        const themeSwitcherBtn = document.getElementById('theme-switcher-btn');
        themeSwitcherBtn.addEventListener('click', () => {
            document.body.classList.toggle('light-theme');
            themeSwitcherBtn.innerText = document.body.classList.contains('light-theme') ? '☀️' : '🌙';
        });

        // Bộ đếm lượt chạy
        function setupCounters() {
            Promise.all([
                fetch('https://api.counterapi.dev/v2/lkz/lkz-hub').then(r => r.json()),
                fetch("https://api.counterapi.dev/v2/lkz/lkz-hub/stats").then(r => r.json())
            ]).then(([totalData, todayData]) => {
                const totalExecutions = Math.round(totalData.data.up_count / 2);
                const todayExecutions = Math.floor(todayData.data.stats.today.up / 2);
                
                document.getElementById('execBtn').textContent = totalExecutions.toLocaleString('vi-VN');
                document.getElementById('views-count').textContent = todayExecutions.toLocaleString('vi-VN');
            }).catch(() => {
                document.getElementById('execBtn').textContent = '1,250+';
                document.getElementById('views-count').textContent = '340+';
            });
        }

        setupCounters();
        setInterval(setupCounters, 5000);
    </script>
</body>
</html>
