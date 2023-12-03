Setup MacBook
---

This repository uses ansible to automate the setup of my development machine.
It contains the apps and configurations I need to do my work.

## Usage
The following helper scripts are provided for different uses:
- `fresh-install.sh` -> will run on a fresh OS. Installs brew and ansible before running the playbook
- `run.sh` -> runs the playbook on a machine that already has brew and ansible
- `dry-run.sh` -> runs the playbook in 'check' mode
