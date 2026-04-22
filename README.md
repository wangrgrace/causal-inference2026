# Causal Inference Lab Material (Spring 2026 - Hertie School)

This repository is based on the structure of the Causal Inference course taught by [Oliver Lang](https://olivermlang.com/) at the Hertie School, for the Spring Semester of 2026. The lab sessions are led by [Camilo Pedraza Jiménez](https://camilopedrazajimenez.com/). The course was designed based on additinal lecturers, such as Will Lowe, AsyaMagazinnik, Adeline Lo, Matthew Blackwell, Chris Conlon, Felix Elwert and Cyrus Samii.

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

Different theoretical estimands and estimation procedures based on the examples from [Lundberg et al.](https://journals.sagepub.com/doi/10.1177/00031224211004187) are included with additional generated datasets. The replication package from the paper can be found [here](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ASGOVU). At the end of the lab, an extra example using the `lalonde` dataset is briefly implemented.

## Lab 5 (Adjustment, Regression, and Fixed Effects)
In this session we consider the familiar old regression model from a causal point of view, as a generalisation of stratification. In doing so, we discover some curious properties of least-squares estimators. We’ll also revisit the Frisch-Waugh-Lovell decomposition and its relation to statistical control and ‘fixed effects’ as we’ll need it later for Machine Learning extensions.

During the lab, we get a deeper understanding on how to interprete our causal estimate as a marginal effect, how to analyse the omitted variable bias, and how to use sensitivity analysis, based on [Cinelli and Hazlett (2020)](https://academic.oup.com/jrsssb/article/82/1/39/7056023?login=true&guestAccessKey=) to assess the robustness of our estimates. We use the Lalonde dataset to see a practical use of thetopics covered duing the session. At the end of the session, we introduce the `regweight` developed by [Drew Dimmery](https://ddimmery.github.io/regweight/index.html), which in useful when you want to know which observations matter most for a particular regression coefficient. 

## Lab 6 (Weighting)
Regression-type adjustments will take us a long way towards controlling confounding, but sometimes we need more, or different, or both. In this session we’ll consider weighting methods with a focus on models of treatment assignment (a.k.a. the propensity scores) rather than regression’s implicit focus on modelling the the outcome. Having both at once sometimes gets us desirable ‘double robustness’ to model misspecification. 

The lab session focuses on the theoretical aspects of weighting for covariate balance and evaluates different approaches to weighting to estimate the Average Treatment Effects (ATT)  based on the extentions of  [Imbens & Wu (2025)](https://pubs.aeaweb.org/doi/pdfplus/10.1257/jep.20251440) on the  the Lalonde dataset from 1986. A full tutorial on the methodological approaches from the authors can be found [here](https://yiqingxu.org/tutorials/lalonde/).

## Lab 7 (Collider Bias)
Naturally occurring collider bias (where we do not induce it deliberately ourselves) provides a particularly illuminating frame for understanding why all the things you were told not to do in your last statistics class were bad, e.g. selection on the dependent variable, conditioning on post-treatment outcomes, and generally pointing statistical models at data whose provenance you are unsure of. Collider bias is a particular issue for policy students dealing with administrative data that usually created in response to some event, for example a birth, doctor’s appointment, accident, or arrest. Colliders will be particularly troublesome when we try to answer some questions with this kind of non-randomly sampled data. 

During the lab, we look at practical examples with generated data to understand how collider bias happens. We analyze specific data problem that are seen as collider bias and study the particular case of M-bias discused by [Ding & Miratrix (2014)](https://arxiv.org/pdf/1408.0324).

## Lab 8 (Principal stratification & Instrumental Variable)
In this session, we will learn how to use the framework of principal stratification to understand and define causal effects. This framework delineates groups according to how units will respond to different interventions. The discussion of principal stratification motivates discussion of non-compliance in experiments and instrumental variable estimators.

The lab session implements an applied example on IV regression using the `FoxDebate` dataset from an experiment developed by [Albertson  & Lawrence (2009)](https://www.researchgate.net/publication/249691993_After_the_Credits_RollThe_Long-Term_Effects_of_Educational_Television_on_Public_Knowledge_and_Attitudes). In this experiment,  representative sample of survey respondents in Orange County, California, were randomly assigned to receive encouragement to view a Fox debate on affirmative action. With this example, it is possible estimate a local average treatment effect (LATE) on the compliers of the experiment. Additionally, principal stratification is studied by using the `ivdesc` package developed by [Marbach & Hangartner (2020)](https://www.cambridge.org/core/journals/political-analysis/article/profiling-compliers-and-noncompliers-for-instrumentalvariable-analysis/0E2AA51F9BD436A5DB5A84462732A9C3) and [Hangartner et al. (2021)](https://arxiv.org/abs/2103.06328). This package is used to estimate the mean and variance of a covariate for the complier, never-taker and always-taker subpopulation in the context of instrumental variable estimation. 

## Lab 9 (Multivalued and Continuous Instrumental Variables)
In this week, we move beyond the binary IV setup and study what changes when the instrument has more than two values or varies continuously. The main idea is that the 2SLS algebra still works, but the interpretation becomes a weighted average of local responses rather than a single binary-treatment LATE.

The lab is organized around two empirical examples. First, we use the `SchoolingReturns` dataset distributed in the [`ivreg` package](https://zeileis.github.io/ivreg/articles/ivreg.html), based on [Card (1995)](https://www.nber.org/papers/w4483), to study a multivalued instrument for schooling through proximity to different types of 4-year colleges. Second, we use the `birthwt` dataset distributed in the [`micsr` package](https://rdrr.io/cran/micsr/src/R/datasets.R), originally provided by John Mullahy for [Mullahy (1997)](https://rdrr.io/cran/micsr/man/micsr-package.html), to study cigarette taxes as a continuous instrument for maternal smoking. Because students also need to think about final replication projects, each example closes with a feasible extension and a threshold-based approximation for complier profiling.

## Lab 10 (Difference-in-differences)
In this week, we will learn how to analyze the causal effects of policy interventions that “turn on” at a certain point in time for some units but not for others. The discussion of “modern” difference-in-differences estimators motivates a more general discussion of how to choose “clean controls” appropriate to a specific substantive context. 

The lab uses a classroom 2×2 DiD example from [Library of Statistical Techniques (LOST)](https://lost-stats.github.io/Model_Estimation/Research_Design/two_by_two_difference_in_difference.html) on **marijuana legalization and murder rates**, where treated states legalized marijuana in 2014 and control states did not. The session is structured to estimate the DiD effect with average outcomes and then with regression, and evaluate the identifying assumptions of **no anticipation** and **parallel trends**. This lab emphasizes how to choose a clean control group and how to interpret the DiD estimand as an ATT in a 2×2 design.

## Lab 11 (Synthetic control)
In this week, we study synthetic control methods for identifying the effects of policy interventions––including those that are implemented for a single unit. We contrast synthetic control with difference-in-differences to consider how distinct sources of randomness in our design motivate our choice of method in the context of panel data. 

## Lab 12 (Mediation, of the Statistical Kind)
When policy effects can be realised according to several mechanisms at the same time how important is each route? What happens if one offset the effects of the other? Answering these questions is the task of mediation analysis, beloved of psychologists and communication scholars and, we shall see, rather more difficult than they hoped. 
