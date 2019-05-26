rdt<-function(tt) {
	tsubject<-as.data.frame(read.table(paste(tt,"/subject_",tt,".txt",sep="")))
	tmeasurement<-as.data.frame(read.table(paste(tt,"/X_",tt,".txt",sep="")))
	tactivity<-as.data.frame(read.table(paste(tt,"/y_",tt,".txt",sep="")))
	ttdt<-cbind(tsubject,tactivity,tmeasurement)
	names(ttdt)<-c("subject","activity","measurment")
	return(ttdt)
}

mergetesttrain<-function(dt1,dt2){
	dtm<-rbind(dt1,dt2)
	return(dtm)
}

convertdt<-function(ttdt) {
	features<-as.data.frame(read.table('features.txt'))
	activity_labels<-as.data.frame(read.table('activity_labels.txt'))
	merged<-nergetesttrain(rdt('test'),rdt('train'))
}