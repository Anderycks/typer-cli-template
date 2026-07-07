# Template for Python Typer-based CLI Apps

This is a small starting point for Python CLI tools built with Typer and
managed with `uv`.

## Use This Template

Copy this repo into a new project, then replace these placeholders:

- `cli-app-name`: the package and command name, such as `my-tool`
- `cli_app_name`: the Python import package, such as `my_tool`
- `[To be filled in.]`: the project description

Then install dependencies and run the CLI:

```bash
uv sync
uv run cli-app-name
```

Run tests with:

```bash
uv run python -m unittest
```
