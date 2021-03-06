\name{NEWS}
\title{News for Package 'RQuantLib'}
\newcommand{\cpkg}{\href{http://CRAN.R-project.org/package=#1}{\pkg{#1}}}

\section{Changes in RQuantLib version 0.4.0 (2014-12-01)}{
  \itemize{
    \item Changes in RQuantLib code:
    \itemize{
      \item All function interfaces have been rewritten using \cpkg{Rcpp}
      Attributes. No \code{SEXP} remain in the function signatures. This
      make the code shorter, more readable and more easily extensible. 
      \item The header files have been reorganized so that plugin use is
      possible. An \code{impl.h} files is imported once for each compilation
      unit: for RQuantLib from the file \code{src/dates.cpp} directory, from 
      a sourced file via a \code{#define} set by the plugin wrapper.
      \item \code{as<>()} and \code{wrap()} converters have added for
      QuantLib Date types.
      \item Plugin support has been added, allowing more ad-hoc use via Rcpp
      Attributes.
      \item Several Fixed Income functions have been added, and/or
      rewritten to better match the QuantLib signatures; this was done
      mostly by Michele Salvadore.
      \item Several Date and Calendar functions have been added.
      \item Calendar support has been greatly expanded thanks to Danilo
      Dias da Silva. 
      \item Exported curve objects are now more parsimonious and advance
      entries in the \code{table} object roughly one business month at a
      time.
      \item The \code{DiscountCurve} and \code{Bond} curve construction
      has been fixed via a corrected evaluation date and omitted the
      two-year swap rate, as suggested by Luigi Ballabio.
      \item The \code{NAMESPACE} file has a tighter rule for export of
      \code{*.default} functions, as suggested by Bill Dunlap
      \item Builds now use OpenMP where available.
      \item The package now depends on QuantLib 1.4.0 or later.
    }
    \item Changes in RQuantLib tests:
    \itemize{
      \item New unit tests for dates have been added.
      \item C++ code for the unit tests has also been converted to
      \cpkg{Rcpp} Attributes use; a helper function
      \code{unitTestSetup()} has been added.
      \item Continuous Integration via Travis is now enabled from the
      GitHub repo.
    }
    \item Changes in RQuantLib documentation:
    \itemize{
      \item This NEWS file has been added. Better late than never, as
      they say.
    }
  }
}
