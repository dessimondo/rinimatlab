clear all;
v = VideoWriter('test.avi');
v.FrameRate=1

n = 50; 
numberOfOnes = n/2
% Get a list of random locations, with no number repeating.
indexes = randperm(n)
% Start off with all zeros.
A = zeros(1, n);
% Now make half of them, in random locations, a 1.
A(indexes(1:numberOfOnes)) = 1

open(v);
for i=1:2:50
   if A(i)==0
       if A(i+1)==0
           R=zeros(200,200,3);
            R(:,:,1)=1;
            set(gcf,'position',get(0,'Screensize')); %MAX figure
            image(R); %C is the array
            pause(1)
            frame=getframe;
            writeVideo(v,frame);
    
       end     
    
       if A(i+1)==1
           G=zeros(200,200,3); 
           G(:,:,2)=1;
            set(gcf,'position',get(0,'Screensize')); %MAX figure
            image(G);
            pause(1)
            frame=getframe;
            writeVideo(v,frame);
    
       end
   end
   if A(i)==1
       if A(i+1)==0
           B=zeros(200,200,3);
           B(:,:,3)=1;
            set(gcf,'position',get(0,'Screensize')); %MAX figure
            image(B);
            pause(1)
            frame=getframe;
            writeVideo(v,frame);
    
       end
       if A(i+1)==1
           C=zeros(200,200,3);
           C(:,:,1)=0;
           set(gcf,'position',get(0,'Screensize')); %MAX figure
            image(C);
            pause(1)
            frame=getframe;
            writeVideo(v,frame);
    
       end
   end
    
end
close(v);