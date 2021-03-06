% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getDAregion.R
\name{getDAregion}
\alias{getDAregion}
\title{DA-seq Step 3: get DA regions}
\usage{
getDAregion(X, da.cells, cell.labels, labels.1, labels.2,
  prune.SNN = 1/15, resolution = 0.05, group.singletons = F,
  min.cell = 10, do.plot = T, plot.embedding = NULL, size = 0.5,
  ...)
}
\arguments{
\item{X}{size N-by-p matrix, input merged dataset of interest after dimension reduction}

\item{da.cells}{output from getDAcells() or updateDAcells()}

\item{cell.labels}{size N vector, labels for each input cell}

\item{labels.1}{vector, label name(s) that represent condition 1}

\item{labels.2}{vector, label name(s) that represent condition 2}

\item{prune.SNN}{parameter for Seurat function FindNeighbors(), default 1/15}

\item{resolution}{parameter for Seurat function FindClusters(), default 0.05}

\item{group.singletons}{parameter for Seurat function FindClusters(), default True}

\item{min.cell}{integer, number of cells below which a DA region will be removed as outliers, default 10}

\item{do.plot}{a logical value to indicate whether to return ggplot objects showing the results, default True}

\item{plot.embedding}{size N-by-2 matrix, 2D embedding for the cells}

\item{size}{cell size to use in the plot, default 0.5}

\item{...}{other parameters to pass to Seurat FindClusters()}
}
\value{
a list of results
\describe{
  \item{da.region.label}{DA region label for each cell from the whole dataset,
  '0' represents non-DA cells.}
  \item{DA.stat}{a table showing DA score and p-value for each DA region}
  \item{da.region.plot}{ggplot object showing DA regions on plot.embedding}
}
}
\description{
Cluster the DA cells retained from Step 1 and Step 2 of DA-seq to obtain spatially
coherent DA regions.
}
