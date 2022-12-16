# define function
draw_a_dag<-function(nodes,arrows,node_colors,hsep=NULL){
  if(is.null(hsep)){ hsep<-0.5 }
  top<-c(
    'digraph G {',
    'rankdir=TB;',
    paste('nodesep=',hsep,';',sep=''),
    'node [fontname="Arial",shape=box,style=filled,color=lightgray];'
  )
  nodes<-sapply(1:length(nodes),function(group){
    code<-sapply(1:length(nodes[[group]]),function(ee){ 
      paste(names(nodes[[group]])[ee],
            ' [label="',nodes[[group]][ee],'"];',sep='')
    })
    paste(c('{ rank=same;',code,'}'),collapse=' ')
  })
  arrows<-sapply(1:length(arrows),function(ee){
    code<-paste(arrows[[ee]][1],' -> ',arrows[[ee]][2],sep='')
    if(length(arrows[[ee]])==3){
      code<-paste(code,' [color=',arrows[[ee]][3],']',sep='')
    }
    paste(code,';',sep='')
  })
  node_colors<-unlist(sapply(1:length(node_colors),function(group){
    sapply(1:length(node_colors[[group]]),function(ee){ 
      paste(node_colors[[group]][ee],' [color=',
            names(node_colors)[group],'];',sep='')
    })
  }))
  bottom<-c('}')
  code<-paste(c(top,nodes,arrows,node_colors,bottom),collapse='\n')
  DiagrammeR(code,type='grViz')
}