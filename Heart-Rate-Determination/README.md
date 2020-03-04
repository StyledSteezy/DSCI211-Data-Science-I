# Heart Rate Determination Group Project
Take image data captured from someones finger on the lens of a cell phone's camera and determine their heart rate. Make the process as automated as possible. 

# Template
This was the R template that was given to the groups to help us get started:
```R
library(png)
                
n <- length(list.files("frames/", "frame.*")) # Number of frames
r <- 30.005392    # frame rate
ts <- (0:(n-1))/r # time of each index

# Your initialization here

for (i in 1:n) {
  name <- sprintf("frames/frame%05d.png", i)
  frame <- readPNG(name)
  rs <- frame[,,1] # Matrix of red values
  gs <- frame[,,2] # Matrix of green values
  bs <- frame[,,3] # Matrix of blue values

  # Per frame computation here
}

# final computation and visualization here
```

# Frames
Because this project entailed breaking videos down into frames there were over 2,000 frames.

To get the frames go here:
https://drive.google.com/drive/folders/1pH72ZjDIFfnETgUK1LmMkQAExWVlqkFy?usp=sharing

# Contributors
Christian Tomford, Jon Mayer, and Titus Snavely
