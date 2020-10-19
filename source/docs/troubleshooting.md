---
title: Troubleshooting
---

## Troubleshooting Install

The kernel and nbextension should be installed automatically, but in case
the kernel is not available as an option or the UI elements are not showing
up, try running the following:
```bash
python -m nbsafety.install
jupyter nbextension install --py nbsafety --sys-prefix
jupyter nbextension enable --py nbsafety --sys-prefix
```