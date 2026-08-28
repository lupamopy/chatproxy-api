# chatproxy-api

FastAPI gateway in front of an LLM with response caching

## What it does

- Provider SDK plugs into one function
- Latency measured and returned per request
- POST /v1/chat with prompt/model/max_tokens
- SHA-256 keyed in-memory response cache

## Usage

```bash
curl localhost:8000/v1/chat \
  -H 'content-type: application/json' \
  -d '{"prompt": "hello", "model": "gpt-4o-mini"}'
```

## Getting started

```bash
pip install -r requirements.txt
uvicorn main:app --reload
```

## Project structure

```text
├── .github/
│   └── ISSUE_TEMPLATE/
│       └── bug_report.md
├── docs/
│   ├── development.md
│   ├── roadmap.md
│   └── usage.md
├── examples/
│   └── quickstart.md
├── tests/
│   └── test_smoke.py
├── .editorconfig
├── .gitignore
├── CHANGELOG.md
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
├── LICENSE
├── Makefile
├── SECURITY.md
├── main.py
└── requirements.txt
```

## Development

```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
python -m pytest -q
```

## License

MIT. Do whatever you want.
