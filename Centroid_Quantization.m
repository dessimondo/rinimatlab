%centroid = minimal distortion quantization

%gaussian
f = 0.7334

%initialising boundaries

x(1) = -5
x(2) = -4
x(3) = -2
x(4) = 0
x(5) = 1
x(6) = 3
x(7) = 5

%getting ai values
for i = 1:6
    a(i) = (x(i)+x(i+1))/2
end

%minimum distortion => minimum D => D/d(ai) = zero
x1 = 0
for z=0:0.001:x(1)
    x1=x1+z*f*0.001
end

x2 = 0
for z=x(1):0.001:x(2)
    x2=x2+z*f*0.001
end

x3 = 0
for z=x(2):0.001:x(3)
    x3=x3+z*f*0.001
end

x4 = 0
for z=x(3):0.001:x(4)
    x4=x4+z*f*0.001
end

x5 = 0
for z=x(4):0.001:x(5)
    x5=x5+z*f*0.001
end

x6 = 0
for z=x(5):0.001:x(6)
    x6=x6+z*f*0.001
end

x7 = 0
for z=x(6):0.001:x(7)
    x7=x7+z*f*0.001
end
 

 