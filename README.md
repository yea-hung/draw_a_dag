# Description

R code for drawing a DAG (directed acyclic graph).

# Dependencies

- *DiagrammeR*

# Use

Define the nodes, as a list. The list should contain one or more character vector, with named elements. Each character vector defines a row in the desired DAG. For example:

```
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
```

Here, there are 3 character vectors, indicating we want 3 rows. The first character vector defines two nodes, `age` and `sex`, with the display names "Age" and "Sex."

Define the arrows as a list. The list should contain one or more character vector. Each character vector defines an arrow. For example:

```
arrows<-list(
  c('x','y','blue'),
  c('age','x'),
  c('age','y'),
  c('sex','x'),
  c('sex','y'),
  c('x','patio','red')
)
```

The first character vector defines an arrow that begins from `x` and ends with `y`, and will be `blue`. A full list of possible colors is available [here](https://graphviz.org/doc/info/colors.html).

Define node colors as a list, with named elements. The list should contain one or more character vector. For example:

```
node_colors<-list(
  powderblue=c('x','y'),
  pink='patio'
)
```

The first element indicates that we want `x` and `y` to be `powderblue`.

To draw the DAG:

```
draw_a_dag(nodes,arrows,node_colors)
```
