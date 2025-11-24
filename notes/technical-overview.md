---
slug: github-lecture-julia-notebooks-note-technical-overview
id: github-lecture-julia-notebooks-note-technical-overview
title: lecture-julia.notebooks
repo: justin-napolitano/lecture-julia.notebooks
githubUrl: https://github.com/justin-napolitano/lecture-julia.notebooks
generatedAt: '2025-11-24T18:40:12.340Z'
source: github-auto
summary: >-
  This repo hosts Jupyter notebooks for quantitative economic modeling lectures
  using Julia. It's a companion to the online lectures at
  [julia.quantecon.org](https://julia.quantecon.org).
tags: []
seoPrimaryKeyword: ''
seoSecondaryKeywords: []
seoOptimized: false
topicFamily: null
topicFamilyConfidence: null
kind: note
entryLayout: note
showInProjects: false
showInNotes: true
showInWriting: false
showInLogs: false
---

This repo hosts Jupyter notebooks for quantitative economic modeling lectures using Julia. It's a companion to the online lectures at [julia.quantecon.org](https://julia.quantecon.org).

## Key Features
- Interactive notebooks covering:
  - Dynamic programming
  - Continuous time models
  - Multi-agent models
  - Time series analysis
- Built with Julia and Jupyter Notebook.
- Run instantly via Binder without local setup.

## Getting Started
Clone the repo with:

```bash
git clone https://github.com/justin-napolitano/lecture-julia.notebooks.git
cd lecture-julia.notebooks
```

Then install dependencies:

```julia
using Pkg
Pkg.activate(".")
Pkg.instantiate()
```

To launch Jupyter:

```bash
jupyter notebook
```
or 

```bash
jupyter lab
```

Open any `*.ipynb` file to explore. Be aware that familiarity with Julia and quantitative economics is assumed for the best experience.
