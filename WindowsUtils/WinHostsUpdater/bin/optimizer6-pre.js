var fso,s,f,i;
function convert(inf,out,bh,lim){
fso=new ActiveXObject("Scripting.FileSystemObject");
if(!fso.FileExists(inf))return;
s=fso.OpenTextFile(file=inf,1);
f=fso.CreateTextFile(file=out,true);
while(!s.AtEndOfStream){
  f.Write(bh);
  for(i=0;i<lim && !s.AtEndOfStream;i++){
   f.Write(" "+s.readLine().replace(":: ",""));
  }
  f.Write("\n");
}
s.Close();
f.Close();
}
convert("sorted-hosts6.txt","hosts6","::",7);
