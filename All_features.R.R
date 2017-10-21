nofsubsessions<-function(t){
  
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  for(i in 1:length(t)){
    n<-strsplit(m[[i]][2],";")
    u[i]<-length(n[[1]])
  }
  u[is.na(t)]<-NA
  u
}


maxvps<-function(t){
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  print(m)
  for(i in 1:length(t)){
    if(is.na(t[i])==FALSE){
      
      n<-strsplit(m[[i]][2],";")
      
      y<-rep(0,length(n[[1]]))
      
      for(j in 1:length(n[[1]])){
        y[j] <-strsplit(n[[1]][j],"#")[[1]][3]
        print(y[j])
      }
      print(y)
      u[i]<-max(as.numeric(y)) 
      print(u[i])
    }
  }
  
  u[is.na(t)]<-"NA"
  u
}

avgpacksec<-function(t){
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  for(i in 1:length(t)){
    if(is.na(t[i])==FALSE){
      
      n<-strsplit(m[[i]][2],";")
      y<-rep(0,length(n[[1]]))
      g<-rep(0,length(n[[1]]))
      for(j in 1:length(n[[1]])){
        y[j] <-strsplit(n[[1]][j],"#")[[1]][2]
        g[j]<-strsplit(n[[1]][j],"#")[[1]][1]
        
      }
      u[i]<-sum(as.numeric(y))/(max(as.numeric(g))+1)
      
    }
  }
  
  u[is.na(t)]<-"NA"
  u
  
  
}


avgpacksubsesses<-function(t){
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  for(i in 1:length(t)){
    if(is.na(t[i])==FALSE){
      
      n<-strsplit(m[[i]][2],";")
      y<-rep(0,length(n[[1]]))
      g<-rep(0,length(n[[1]]))
      for(j in 1:length(n[[1]])){
        y[j] <-strsplit(n[[1]][j],"#")[[1]][2]
        g[j]<-strsplit(n[[1]][j],"#")[[1]][1]
        
      }
      u[i]<-sum(as.numeric(y))/length(n[[1]])
      
    }
  }
  
  u[is.na(t)]<-"NA"
  u
  
  
}

avgvolprsc<-function(t){
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  for(i in 1:length(t)){
    if(is.na(t[i])==FALSE){
      
      n<-strsplit(m[[i]][2],";")
      y<-rep(0,length(n[[1]]))
      g<-rep(0,length(n[[1]]))
      for(j in 1:length(n[[1]])){
        y[j] <-strsplit(n[[1]][j],"#")[[1]][3]
        g[j]<-strsplit(n[[1]][j],"#")[[1]][1]
        
      }
      u[i]<-sum(as.numeric(y))/(max(as.numeric(g))+1)
      
    }
  }
  
  u[is.na(t)]<-"NA"
  u
  
  
}


avgvolsubsesses<-function(t){
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  for(i in 1:length(t)){
    if(is.na(t[i])==FALSE){
      
      n<-strsplit(m[[i]][2],";")
      y<-rep(0,length(n[[1]]))
      g<-rep(0,length(n[[1]]))
      for(j in 1:length(n[[1]])){
        y[j] <-strsplit(n[[1]][j],"#")[[1]][3]
        g[j]<-strsplit(n[[1]][j],"#")[[1]][1]
        
      }
      u[i]<-sum(as.numeric(y))/length(n[[1]])
      
    }
  }
  
  u[is.na(t)]<-"NA"
  u
  
  
}


dnPercSubssnTotVolGt1024<-function(t){
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  for(i in 1:length(t)){
    if(is.na(t[i])==FALSE){
      
      n<-strsplit(m[[i]][2],";")
      y<-rep(0,length(n[[1]]))
      g<-rep(0,length(n[[1]]))
      for(j in 1:length(n[[1]])){
        y[j] <-strsplit(n[[1]][j],"#")[[1]][3]
        g[j]<-strsplit(n[[1]][j],"#")[[1]][1]
        
      }
      d<-as.numeric(y)>1024
      u[i]<-length(y[d])/length(n[[1]])
      
    }
  }
  
  u[is.na(t)]<-"NA"
  u
  
  
}


dnPercSubssnTotVolGt500<-function(t){
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  for(i in 1:length(t)){
    if(is.na(t[i])==FALSE){
      
      n<-strsplit(m[[i]][2],";")
      y<-rep(0,length(n[[1]]))
      g<-rep(0,length(n[[1]]))
      for(j in 1:length(n[[1]])){
        y[j] <-strsplit(n[[1]][j],"#")[[1]][3]
        g[j]<-strsplit(n[[1]][j],"#")[[1]][1]
        
      }
      d<-as.numeric(y)>500
      u[i]<-length(y[d])/length(n[[1]])
      
    }
  }
  
  u[is.na(t)]<-"NA"
  u
  
  
}

dnPercSubssnVolperpackGt500<-function(t){
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  for(i in 1:length(t)){
    if(is.na(t[i])==FALSE){
      
      n<-strsplit(m[[i]][2],";")
      y<-rep(0,length(n[[1]]))
      g<-rep(0,length(n[[1]]))
      a<-rep(0,length(n[[1]]))
      for(j in 1:length(n[[1]])){
        y[j] <-strsplit(n[[1]][j],"#")[[1]][3]
        g[j]<-strsplit(n[[1]][j],"#")[[1]][2]
        a[j]<-as.numeric(y[j])/as.numeric(g[j])
      }
      
      d<-as.numeric(a)>500
      u[i]<-length(y[d])/length(n[[1]])
      
    }
  }
  
  u[is.na(t)]<-"NA"
  u
  
  
}

dnPercSubssnVolperpackGt1024<-function(t){
  u<-rep(0,length(t))
  t<-as.character(t)
  m<-strsplit(t,"=")
  for(i in 1:length(t)){
    if(is.na(t[i])==FALSE){
      
      n<-strsplit(m[[i]][2],";")
      y<-rep(0,length(n[[1]]))
      g<-rep(0,length(n[[1]]))
      a<-rep(0,length(n[[1]]))
      for(j in 1:length(n[[1]])){
        y[j] <-strsplit(n[[1]][j],"#")[[1]][3]
        g[j]<-strsplit(n[[1]][j],"#")[[1]][2]
        a[j]<-as.numeric(y[j])/as.numeric(g[j])
      }
      
      d<-as.numeric(a)>1024
      u[i]<-length(y[d])/length(n[[1]])
      
    }
  }
  
  u[is.na(t)]<-"NA"
  u
  
  
}

newapp<-function(y,j,jend,modified,database){
  for(i in 1:length(y)){
    d<-NULL
    for(h in 1:length(j)){
      d<-between(y[i],j[h],jend[h])
      
      
      if(d==TRUE){modified$test[i]<<-as.character(database$appname[h])}
      
      if(d==TRUE){modified$mimetype[i]<<-as.character(database$mime_type[h])}
      
      
      
    }
    
  }
  
  
  
}
