<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ComicCraft - AI Comic Story Creator</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f1ff;
            color: #222;
        }

        /* Navigation */
        nav {
            background: #24104f;
            color: white;
            padding: 18px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: #ffd43b;
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 25px;
        }

        nav a {
            color: white;
            text-decoration: none;
        }

        nav a:hover {
            color: #ffd43b;
        }

        /* Hero */
        .hero {
            min-height: 500px;
            padding: 80px 8%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: linear-gradient(135deg, #24104f, #6135b5);
            color: white;
        }

        .hero-text {
            width: 50%;
        }

        .hero h1 {
            font-size: 55px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #ffd43b;
        }

        .hero p {
            font-size: 20px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        .btn {
            padding: 14px 28px;
            border: none;
            border-radius: 30px;
            background: #ffd43b;
            color: #24104f;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn:hover {
            transform: scale(1.05);
        }

        .comic-character {
            width: 40%;
            text-align: center;
            font-size: 150px;
        }

        /* Story Creator */
        .creator {
            padding: 60px 8%;
            text-align: center;
        }

        .creator h2 {
            font-size: 38px;
            color: #24104f;
            margin-bottom: 15px;
        }

        .creator-subtitle {
            margin-bottom: 35px;
            color: #666;
        }

        .creator-box {
            max-width: 850px;
            margin: auto;
            background: white;
            padding: 35px;
            border-radius: 20px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.1);
            text-align: left;
        }

        label {
            display: block;
            margin: 15px 0 8px;
            font-weight: bold;
        }

        input,
        select,
        textarea {
            width: 100%;
            padding: 14px;
            border: 2px solid #ddd;
            border-radius: 10px;
            font-size: 16px;
        }

        textarea {
            height: 120px;
            resize: vertical;
        }

        .generate {
            width: 100%;
            margin-top: 25px;
            background: #6135b5;
            color: white;
        }

        /* Comic Preview */
        .preview {
            padding: 60px 8%;
            background: #fff;
        }

        .preview h2 {
            text-align: center;
            color: #24104f;
            font-size: 36px;
            margin-bottom: 35px;
        }

        .comic-page {
            max-width: 1000px;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .panel {
            min-height: 280px;
            border: 5px solid #222;
            border-radius: 8px;
            padding: 20px;
            background: linear-gradient(135deg, #fff, #eee);
            position: relative;
            overflow: hidden;
        }

        .panel:nth-child(2) {
            background: #ffe6a7;
        }

        .panel:nth-child(3) {
            background: #d9f7ff;
        }

        .panel:nth-child(4) {
            background: #eadcff;
        }

        .panel h3 {
            font-size: 20px;
            margin-bottom: 15px;
        }

        .character {
            font-size: 75px;
            text-align: center;
            margin: 20px;
        }

        .speech {
            background: white;
            border: 3px solid #222;
            border-radius: 50%;
            padding: 12px;
            text-align: center;
            font-weight: bold;
        }

        /* Features */
        .features {
            padding: 60px 8%;
        }

        .features h2 {
            text-align: center;
            font-size: 36px;
            color: #24104f;
            margin-bottom: 35px;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .feature {
            background: white;
            padding: 25px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .feature-icon {
            font-size: 45px;
            margin-bottom: 15px;
        }

        .feature h3 {
            margin-bottom: 10px;
            color: #24104f;
        }

        /* Footer */
        footer {
            background: #24104f;
            color: white;
            padding: 35px;
            text-align: center;
        }

        footer span {
            color: #ffd43b;
        }

        /* Responsive */
        @media(max-width: 800px) {
            .hero {
                flex-direction: column;
                text-align: center;
            }

            .hero-text {
                width: 100%;
            }

            .comic-character {
                width: 100%;
                margin-top: 30px;
            }

            .feature-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .comic-page {
                grid-template-columns: 1fr;
            }

            nav ul {
                display: none;
            }
        }

        @media(max-width: 500px) {
            .feature-grid {
                grid-template-columns: 1fr;
            }

            .hero h1 {
                font-size: 40px;
            }
        }
    </style>
</head>

<body>

    <!-- Navigation -->
    <nav>
        <div class="logo">🎨 ComicCraft</div>

        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#creator">Create</a></li>
            <li><a href="#preview">Preview</a></li>
            <li><a href="#features">Features</a></li>
        </ul>
    </nav>


    <!-- Hero Section -->
    <section class="hero" id="home">

        <div class="hero-text">
            <h1>Create Your <span>AI Comic</span></h1>

            <p>
                Turn your ideas into exciting comic stories with
                ComicCraft. Create characters, scenes, dialogues
                and complete comic panels with AI assistance.
            </p>

            <button class="btn"
                onclick="document.getElementById('creator').scrollIntoView()">
                🚀 Start Creating
            </button>
        </div>

        <div class="comic-character">
            🦸‍♂️💥
        </div>

    </section>


    <!-- Creator -->
    <section class="creator" id="creator">

        <h2>AI Comic Story Creator</h2>

        <p class="creator-subtitle">
            Enter your story idea and customize your comic.
        </p>

        <div class="creator-box">

            <label>Story Title</label>
            <input
                type="text"
                id="title"
                placeholder="Example: The Super Student">

            <label>Story Idea</label>
            <textarea
                id="story"
                placeholder="Enter your comic story idea..."></textarea>

            <label>Genre</label>
            <select id="genre">
                <option>Adventure</option>
                <option>Comedy</option>
                <option>Fantasy</option>
                <option>Science Fiction</option>
                <option>Superhero</option>
                <option>Mystery</option>
            </select>

            <label>Art Style</label>
            <select id="style">
                <option>Modern Comic</option>
                <option>Cartoon</option>
                <option>Anime</option>
                <option>Superhero</option>
                <option>Fantasy</option>
            </select>

            <button class="btn generate" onclick="generateComic()">
                ✨ Generate Comic
            </button>

        </div>

    </section>


    <!-- Comic Preview -->
    <section class="preview" id="preview">

        <h2>📖 Comic Preview</h2>

        <div class="comic-page">

            <div class="panel">
                <h3>Panel 1 — The Beginning</h3>

                <div class="character">
                    🧑‍🎓
                </div>

                <div class="speech">
                    "I have an amazing idea!"
                </div>
            </div>


            <div class="panel">
                <h3>Panel 2 — The Challenge</h3>

                <div class="character">
                    😱⚡
                </div>

                <div class="speech">
                    "Something unexpected happened!"
                </div>
            </div>


            <div class="panel">
                <h3>Panel 3 — The Adventure</h3>

                <div class="character">
                    🦸‍♂️🚀
                </div>

                <div class="speech">
                    "Let's solve this together!"
                </div>
            </div>


            <div class="panel">
                <h3>Panel 4 — The Victory</h3>

                <div class="character">
                    🏆🎉
                </div>

                <div class="speech">
                    "We did it!"
                </div>
            </div>

        </div>

    </section>


    <!-- Features -->
    <section class="features" id="features">

        <h2>✨ ComicCraft Features</h2>

        <div class="feature-grid">

            <div class="feature">
                <div class="feature-icon">🤖</div>
                <h3>AI Story Generation</h3>
                <p>
                    Generate creative stories from simple ideas.
                </p>
            </div>

            <div class="feature">
                <div class="feature-icon">🧑‍🎨</div>
                <h3>Character Creation</h3>
                <p>
                    Design unique comic characters.
                </p>
            </div>

            <div class="feature">
                <div class="feature-icon">💬</div>
                <h3>Smart Dialogues</h3>
                <p>
                    Create natural dialogue for every scene.
                </p>
            </div>

            <div class="feature">
                <div class="feature-icon">🖼️</div>
                <h3>Comic Panels</h3>
                <p>
                    Organize your story into beautiful panels.
                </p>
            </div>

        </div>

    </section>


    <!-- Footer -->
    <footer>
        <p>
            © 2026 <span>ComicCraft</span> —
            AI Comic Story Creator
        </p>
    </footer>


    <!-- JavaScript -->
    <script>

        function generateComic() {

            let title =
                document.getElementById("title").value;

            let story =
                document.getElementById("story").value;

            let genre =
                document.getElementById("genre").value;

            let style =
                document.getElementById("style").value;

            if (title === "" || story === "") {

                alert("Please enter a story title and story idea.");

                return;
            }

            alert(
                "🎨 Comic Generated!\n\n" +
                "Title: " + title +
                "\nGenre: " + genre +
                "\nStyle: " + style +
                "\n\nComicCraft is ready to create your story!"
            );

            document.getElementById("preview")
                .scrollIntoView({
                    behavior: "smooth"
                });
        }

    </script>

</body>
</html>