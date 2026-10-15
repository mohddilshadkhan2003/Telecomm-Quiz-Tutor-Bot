# Telecomm Quiz Tutor Bot

A smart AI-powered telecommunication learning assistant that turns telecom plan details into interactive quiz experiences, evaluates learner responses, and delivers targeted explanations to improve understanding.

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.10%2B-3776AB?logo=python&logoColor=white" alt="Python 3.10+" />
  <img src="https://img.shields.io/badge/Flask-2.x-000000?logo=flask&logoColor=white" alt="Flask" />
  <img src="https://img.shields.io/badge/OpenAI-API-412991?logo=openai&logoColor=white" alt="OpenAI API" />
  <img src="https://img.shields.io/badge/Status-Active-success" alt="Status Active" />
</p>

## Overview

This project is designed to help users learn telecom concepts through an interactive, question-based tutor experience. It loads telecom knowledge, builds a contextual vector database, asks targeted questions, evaluates answers, and provides explanation-driven feedback using AI.

The repository contains the full project implementation and supporting design documents for the telecommunication quiz tutor bot.

## Key features

- AI-powered telecom quiz generation from plan content
- Context-aware retrieval for relevant telecom knowledge
- Answer evaluation with OpenAI integration
- Personalized feedback and explanations for incorrect answers
- Browser-based interface for smooth interaction
- Fallback local evaluation logic when no API key is configured

## Project structure

```text
Telecomm-Quiz-Tutor-Bot/
├── README.md
├── TELECOMM quiz_GenAI_HLD.docx
├── telecomm_tutor_bot_G-AI_LLD.pdf
├── Telecomm Quiz  Report(2)(1).pdf
├── letstry/
│   ├── app.py
│   ├── llm_client.py
│   ├── quiz_engine.py
│   ├── requirements.txt
│   ├── telecomm_tutor.py
│   ├── vector_db.py
│   ├── data/
│   ├── static/
│   ├── templates/
│   └── README.md
└── .gitignore
```

## Main application

The actual chatbot and evaluation logic live inside the `letstry/` directory.

- `letstry/app.py` starts the Flask app
- `letstry/quiz_engine.py` handles knowledge processing and context retrieval
- `letstry/llm_client.py` manages OpenAI-based answer evaluation
- `letstry/data/` stores telecom plan content and question data

## Quick start

1. Navigate to the project folder:

```bash
cd letstry
```

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Set your environment variable:

```bash
export OPENAI_API_KEY="your_api_key_here"
```

4. Run the app:

```bash
python app.py
```

5. Open the app in your browser:

```text
http://127.0.0.1:5000
```

## Notes

- If `OPENAI_API_KEY` is not provided, the application still runs with a local fallback logic for evaluation.
- The knowledge base is loaded from the telecom dataset when the app starts.
- This project is ideal for learning, prototyping, and extending into a production-grade telecom tutoring platform.

## Maintainer

This repository is maintained by: `@mohddilshadkhan2003`

## License

A license file has not been added yet. It is recommended to add an open-source license such as MIT for clarity and reuse.

## Future improvements

- Add a persistent vector database
- Add CI tests and lint checks
- Improve UI/UX for desktop and mobile
- Add user authentication and analytics
- Support more telecom domains and advanced quiz flows

---

Built for intelligent telecom upskilling and personalized learning.
