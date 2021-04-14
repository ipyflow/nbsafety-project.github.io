---
title: Uninstall
---

In addition to `pip uninstall nbsafety`, it is also necessary
to deregister the kernel from Jupyter for a full uninstall:
```bash
jupyter kernelspec uninstall nbsafety
```
