# requires the “starling” packages to run
# also required: additional packages, install them by running the following function:
packagesNeeded()

##################################################
### step 1: setting directory and opening file
# set directory images
direcPictures="/Users/Selwyn/Desktop/Images" # path to folder, between brackets
# function 1: list all files in folder choosen
listbirdfiles(direcPictures) 

### step 2: setting threshold
# settings 
image_to_open=3 # choose image to open from list (state number of image in list)
Threshold=0.0 # Threshold is set automatically but can be altered for better results (higher values -> more objects highlighted)
# function 2: setting threshold
setThreshold(image_to_open,Threshold)

### step 3: creating layer with unwanted objects (if necessary, otherwise continue with the next step)
# settings
maxsize=200 # max size bird patches, see histogram for possible adjustment (200=default, if when 0 is entered as value)
minsize=0 # min size bird patches (0=default, if when 0 is entered as value)
# function 3: creating layer with unwanted objects 
backgroundObjects(maxsize,minsize)

### step 4: dividing remaining patches in two groups and displaying results
# settings
step3=1 # 1 for if step 3 was used, 0 when skipping the 3rd step
adjustdivision=0 # may need adjustment when not choosing size catagories correct (0=default, if when 0 is entered as value)
# function 4: dividing remaining patches in two groups and displaying results
divideResults(step3,adjustdivision)

