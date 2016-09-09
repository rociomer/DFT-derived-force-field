#!/bin/bash

# Gives arbitrary labels to the different atom types
# Useful for converting between formats while keeping track
# of the different atom types.

fromMof_XxToXx=false
fromXxToMof_Xx=false
fromMof_XxToRealAtoms=true
fileExt="cssr"

# Relabeling from force field atom types to arbitrary labels:

if $fromMof_XxToXx ; then
  for i in *.${fileExt}; 
  do 
    sed -i 's/Mof_Oa/O/g' $i
    sed -i 's/Mof_Ob/Br/g' $i
    sed -i 's/Mof_Oc/Cl/g' $i
    sed -i 's/Mof_Ca/C/g' $i
    sed -i 's/Mof_Cb/F/g' $i
    sed -i 's/Mof_Cc/N/g' $i
    sed -i 's/Mof_Cd/Li/g' $i
    sed -i 's/Mof_H/H/g' $i
    sed -i 's/Mof_Co/Co/g' $i
    sed -i 's/Mof_Mg/Mg/g' $i
    sed -i 's/Mof_Mn/Mn/g' $i
    sed -i 's/Mof_Fe/Fe/g' $i
    sed -i 's/Mof_Zn/Zn/g' $i
    sed -i 's/Mof_Ni/Ni/g' $i
  done
fi

# Labeling back to correct atom types:

if $fromXxToMof_Xx ; then
  for i in *.${fileExt}
  do 
    sed -i 's/O/Mof_Oa/g' $i
    sed -i 's/Br/Mof_Ob/g' $i
    sed -i 's/Cl/Mof_Oc/g' $i
    sed -i 's/C/Mof_Ca/g' $i
    sed -i 's/F/Mof_Cb/g' $i
    sed -i 's/N/Mof_Cc/g' $i
    sed -i 's/Li/Mof_Cd/g' $i
    sed -i 's/H/Mof_H/g' $i
    sed -i 's/Co/Mof_Co/g' $i
    sed -i 's/Mg/Mof_Mg/g' $i
    sed -i 's/Mn/Mof_Mn/g' $i
    sed -i 's/Fe/Mof_Fe/g' $i
    sed -i 's/Zn/Mof_Zn/g' $i
    sed -i 's/Ni/Mof_Ni/g' $i
  done
fi

# Label with correct atom (for vizualization)

if $fromMof_XxToRealAtoms ; then
  for i in *.${fileExt}; 
  do 
    sed -i 's/Mof_Oa/O/g' $i
    sed -i 's/Mof_Ob/O/g' $i
    sed -i 's/Mof_Oc/O/g' $i
    sed -i 's/Mof_Ca/C/g' $i
    sed -i 's/Mof_Cb/C/g' $i
    sed -i 's/Mof_Cc/C/g' $i
    sed -i 's/Mof_Cd/C/g' $i
    sed -i 's/Mof_H/H/g' $i
    sed -i 's/Mof_Co/Co/g' $i
    sed -i 's/Mof_Mg/Mg/g' $i
    sed -i 's/Mof_Mn/Mn/g' $i
    sed -i 's/Mof_Fe/Fe/g' $i
    sed -i 's/Mof_Zn/Zn/g' $i
    sed -i 's/Mof_Ni/Ni/g' $i
  done
fi
