var fso,s,f,i;
function convert(inf,out,bh,lim){
fso=new ActiveXObject("Scripting.FileSystemObject");
if(!fso.FileExists(inf))return;
s=fso.OpenTextFile(file=inf,1);
f=fso.CreateTextFile(file=out,true);
while(!s.AtEndOfStream){
  f.Write(bh);
  for(i=0;i<lim && !s.AtEndOfStream;i++){
   f.Write(" "+s.readLine().replace("0.0.0.0 ",""));
  }
  f.Write("\n");
}
s.Close();
f.Close();
}
convert("final-hosts.txt","HOSTS","0.0.0.0",7);
