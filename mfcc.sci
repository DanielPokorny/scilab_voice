y=wavread("/home/daniel/Projekty/scilab/HHH.wav");

mb(1:40)=0
for offset=1:512:length(y)-1024
  x=y(offset:offset+1023)
  f=powerspectrum(x)
  mb=cat(2,mb,melbanks(f))
end

mbt=mb'
mbg=mbt(1:1000,1:40)
xg=1:1000
yg=1:40
grayplot(xg,yg,mbg)