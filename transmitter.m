n = 50; 
numberOfOnes = n/2
% Get a list of random locations, with no number repeating.
indexes = randperm(n)
% Start off with all zeros.
x = zeros(1, n);
% Now make half of them, in random locations, a 1.
x(indexes(1:numberOfOnes)) = 1

for i = 0 : 24
    if x(2*i) == 0
        if x(2*i+1) == 0
            set(gcf, 'Position', get(0, 'Screensize'));
            image(C);
            R(:,i) = 1;
            G(:,i) = 0;
            B(:,i) = 0;
        else
            set(gcf, 'Position', get(0, 'Screensize'));
            image(C);
            R(:,i) = 0;
            G(:,i) = 2;
            B(:,i) = 0;
        end
    else 
        if x(2*i+1) == 0
            set(gcf, 'Position', get(0, 'Screensize'));
            image(C);
            R(:,i) = 0;
            G(:,i) = 0;
            B(:,i) = 1;
        else
            set(gcf, 'Position', get(0, 'Screensize'));
            image(C);
            R(:,i) = 1;
            G(:,i) = 1;
            B(:,i) = 1;
        end
    end
    pause(2);
end


