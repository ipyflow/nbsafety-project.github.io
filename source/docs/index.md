---
title: Overview
---

What is NBSafety?
-----------------
NBSafety is a drop-in replacement for Jupyter's Python 3 kernel that makes it easier to reason about hidden state in computational notebooks. It does so by highlighting cells that reference data that have become *stale* (due to out-of-order cell executions). It also highlights cells that resolve such data staleness, as depicted below:

<img src="/nbsafety-example.svg" width="70%" />

In the above example, the user creates three cells and runs them from top to bottom. The user then edits and reruns cell 1. However, there is an implicit dependency from `f` to `y`, and the desirable behavior in most cases is for `y` to reflect the updated value of `f`. Rerunning cell 3 without first rerunning cell 2 will therefore yield a semantically stale result, so NBSafety gives cell 3 a *stale highlight*. Furthermore, it gives cell 2 a *refresher highlight*, since it contains a reference to an updated `f` that can be used to "refresh" `y`.

NBSafety accomplishes its magic using a combination of a runtime tracer (to build the implicit dependency graph) and a static checker (to provide warnings before running a cell), both of which are deeply aware of Python's data model. In particular, NBSafety requires ***minimal to no changes*** in user behavior, opting to get out of the way unless absolutely necessary and letting you use notebooks the way you prefer. For more information on NBSafety's implementation, please see the [technical report](https://smacke.net/papers/nbsafety.pdf).

Install
-------
```bash
pip install nbsafety
```

If using JupyterLab, we highly recommend installing the companion extension:
```bash
jupyter labextension install jupyterlab-nbsafety
```

Running
-------

Because NBSafety is implemented as a custom Jupyter kernel, it works for both Jupyter notebooks and JupyterLab (if using JupyterLab, the additional labextension is recommended).  To run an NBSafety kernel, select "Python 3 (nbsafety)" from the list of notebook types in Jupyter's "New" dropdown dialogue.  For JupyterLab, similarly select "Python 3 (nbsafety)" from the list of available kernels in the Launcher tab.

Jupyter Notebook Entrypoint:     |  Jupyter Lab Entrypoint:
:-------------------------------:|:-------------------------:
![](https://raw.githubusercontent.com/nbsafety-project/nbsafety/master/img/nbsafety-notebook.png) | ![](https://raw.githubusercontent.com/nbsafety-project/nbsafety/master/img/nbsafety-lab.png)
