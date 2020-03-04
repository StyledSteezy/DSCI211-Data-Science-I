library(png)
library(pracma)
library(zoo)

n <- length(list.files("frames3/", "frame.*")) # Number of frames
r <- 30.005392    # frame rate
ts <- (0:(n-1))/r # time of each index

# Your initialization here
vect = c()
for (i in 1:n) {
  name <- sprintf("frames3/frame%05d.png", i)
  frame <- readPNG(name)
  rs <- frame[,,1] # Matrix of red values
  gs <- frame[,,2] # Matrix of green values
  bs <- frame[,,3] # Matrix of blue values
  vect = c(vect, mean(rs))
  # Per frame computation here
}
print(vect)
plot(vect, type="l")
smooth <- rollapply(vect, width=13, FUN=mean, align = "center", fill=NA)
plot(smooth, type = "l")
length(findpeaks(smooth))
