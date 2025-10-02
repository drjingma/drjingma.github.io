---
layout: paper
title: Inference for microbe--metabolite association networks using a latent graph model
image: /assets/images/papers/noisybiSBM.png
authors: Jing Ma 
year: 2025
shortref: Ma. (2025). arXiv.
journal: "arXiv"
pdf: 
supplement:
slides: /assets/pdfs/talks/2025-07-17-Banff.pdf
arXiv: 2506.12275
github: https://github.com/drjingma/metaMint
doi: 
external_link:
dryad_doi:
video_link:
type: 
---

# Abstract

Correlation networks are commonly used to infer associations between microbes and metabolites. The resulting p-values are then corrected for multiple comparisons using existing methods such as the Benjamini and Hochberg procedure to control the false discovery rate (FDR). However, most existing methods for FDR control assume the p-values are weakly dependent. Consequently, they can have low power in recovering microbe-metabolite association networks that exhibit important topological features, such as the presence of densely associated modules. We propose a novel inference procedure that is both powerful for detecting significant associations in the microbe-metabolite network and capable of controlling the FDR. Power enhancement is achieved by modeling latent structures in the form of a bipartite stochastic block model. We develop a variational expectation-maximization algorithm to estimate the model parameters and incorporate the learned graph in the testing procedure. In addition to FDR control, this procedure provides a clustering of microbes and metabolites into modules, which is useful for interpretation. We demonstrate the merit of the proposed method in simulations and an application to bacterial vaginosis.


