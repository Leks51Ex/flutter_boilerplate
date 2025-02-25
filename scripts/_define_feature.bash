#! /usr/bin/bash

features=$1
dir=$2

if [ -z "$dir" ] 
then
  echo "Name of feature have to be provided"
  exit 1
fi

if [ ! -d "$features" ]
then
  echo "Creating features folder at `$features`"
  mkdir $features
fi

featurePath="$features/$dir"

if [ -d "$featurePath" ] 
then
  echo "Provided feature name is already exists";
  exit 1
fi

structure=("$featurePath/data/"{datasources,dto,repositories} "$featurePath/domain/"{entities,contracts,usecases} "$featurePath/presentation/"{logic,pages,widgets,models,wm})

echo "Executing feature folders structure creation...."

for t in ${structure[@]}; do
  echo $t
  mkdir -p $t
done