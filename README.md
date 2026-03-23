
## 2) First-time install from GitHub (RStudio)

Open RStudio Console and run:

```r
install.packages("remotes")
remotes::install_github("kasinathca/rpackage-adv")
library(mypackage)
```

If the package is private, set a GitHub token first:

```r
Sys.setenv(GITHUB_PAT = "YOUR_PERSONAL_ACCESS_TOKEN")
remotes::install_github("kasinathca/rpackage-adv")
```

## 3) Verify installation

```r
library(mypackage)

s <- list_scripts()
length(s)        # expected: 88
head(s, 88)
```

## 4) See all script names

```r
s <- list_scripts()
print(s)
# Better table view:
data.frame(index = seq_along(s), script = s)
```

## 5) Open one script

Open in editor:

```r
view_script("exp_1_1_3d_array_creation")
```

Print in console:

```r
view_script("exp_1_1_3d_array_creation", print_only = TRUE)
```

## 6) Run one script

```r
run_script("exp_1_1_3d_array_creation")
```

## 7) Dependencies for individual scripts

Each script contains a header section named Required packages with install commands as comments.

To inspect dependency comments for one script:

```r
scripts_dir <- system.file("scripts", package = "mypackage")
readLines(file.path(scripts_dir, "exp_4_12_ggplot_scatter_pop_vs_gdppercap_1952.R"), n = 25)
```

If a script fails with "there is no package called ...", install the missing package and rerun:

```r
install.packages("ggplot2")
# then
run_script("exp_4_12_ggplot_scatter_pop_vs_gdppercap_1952")
```

## 8) Update to latest GitHub version

```r
remotes::install_github("kasinathca/rpackage-adv", force = TRUE)
```

## 9) Optional: install from local tar.gz

```r
install.packages("mypackage_0.1.0.tar.gz", repos = NULL, type = "source")
library(mypackage)
```

## 10) Useful filters

```r
# all Experiment 4 scripts
grep("^exp_4_", list_scripts(), value = TRUE)

# scripts related to shiny, clustering, ggplot
grep("shiny|cluster|ggplot", list_scripts(), value = TRUE)
```
