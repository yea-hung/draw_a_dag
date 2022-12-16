# load packages
library(DiagrammeR)
library(DiagrammeRsvg) # for exporting the image to pdf
library(rsvg) # for exporting the image to pdf

# load function
source('draw_a_dag.r')

# define nodes
nodes<-list(
  c(
    age='Age',
    sex='Sex'
  ),
  c(
    x='Exposure',
    y='Outcome'  
  ),
  c(
    selection='Selection'
  )
)

# define arrows
arrows<-list(
  c('x','y','blue'),
  c('age','x'),
  c('age','y'),
  c('sex','x'),
  c('sex','y'),
  c('x','selection','red'),
  c('y','selection','red')
)

# define colors
node_colors<-list(
  powderblue=c('x','y'),
  pink='selection'
)

# draw the dag
draw_a_dag(nodes,arrows,node_colors)

# output the dag to pdf
rsvg_pdf(charToRaw(export_svg(draw_a_dag(nodes,arrows,node_colors))),
         'example.pdf')