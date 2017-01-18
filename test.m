fc = 1300
t = linspace(0,100,100)
s1 = 10*cos(2*pi*fc*t + 5*sin(20*pi*t))
T = t
plot(t,s1)
for i=1:100
    for j=1:100
        s(i,j)=mod(sin(20*pi*t(i) + 20*pi*T(j)) - 5*sin(20*pi*t(i)),2*pi);
    end
end
plot (reshape(s,[1,10000]))
