fronorm= []
ti = []
n=[]
my_table = []
for i = 5: 10,                                #looping for n= 5 to n=10      
  time_start = tic()                          #starts noting the time   
  MatX = int32(8*rand(i,i))                   #random matrix generated
  disp(MatX)                            
  invX=pinv(MatX)                             #inverse of matrix calculated
  disp(invX)
  time_stop = toc(time_start)                 #time count stops
  frobeniusnorm=norm(invX,p="fro")            #frobenius norm calculated        
  fronorm = [fronorm; frobeniusnorm]
  ti = [ti;time_stop]
  n = [n;i];
end

my_table=[n,ti,fronorm]                       #final table(n, time, frobeniusnorm)

