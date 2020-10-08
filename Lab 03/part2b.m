close all
clear all

b1=[1,-1];
a1=[1,2,2];

b2=[1,5];
a2=[1,2,3];

b3=[2,5,12];
a3=[1,2,10];

b4=[2,5,12];
a4=[1 4 14 20];

for i=1:3
   figure
   fi=48*i;
   t=linspace(0,0.002*pi,20);
   x=sin(2*pi*fi*t);
   
   subplot(4,1,1);
   sys1=tf(b1,a1,fi);
   [y1,t1]=lsim(sys1,x);
   plot(t1,y1);
   
   subplot(4,1,2);
   sys2=tf(b2,a2,fi);
   [y2,t2]=lsim(sys2,x);
   plot(t2,y2);
   
   subplot(4,1,3);
   sys3=tf(b3,a3,fi);
   [y3,t3]=lsim(sys3,x);
   plot(t3,y3);
   
   subplot(4,1,4);
   sys4=tf(b4,a4,fi);
   [y4,t4]=lsim(sys4,x);
   plot(t4,y4);
   
end