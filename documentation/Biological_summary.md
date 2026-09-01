# Biological Summary

## Research Question

How do genetic perturbations reshape cellular states and transcriptional programs at single-cell resolution?

This project investigates transcriptional consequences of CRISPR perturbations using single-cell Perturb-seq analysis.

The analysis focuses on three targeted perturbations:

- Axl knockout
- Prmt1 knockout
- Ripk1 knockout

Non-targeting guide RNAs (sgNC1 and sgNC2) were used as controls.

---

# Overview of Major Findings

The integrated analysis revealed perturbation-specific transcriptional programs affecting:

- Cell growth and proliferation
- Metabolic regulation
- Stress responses
- DNA replication programs
- Interferon and inflammatory signaling


Different perturbations produced distinct molecular states rather than a uniform transcriptional response.

---

# Axl Perturbation

## Differential Expression

Axl knockout produced a distinct transcriptional response characterized by significant gene expression changes compared with control cells.

The strongest transcriptional signatures were associated with:

- MYC target activation
- mTORC1 signaling
- DNA repair pathways


## Pathway Activity

Hallmark GSEA revealed enrichment of:

- HALLMARK_MYC_TARGETS_V1
- HALLMARK_MTORC1_SIGNALING
- HALLMARK_DNA_REPAIR


AUCell analysis supported increased activity of MYC-associated transcriptional programs.

## Biological Interpretation

Loss of Axl signaling appears to reshape cellular growth-associated transcriptional programs, suggesting alteration of proliferative and metabolic states.

---

# Prmt1 Perturbation

## Differential Expression

Prmt1 knockout resulted in extensive transcriptional remodeling.

Major affected programs included:

- MYC targets
- E2F targets
- oxidative stress response
- hypoxia-related pathways


## Pathway Activity

GSEA identified:

Downregulated:

- HALLMARK_MYC_TARGETS_V1
- HALLMARK_MYC_TARGETS_V2
- HALLMARK_E2F_TARGETS


Activated:

- Reactive oxygen species pathway
- Hypoxia response


## Biological Interpretation

Prmt1 loss is associated with reduced proliferation-associated transcription and activation of cellular stress adaptation programs.

---

# Ripk1 Perturbation

## Differential Expression

Ripk1 knockout showed limited significant gene-level differential expression after multiple testing correction.

However, pathway-level analysis revealed strong biological changes.

## Pathway Activity

Major enriched pathways:

Activated:

- Interferon gamma response
- Interferon alpha response
- Inflammatory response
- IL6/JAK/STAT3 signaling


Downregulated:

- MYC targets
- E2F targets


## Biological Interpretation

Ripk1 perturbation primarily affected immune-related transcriptional programs, highlighting pathway-level changes that may not be captured by individual gene statistics alone.

---

# Cross-Perturbation Comparison

Comparison of normalized enrichment scores (NES) demonstrated distinct molecular signatures:

| Perturbation | Dominant programs |
|---|---|
| Axl KO | MYC, mTORC1, DNA repair |
| Prmt1 KO | E2F suppression, stress response |
| Ripk1 KO | Interferon and inflammatory signaling |

These findings demonstrate that individual genetic perturbations generate unique transcriptional states.

---

# Integrated Model

The combined analysis suggests three major regulatory states:

## Growth-associated remodeling

Observed in:

Axl perturbation

Associated pathways:

- MYC signaling
- mTORC1 activation


## Stress and proliferation control

Observed in:

Prmt1 perturbation

Associated pathways:

- E2F regulation
- ROS response
- Hypoxia


## Immune activation state

Observed in:

Ripk1 perturbation

Associated pathways:

- Interferon signaling
- Inflammatory pathways


---

# Conclusion

This study demonstrates an integrated computational framework for analyzing Perturb-seq datasets by combining:

- single-cell transcriptomics
- CRISPR perturbation assignment
- pseudobulk differential expression
- pathway enrichment
- single-cell pathway activity scoring

The workflow enables identification of perturbation-specific molecular states and provides mechanistic insights into gene function at single-cell resolution.
