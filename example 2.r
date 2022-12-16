# define nodes
nodes<-list(
  c(
    x='COVID pandemic\nand burden',
    financial='Financial\nstress',
    y='Adverse\nmental health'  
  ),
  c(
    z='Safety-net\npolicies',
    vulnerability='Socioeconomic\nvulnerability'
  )
)

# define edges
edges<-list(
  c('x','financial','blue'),
  c('financial','y','blue'),
  c('z','financial','red'),
  c('vulnerability','x'),
  c('vulnerability','financial')
)

# define colors
node_colors<-list(
  powderblue=c('x','y'),
  pink='z'
)

# draw the dag
draw_a_dag(nodes,edges,node_colors)