\name{InfiniumPurifyR}
\alias{InfiniumPurifyR}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Estimate tumor enrichment using the InfiniumPurify method in R.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
InfiniumPurifyR(df,calcPurity=TRUE,returnDMPonly=FALSE,plotunimod=FALSE,hyper=NULL,hypo=NULL,
                            getDMPs=FALSE,dmpVariablename=NULL, dmpVariancefiltTissue=NULL,
                            nsigprobes=NULL,varfilt=NULL,plotunimod.main=NULL,plotunimod.ymax=NULL)
}
\arguments{
  \item{df}{Beta-value matrix (rows=markers,cols=samples) or minfi experiment summary object.
}
\item{calcPurity}{Should a purity estimate be returned? Requires hyper and hypo cpgs be specified.
}
\item{returnDMPonly}{Should differentially methylated and variable CpG probe list be returned? If TRUE, then no purity is calculated or unimodal plots generated.
}
\item{plotunimod}{Should a plot of overlayed sample densities of the probe Beta-values (with hypomethylated probes transformed to be 1 - Beta-val.) be returned? Requires hyper- and hypo-methylated probes be provided.
}
\item{hyper}{List of CpG probe IDs that are hypermethylated in tumor compared to normal samples (Beta-values remain untransformed for purity est.)
}
\item{hypo}{List of CpG probe IDs that are hypomethylated in tumor compared to normal samples (Beta-values are transformed as 1 - Beta-val.).
}
\item{getDMPs}{Whether to calculate differentially methylated and variable CpG markers. Requires dmpVariablename and dmpVariancefiltTissue be provided.
}
\item{dmpVariablename}{The character name of the variable containing tissue types to be used in calculated differential methylation. This should be accessable as in a minfi experiment summary object (eg. using `objectname`$`dmpVariablename` or pData(`objectname`)$`dmpVariablename`).
}
\item{dmpVariancefiltTissue}{Name of tissue type (in variable labeled as `dmpVariablename`) to be used as the reference for hypervariability when filtering DMPs. 
}
\item{nsigprobes}{How many DMPs should be returned after filtering? 
}
\item{varfilt}{What threshold for variance should be used to filter DMPs? Defaults to the top quantile of variant CpGs in the reference tissue (`dmpVariancefiltTissue`).
}
\item{plotunimod.main}{Main title for the plot of density overlays, if plotunimod=TRUE.}
\item{plotunimod.ymax}{Maximum y-axis value for the plot of density overlays, if plotunimod=TRUE.}
}
\value{
List of objects as specified. 
\item{DMPs}{Differentially methylated and variant CpGs.}
\item{IPR estimates}{Purity estimates from hyper/hypo CpGs.}
\item{Plot}{Overlay density plot of Beta-values/1 - Beta-values at DMPs.}
}
\references{
Zhang N, et. al. Predicting tumor purity from methylation microarray data. Bioinformatics. 2015 Nov 1;31(21):3401-5
}
\author{
smaden
}
