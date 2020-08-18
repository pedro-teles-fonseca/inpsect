
<!-- README.md is generated from README.Rmd. Please edit that file -->

# inspect: Validation of Arguments and Objects in User-Defined Functions

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/inspect)](https://CRAN.R-project.org/package=inspect)
[![Build
Status](https://travis-ci.com/pedro-teles-fonseca/inspect.svg?branch=master)](https://travis-ci.com/pedro-teles-fonseca/inspect)
[![R build
status](https://github.com/pedro-teles-fonseca/inpsect/workflows/R-CMD-check/badge.svg)](https://github.com/pedro-teles-fonseca/inpsect/actions)
![pkgdown](https://github.com/pedro-teles-fonseca/inspect/workflows/pkgdown/badge.svg)
[![codecov](https://codecov.io/gh/pedro-teles-fonseca/inspect/branch/master/graph/badge.svg)](https://codecov.io/gh/pedro-teles-fonseca/inspect)
[![License:
GPLv3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
<!-- badges: end -->

## Overview

Set of utility functions that implement common checks on input values,
intermediate objects and output values of user-defined functions:

  - `inspect_prob()` checks if an object is a numeric vector of valid
    probability values. This can be useful to validate inputs,
    intermediate calculations or outputs in user-defined functions.

  - `inspect_bf` checks if an object is a numeric vector of valid Bayes
    factor values. This can be useful to validate inputs, intermediate
    calculations or outputs in user-defined functions.

  - `inspect_log_bf` checks if an object is a numeric vector of valid
    logarithmic Bayes factor values. This can be useful to validate
    inputs, intermediate calculations or outputs in user-defined
    functions.

  - `inspect_log_base` checks if an object is a numeric vector of  1
    that is eligible to be used as a logarithmic base. This can be
    useful to validate inputs in user-defined functions.

  - `inspect_true_or_false` checks if an object is a logical vector of 
    1 with value equal to `TRUE` or `FALSE`. This can be useful to
    validate inputs in user-defined functions.

  - `inspect_scale` checks if an object is a string of characters
    representing one of the Bayes factor interpretation scales available
    in the `pcal` package. This can be useful to validate inputs in
    user-defined functions.

## Installation

The released version of `inspect` can be installed from
[CRAN](https://CRAN.R-project.org) with:

``` inspect
install.packages("pcal")
```

The development version can be installed from
[GitHub](https://github.com/) using the `devtools` package:

``` r
# install.packages("devtools")
devtools::install_github("pedro-teles-fonseca/inspect")
```

## Usage

## Getting Help

If you find a bug, please file an issue with a minimal reproducible
example on
[GitHub](https://github.com/pedro-teles-fonseca/pcal/inspect). Feature
requests are also welcome. You can contact me at
<pedro.teles.fonseca@outlook.com>.
