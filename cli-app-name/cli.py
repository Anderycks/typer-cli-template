import typer

from .app import main


command = typer.Typer()
command.command()(main)


if __name__ == "__main__":
    command()
