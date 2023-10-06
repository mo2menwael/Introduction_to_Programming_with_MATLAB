function output=echo_gen(input,fs,delay,amp)
    %Calculate the number of points for the given delay
    ds = round(fs*delay);
    % Pad the original signal with zeros to make room for the echo
    no_echo = [input; zeros(ds,1)];
    % Create an echo signal that starts with 0's
    echo_effect = [zeros(ds,1); input*amp];
    % Add the echo to the original signal
    output = no_echo + echo_effect;

    % the abs of all values must be < 1. Rescale if necessary
    norm_factor = max(abs(output));
    if norm_factor > 1
        output = output./norm_factor;
    end
end


%To call your function
% Load splat which adds y and Fs to the workspace
%load splat
% Call echo_gen to create the new audio data
%output = echo_gen(y, Fs, 0.25, 0.6);
% The time between points is 1/Fs
%dt = 1/Fs;
% Plot the original sound
%plot(0:dt:dt*(length(y)-1), y)
% Plot the new data to see visualize the echo
%figure
%plot(0:dt:dt*(length(output)-1), output)
%sound (output, Fs)
