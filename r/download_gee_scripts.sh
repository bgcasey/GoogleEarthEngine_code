

## Bring GEE scripts into the current rProject by cloning the GEE git and copying over the .js files.

# set directory to clone GEE git into (should be empty)
cd javascript

# delete all .js files in directory
rm *.js

# clone gee scripts
git clone https://earthengine.googlesource.com/users/bgcasey/climate_downscaling

# add the .js file extention to files
find climate_downscaling -type f -not -name "*.*" -exec mv "{}" "{}".js \;

# move .js files up a directory
mv -v climate_downscaling/*.js .

# move functions folder up a directory
mv -v climate_downscaling/functions/ .

# delete .git folder
rm -r climate_downscaling/
