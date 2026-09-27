# Flowery T. – Website

# List available commands.
default:
    @just --list

# Run a local webserver
serve port="8000":
    @echo "→ http://localhost:{{port}}"
    python3 -m http.server {{port}}
