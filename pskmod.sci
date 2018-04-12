/*
    * By: Jatin Kumar Mandav
    *
    * PSK Modulation
    *
    * Inputs: Data or Digital Information Signal.
    *         Carrier Signal Frequency, Carrier Frequency Amplitude
    *
*/
function [] = psk_mod(data, amp_carrier, freq_carrier)
    t = 0:0.001:1
    carrier_signal = amp_carrier*sin(2*%pi*freq_carrier*t)
    y = amp_carrier*sin(2*%pi*freq_carrier*t + %pi)
    
    modulated_signal = []
    
    for i = 1:length(data)
        if (data(i) == 1)
            modulated_signal = [modulated_signal, carrier_signal]
        else
            modulated_signal = [modulated_signal, y]
        end
    end
    
    plot(modulated_signal)
    title("Modulated Signal")
endfunction
