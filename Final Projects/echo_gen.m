function output=echo_gen(input,fs,delay,amp)
    ds = round(fs*delay);
    no_echo = [input; zeros(ds,1)];
    echo_effect = [zeros(ds,1); input*amp];
    output = no_echo + echo_effect;
    
    norm_factor = max(abs(output));
    if norm_factor > 1
        output = output./norm_factor;
    end
end