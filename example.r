# define nodes
nodes<-list(
  c(
    age='Age',
    sex='Sex'
  ),
  c(
    x='Smoking',
    y='Cancer'  
  ),
  c(
    patio='Patio'
  )
)

# define edges
edges<-list(
  c('x','y','blue'),
  c('age','x'),
  c('age','y'),
  c('sex','x'),
  c('sex','y'),
  c('x','patio','red')
)

# define colors
node_colors<-list(
  powderblue=c('x','y'),
  pink='patio'
)

# draw the dag
draw_a_dag(nodes,edges,node_colors)