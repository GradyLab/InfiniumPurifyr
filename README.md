# InfiniumPurifyr
Estimate tumor enrichment from methylation array data. This package is downloadable using the following in R:   
`require(devtools);   install_github("metamaden/InfiniumPurifyr")`

## Description
InfiniumPurifyr (IPR) estimates tumor purity as the maximum mode in a distribution of Beta-values at differentially and variably methylated CpG probes (DMVPs, tumor vs. normal-matched samples), where hypomethylated DMVPs (tumor < normal-matched) are transformed to be 1 - Beta-value. 

This package is an adaptation of the python-encoded InfiniumPurify method, described for HM450 data in [Zhang et al 2016](https://www.ncbi.nlm.nih.gov/pubmed/26112293).

The workflow described in Zhang et al is as follows: 
![alt text](https://github.com/metamaden/InfiniumPurifyr/blob/master/ipr_workflow.jpg "IPR function")

The implementation in InfiniumPurifyR is as follows:
![alt text](https://github.com/metamaden/InfiniumPurifyr/blob/master/ipr_fun.jpg "IPR function")

## Example


An example is with a set of esophageal adenocarcinoma samples with subtypes HM, IM, LM, and MM. Using DMVPs derived from TCGA EACs as in the workflow above, we generate the following unimodal distributions with `plotunimod=TRUE`:
![alt text](https://github.com/metamaden/InfiniumPurifyr/blob/master/ipr_exe.jpg "Unimodal Distributions")

## News

12/1/2017: An official port is offered by the original authors on CRAN [here](https://cran.r-project.org/web/packages/InfiniumPurify/index.html). Findings have been validated for ESCA iDMPs using both packages, and purity results are identical.

#
