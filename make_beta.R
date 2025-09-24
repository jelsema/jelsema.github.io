




library("tidyverse")



x <- seq(0,1,length.out=1000)
y <- dbeta( x, 2, 11 )


png( "beta.png", width = 600 , height = 600  )


par( mar=c(0,0,0,0) )

plot( 
  y ~ x , type="l" ,
  xaxt='n', yaxt='n',
  xlab="", ylab="",
  col="steelblue3",
  lwd=6,
  frame=FALSE,
  xlim=c(0,0.75)
)

points(
  x = rep( qbeta(0.9,2,11), 2 ),
  y = c(0,dbeta(qbeta(0.9,2,11),2,11)),
  type="l", col="indianred3",
  lwd=6
)

points(
  x=c(0,0.75),
  y=c(0,0),
  type="l", col="black", lwd=4
)

# export size:

dev.off()

