# Toolbin

Personal collection of handy command-line tools that sync across machines.

## Installation

```bash
git clone https://github.com/williavs/toolbin.git
cd toolbin
./install.sh
```

This will symlink all scripts to `~/bin` so they're always in sync with the repo.

## Update on any machine

```bash
cd ~/toolbin
git pull
```

## Add new tools

```bash
cd ~/toolbin
# Add your script
chmod +x your-script
git add your-script
git commit -m "Add your-script"
git push
```

## Tools

### uni
Display a wall of unicode symbols with colorful gum styling.

**Usage:**
- `uni` - Display symbols in default pink
- `uni 46` - Display in green
- `uni 196` - Display in red
- `uni 51` - Display in cyan

**Requirements:** gum, python3
