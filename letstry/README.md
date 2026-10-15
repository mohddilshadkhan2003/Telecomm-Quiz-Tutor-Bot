# Telecomm Quiz & Tutor Bot

A modern AI-assisted learning experience for telecom concepts — generate targeted questions from telecom plan details, evaluate learner answers, and provide intelligent, personalized feedback.

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.10%2B-3776AB?logo=python&logoColor=white" alt="Python" />
  <img src="https://img.shields.io/badge/Flask-Web%20App-000000?logo=flask&logoColor=white" alt="Flask" />
  <img src="https://img.shields.io/badge/OpenAI-LLM%20Evaluation-412991?logo=openai&logoColor=white" alt="OpenAI" />
</p>

## Why this project matters

Telecommunication learning often requires a mix of domain knowledge, contextual understanding, and evaluation. This project brings those together in a lightweight and practical application that:

- extracts telecom knowledge from plan data
- creates quiz questions based on relevant details
- checks the learner's response against the expected answer
- gives useful explanations and improvement guidance

## Features

- Vectorized knowledge retrieval from telecom data
- AI-based quiz generation and answer assessment
- Contextual support for telecom plan and service learning
- Browser-based user interface
- Explanation-driven feedback loop for self-improvement
- Graceful fallback logic when no API key is configured

## Tech stack

- Python
- Flask
- OpenAI API
- NumPy
- Python-dotenv
- HTML/CSS templates

## Project structure

```text
letstry/
├── app.py
├── llm_client.py
├── quiz_engine.py
├── requirements.txt
├── telecomm_tutor.py
├── vector_db.py
├── data/
├── static/
├── templates/
├── __pycache__/
└── README.md
```

## Quick start

1. Go to the project folder:

```bash
cd letstry
```

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Set your OpenAI API key:

```bash
export OPENAI_API_KEY="your_api_key_here"
```

4. Start the app:

```bash
python app.py
```

5. Open the app in your browser:

```text
http://127.0.0.1:5000
```

## Data source

The project uses telecom plan information and quiz knowledge stored in the `data/` directory. These records are used to build the in-memory retrieval system and support answer evaluation.

## Configuration notes

- If `OPENAI_API_KEY` is not defined, the app still runs using a local fallback evaluation approach.
- The vector database is created from the knowledge base when the app starts.
- This is a strong foundation for building a more production-ready telecom tutor platform.

## Suggested enhancement roadmap

- Add persistent database storage for quiz results and learner progress
- Add user authentication and role-based access
- Add test coverage and GitHub Actions CI
- Upgrade the UI with a modern, polished dashboard
- Extend support for more telecom domains and advanced learning modules

## Maintainer

Developed and maintained by: `@mohddilshadkhan2003`

## Contribution

Contributions, issue reports, and feature suggestions are welcome.

---

Built for intelligent telecom learning and modern educational tooling.
