back0 = [];
prompt = "Press Enter to begin phase 1.";
%input as a string 
a = input(prompt,'s');
%we need 20 trials 
for i=1:20
    %pick a number from 1 to 9
    rand_num = randi(9);
    disp(rand_num)
    %wait for 1 second 
    pause(1);
    clc
    prompt = "Which number did you just see?";
    %matlab online trouble
    disp(" ")
    str = input(prompt,'s');
    %if the user inputs the wrong numbers, we ask the users to reinput
    while isempty(str2num(str)) || str2num(str) < 0 || str2num(str) >9
        disp("Please enter a number between 1 and 9 (inclusive)")
        str = input(prompt,'s');
    end
    %see if store true or false 
    if str2num(str) == rand_num
        back0 = [back0 true];
    else
        back0 = [back0 false];
    end
end
back0 = logical(back0);
back0


back1 = [];
%record the random number and wait for compare if they are correct 
rand_array = [];
prompt = "Press Enter to begin phase 2.";
%input as a string 
a = input(prompt,'s');
%we need 21 trials 
for i=1:21
    %pick a number from 1 to 9
    rand_num = randi(9);
    %store the random number into the random array
    rand_array = [rand_array; rand_num];
    %print for the users to let them memorize the number
    disp(rand_num)
    pause(1);
    clc
    if i >1
        prompt = 'Which number did you see 1 number ago?';
        disp(" ")
        str = input(prompt,'s');
        %if the user inputs the wrong numbers, we ask the users to re-input
        while isempty(str2num(str)) || str2num(str) < 0 || str2num(str) >9
            disp("Please enter a number between 1 and 9 (inclusive)")
            str = input(prompt,'s');
        end
        %i-1 stands for a number ago
        if str2num(str) == rand_array(i-1)
            back1 = [back1 true];
        else
            back1 = [back1 false];
        end
    end
end
back1 = logical(back1);
back1

back2 = [];
rand_array = [];
prompt = "Press Enter to begin phase 3.";
a = input(prompt,'s');
%we need 22 trials 
for i=1:22
    %pick a number from 1 to 9 
    rand_num = randi(9);
    rand_array = [rand_array; rand_num];
    disp(rand_num)
    pause(1);
    clc
    if i >2
        prompt = 'Which number did you see 2 numbers ago?';
        disp(" ")
        str = input(prompt,'s');
        %if the user inputs the wrong numbers, we ask the users to reinput
        while isempty(str2num(str)) || str2num(str) < 0 || str2num(str) >9
            disp("Please enter a number between 1 and 9 (inclusive)")
            str = input(prompt,'s');
        end
        %i-2 stands for 2 numbers ago
        if str2num(str) == rand_array(i-2)
            back2 = [back2 true];
        else
            back2 = [back2 false];
        end
    end
end
back2 = logical(back2);
back2

%Extra Credit
% backR = [];
nback = [];
correct = [];
rand_array = [];
prompt = "Press Enter to begin phase EC.";
a = input(prompt,'s');
%we need 22 trials 
for i=1:22
    rand_num = randi(9);
    rand_array = [rand_array; rand_num];
    disp(rand_num)
    pause(1);
    clc
    if i >2
        temp = randi(3);
        %refer to the phase #
        if temp == 1
            prompt = "Which number did you just see?";
            disp(" ")
            str = input(prompt,'s');
            %if the user inputs the wrong numbers, we ask the users to reinput
            while isempty(str2num(str)) || str2num(str) < 0 || str2num(str) >9
                disp("Please enter a number between 1 and 9 (inclusive)")
                str = input(prompt,'s');
            end
            if str2num(str) == rand_num
                nback = [nback; 0];
                correct = [correct; true];
            else
                nback = [nback; 0];
                correct = [correct; false];
            end
        end
        
         %refer to the phase #
        if temp == 2
            prompt = 'Which number did you see 1 number ago?';
            disp(" ")
            str = input(prompt,'s');
            %if the user inputs the wrong numbers, we ask the users to reinput
            while isempty(str2num(str)) || str2num(str) < 0 || str2num(str) >9
                disp("Please enter a number between 1 and 9 (inclusive)")
                str = input(prompt,'s');
            end
            %i-1 stands for a number ago
            if str2num(str) == rand_array(i-1)
                nback = [nback; 1];
                correct = [correct; true];
            else
                nback = [nback; 1];
                correct = [correct; false];
            end
        end
        
        if temp == 3
            prompt = 'Which number did you see 2 numbers ago?';
            disp(" ")
            str = input(prompt,'s');
            %if the user inputs the wrong numbers, we ask the users to reinput
            while isempty(str2num(str)) || str2num(str) < 0 || str2num(str) >9
                disp("Please enter a number between 1 and 9 (inclusive)")
                str = input(prompt,'s');
            end
            %i-2 stands for 2 numbers ago
            if str2num(str) == rand_array(i-2)
                %we are doing back2
                nback = [nback; 2];
                correct = [correct; true];
            else
                %we are doing back2
                nback = [nback; 2];
                correct = [correct; false];
            end
        end
    end
end
correct = logical(correct);
%output as a table 
backR = table(nback, correct)


