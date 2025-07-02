# 💬 ChatGPT Clone – AI Assistant with Web Search & Document Parsing
---
This is a full-stack AI chatbot application that mimics the core functionality of ChatGPT. It combines web search, document scraping, natural language processing, and advanced LLM-powered response generation.

    🔍 Real-time web search using Tavily

    📄 Web content extraction with Trafilatura

    🧠 Intelligent responses powered by Gemini 2.0 Flash

    📐 Semantic understanding using Sentence Transformers

    ⚙️ Backend built with FastAPI

    🎨 Cross-platform frontend built in Flutter
---
## 🚀 Features

    Natural Conversations: Handles open-ended questions using Gemini 2.0 Flash.

    Real-Time Web Results: Searches the internet using Tavily API for fresh context.

    Smart Parsing: Extracts content from URLs using Trafilatura.

    Semantic Similarity: Uses Sentence Transformers to rank or cluster content meaningfully.

    Cross-Platform App: Fully functional UI on mobile and web with Flutter.

    FastAPI WebSocket Backend: Supports fast, scalable communication.
---
## 🧠 Tech Stack
| Layer     | Technology                          |
| --------- | ----------------------------------- |
| Frontend  | Flutter, Dart                       |
| Backend   | FastAPI, Python                     |
| LLM       | Gemini 2.0 Flash (Google)           |
| Search    | Tavily API                          |
| Scraping  | Trafilatura                         |
| NLP Tools | Sentence Transformers               |
---
## 🔧 Installation & Setup

#### 📍 Prerequisites

    Flutter SDK installed
    Dart enabled
    Python enabled
    Any IDE like Android Studio, VS Code, etc.

#### 📌 Backend (Python + FastAPI)
1. Clone the repo and navigate:
    ```
    git clone https://github.com/vedantvisoliya/Flutter-ChatGPT-Clone.git
    cd chatgpt_ai_clone
    ```
2. Change directory to server folder and activate virtual environment:
    ```
    cd server
    venv\scripts\activate # for windowa
    ```
3. Install dependencies:
    ```
    pip install -r requirements.txt
    ```
4. Run fastapi:
    ```
    fastapi dev main.py
    ```

#### 📌 Frontend (Flutter (Dart))
1. Install dependencies:
    ```
    flutter pub get
    ```
2. Run App
    ```
    flutter run -d chrome
    ```
---
## 🔐 API Keys & Config

You will need to add your own API keys for:

    Gemini (via Google AI)

    Tavily Search API

Create a .env file in server folder and add your api keys.

    TAVILY_API_KEY=your_tavily_key
    GEMINI_API_KEY=your_gemini_key
---
## 🤝 Contributing

Pull requests and feedback are welcome! Open an issue or suggest improvements.