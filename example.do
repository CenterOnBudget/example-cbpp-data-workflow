
clear

forvalues wave = 3/4 {
  /* The wave 3 file has a suffix in the filename */
  local suff = cond(`wave' == 3, "_v13", "")
  #delimit ;
  /* Append multiple files */
  append using "data/pu2014w`wave'`suff'.dta",
    /* Subset of variables to load */
    keep(
      ssuid pnum swave monthcode wpfinwgt
      tage_ehc tage erace eorigin
      emdmth essi_bmonth esssmnyn essrsn2yn tfincpov
      tmwkhrs amwkhrs twkhrs1 twkhrs2 twkhrs3 twkhrs4 twkhrs5
    ) ;
  #delimit cr
}

* Remainder of the analysis occurs in-memory