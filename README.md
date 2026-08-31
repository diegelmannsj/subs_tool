# subs_tool

Interactive subtitle and audio track manager for video files.

## Usage

```bash
,subs_tool --help
,subs_tool -i movie.mkv
,subs_tool -d /path/to/videos --recursive
```

Both `-h` and `--help` display the same command reference.

## Bash completion

Install the completion definition in Bash's per-user completion directory:

```bash
mkdir -p ~/.local/share/bash-completion/completions
cp completions/,subs_tool.bash ~/.local/share/bash-completion/completions/,subs_tool
```

Start a new Bash session, then press Tab after `,subs_tool` or after a partial
option. File and directory arguments are completed according to the selected
option.
