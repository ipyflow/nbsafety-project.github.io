---
title: Uninstall
---

In addition to `pip uninstall nbsafety`, it is also necessary
to deregister the kernel from Jupyter for a full uninstall
(as well as the extension from JupyterLab, if using JupyterLab):
```bash
jupyter kernelspec uninstall nbsafety
jupyter labextension uninstall jupyterlab-nbsafety
```