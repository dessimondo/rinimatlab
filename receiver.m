cam = webcam;
pause(1);

red = zeros(50,1);
green = zeros(50,1);
blue = zeros(50,1);
AverageRed = zeros(50,1);
AverageGreen = zeros(50,1);
AverageBlue = zeros(50,1);

for i = 1:50
    
    img = snapshot(cam);

    [rows, columns, bandcolors] = size(img);
    
    for row = 1: rows
        for col = 1 : columns
            redValue = double(img(row, col, 1));
            greenValue = double(img(row, col, 2));
            blueValue = double(img(row, col, 3));
            red(i) = red(i) + redValue;
            green(i) = green(i) + greenValue;
            blue(i) = blue(i) + blueValue;
        end
    end
    
    numberOfColors = double(rows) * double(columns);
    
    AverageRed(i) = red(i)./numberOfColors;
    AverageGreen(i) = green(i)./numberOfColors;
    AverageBlue(i) = blue(i)./numberOfColors;
end

    clear('cam');
    
    MeanRed = mean(AverageRed);
    MeanGreen = mean(AverageGreen);
    MeanBlue = mean(AverageBlue);
    VarRed = var(AverageRed);
    VarGreen = var(AverageGreen);
    VarBlue = var(AverageBlue);
    