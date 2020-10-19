---
title: About
---

## Why NBSafety?

Reasoning about hidden state in computational notebooks is hard --- check out [this JupyterCon 2018 talk](https://www.youtube.com/watch?v=7jiPeIFXb6U) if you don't believe us. NBSafety aims to prevent a class of common bugs in notebooks that crop up from the ability to execute (and re-execute) cells *out of order*. It does so by highlighting cells that are potentially unsafe to execute, and by suggesting fixes in the form of cells to re-execute. Our poster summary from JupyterCon 2020 gives an overview of how this looks in practice:

{% youtube WVwEH5gNylM %}

Compared with other approaches, NBSafety aims to preserve existing notebook semantics, and requires zero changes to user behavior. NBSafety allows you to use the Jupyter notebooks you already know and love, but with an extra layer of safety and confidence.

## Papers

<div class="all-des">
  <script type="text/javascript">
    display_papers(["nbsafety_full"], true, 10);
  </script>
</div>

## Members

The NBSafety development team includes Stephen Macke (smacke@eecs.berkeley.edu), Ray Gong (ruiduoray@berkeley.edu), Doris Lee (dorislee@berkeley.edu), Andrew Head (andrewhead@berkeley.edu), and Doris Xin (dorx@berkeley.edu), under the guidance of Prof. Aditya Parameswaran (adityagp@berkeley.edu) at the University of California, Berkeley.