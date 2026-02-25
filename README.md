# Causal Inference Lab Material (Spring 2026 - Hertie School)

## Lab 1 (Potential Outcomes)
We first review the counterfactual theory of causation and the potential outcomes framework.

During this lab, we start by calculating different estimatiors on a generated datasete. Then, we explore the Lalonde dataset from 1986 and add some extentions developed by [Imbens & Wu, (2025)](https://pubs.aeaweb.org/doi/pdfplus/10.1257/jep.20251440). The complete replication package from the paper is available [here](https://www.openicpsr.org/openicpsr/project/232201/version/V1/view?path=/openicpsr/232201/fcr:versions/V1/replication) and an additional tutorial developed be the authors can be found [here](https://yiqingxu.org/tutorials/lalonde/).

## Lab 2 (Mechanisms, Counterfactuals, Graphs)
We then introduce the use of directed acyclic graphs (DAGs) to formalize the assumptions necessary for learning about causal relationships. 

In this lab session, we analyse the 3 canonical motifs behind causal inference: mediators, confounders and colliders. We then visualize how these motifs look like through DAGs, and thing of real life examples in which each of them appear. Two main R packages have been developed to build DAGs:  [`daggity`](https://www.dagitty.net/) and [`ggdag`](https://r-causal.github.io/ggdag/). The syntax of these packages can be combined with other packages, such as `tydiverse` and `ggplot2`.

## Lab 3 (Randomness, Natural and Otherwise)
Exploiting random variation is not the only way to infer causal effects, but it’s a useful one. In this session we consider the advantages and disadvantages of randomized controlled experiments as a research design ideal, what happens when they go wrong, and how to exploit naturally occurring forms of randomness. 

During the lab, we analyze some examples from class and implement the concepts studied during the session on a generated dataset. Additionally, we use relevant chunks from the analysis done by [Aggarwal et al. (2023)](https://www.nature.com/articles/s41562-022-01487-4) on the effects of  digital advertising affects voter turnout. The replication package can be found [here](https://isps.yale.edu/research/data/d199).

## Lab 4 (What question? Defining estimands)
In this session, we will learn how to express the questions we want to answer as precise quantitative statements (“estimands”) which map causal claims to data we collect. 

## Lab 5 (Adjustment, Regression, and Fixed Effects)
In this session we consider the familiar old regression model from a causal point of view, as a generalisation of stratification. In doing so, we discover some curious properties of least-squares estimators. We’ll also revisit the Frisch-Waugh-Lovell decomposition and its relation to statistical control and ‘fixed effects’ as we’ll need it later for Machine Learning extensions.

## Lab 6 (Weighting)
Regression-type adjustments will take us a long way towards controlling confounding, but sometimes we need more, or different, or both. In this session we’ll consider weighting methods with a focus on models of treatment assignment (a.k.a. the propensity scores) rather than regression’s implicit focus on modelling the the outcome. Having both at once sometimes gets us desirable ‘double robustness’ to model misspecification. 

## Lab 7 (Collider Bias)
Naturally occurring collider bias (where we do not induce it deliberately ourselves) provides a particularly illuminating frame for understanding why all the things you were told not to do in your last statistics class were bad, e.g. selection on the dependent variable, conditioning on post-treatment outcomes, and generally pointing statistical models at data whose provenance you are unsure of. Collider bias is a particular issue for policy students dealing with administrative data that usually created in response to some event, for example a birth, doctor’s appointment, accident, or arrest. Colliders will be particularly troublesome when we try to answer some questions with this kind of non-randomly sampled data. 

## Lab 8 (Principal stratification & Instrumental Variable)
In this session, we will learn how to use the framework of principal stratification to understand and define causal effects. This framework delineates groups according to how units will respond to different interventions. The discussion of principal stratification motivates discussion of non-compliance in experiments and instrumental variable estimators.

## Lab 9 (Panel data  1 - Difference-in-differences)
In this week, we will learn how to analyze the causal effects of policy interventions that “turn on” at a certain point in time for some units but not for others. The discussion of “modern” difference-in-differences estimators motivates a more general discussion of how to choose “clean controls” appropriate to a specific substantive context.

## Lab 10 (Panel data 2 - Synthetic control)
In this week, we study synthetic control methods for identifying the effects of policy interventions––including those that are implemented for a single unit. We contrast synthetic control with difference-in-differences to consider how distinct sources of randomness in our design motivate our choice of method in the context of panel data. 

## Lab 11 (Mediation, of the Statistical Kind)
When policy effects can be realised according to several mechanisms at the same time how important is each route? What happens if one offset the effects of the other? Answering these questions is the task of mediation analysis, beloved of psychologists and communication scholars and, we shall see, rather more difficult than they hoped. 