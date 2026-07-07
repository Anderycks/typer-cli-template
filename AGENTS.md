# Repository Instructions

## Code Style

- This project should be managed with `uv`
- Format all Python files with Black before finishing changes.
- Follow PEP 8 generally. Respect the configured Black line length in
  `pyproject.toml` which should be set to 78 characters.
- Write only the code strictly required for the requested change.
- Keep code and docstrings concise.
- Avoid inline comments unless they strongly clarify intent or prevent a likely
  misunderstanding.

## Docstrings

- Every module, class, and function must have a docstring.
- Follow PEP 257 for docstring structure and formatting.
- Docstrings should say what the object does, not repeat obvious implementation
  details.
- For tests, follow the language guidance from
  <https://jml.io/test-docstrings/> while preserving PEP 257 formatting:
  - Do not start with phrases like "Test that" or "Check that".
  - Avoid filler such as "should", "correctly", "properly", and "as expected".
  - If the remaining sentence says nothing specific, describe the behavior or
    reason the behavior matters.
