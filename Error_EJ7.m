%% a)
fprintf("Serie seno en x=pi/4 con tolerancia = 5e^-9\n")
result = SerieSeno(pi/4, 5*exp(-9));
disp(result)

%% b)
fprintf("Serie seno en x=pi con tolerancia = 5e^-9\n")
result = SerieSeno(pi, 5*exp(-9));
disp(result)

%% c)
fprintf("Serie seno en x=5*pi con tolerancia = 5e^-9\n")
result = SerieSeno(5*pi, 5*exp(-9));
disp(result)