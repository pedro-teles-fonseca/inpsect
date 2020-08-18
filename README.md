
<!-- README.md is generated from README.Rmd. Please edit that file -->

# inspect: Validation of Arguments and Objects in User-Defined Functions

<!-- badges: start -->

[![Build
Status](https://travis-ci.com/pedro-teles-fonseca/inspect.svg?branch=master)](https://travis-ci.com/pedro-teles-fonseca/inspect)
[![R build
status](https://github.com/pedro-teles-fonseca/inpsect/workflows/R-CMD-check/badge.svg)](https://github.com/pedro-teles-fonseca/inpsect/actions)
![pkgdown](https://github.com/pedro-teles-fonseca/inspect/workflows/pkgdown/badge.svg)
[![codecov](https://codecov.io/gh/pedro-teles-fonseca/inspect/branch/master/graph/badge.svg?)](https://codecov.io/gh/pedro-teles-fonseca/inspect)
[![License:
GPLv3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
<!-- badges: end -->

## Overview

The `inspect` package provides a set of utility functions that implement
common sets of validation tasks, namely:

  - `inspect_prob()` checks if an object is a numeric vector of valid
    probability values.

  - `inspect_bf` checks if an object is a numeric vector of valid Bayes
    factor values.

  - `inspect_log_bf` checks if an object is a numeric vector of valid
    logarithmic Bayes factor values.

  - `inspect_log_base` checks if an object is a numeric vector of length
    1 that is eligible to be used as a logarithmic base.

  - `inspect_true_or_false` checks if an object is a logical vector of
    length 1 with value equal to `TRUE` or `FALSE`.

  - `inspect_scale` checks if an object is a string of characters
    representing one of the Bayes factor interpretation scales available
    in the `pcal` package.

These functions are particularly useful to validate inputs, intermediate
objects and output values in user-defined functions, resulting in tidier
and less verbose functions.

## Installation

The development version of `inspect` can be installed from
[GitHub](https://github.com/) using the `devtools` package:

``` r
# install.packages("devtools")
devtools::install_github("pedro-teles-fonseca/inspect")
```

## Usage

## Getting Help

If you find a bug, please file an issue with a minimal reproducible
example on [GitHub](https://github.com/pedro-teles-fonseca/inspect).
Feature requests are also welcome. You can contact me at
<pedro.teles.fonseca@outlook.com>.
