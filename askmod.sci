/*
    * By: Jatin Kumar Mandav
    *
    * ASK Modulation
    *
    * Inputs: Data or Digital Information Signal.
    *         Carrier Signal Frequency, Carrier Frequency Amplitude
    *
*/
function [] = ask_mod(data, freq_carrier, amp_carrier)
    t = [0:0.001:1]
    carrier_signal = amp_carrier*sin(2*%pi*freq_carrier*t)
    zeroes = 0*t
    modulated_signal = []
    for i = 1:length(data)
        if data(i) == 1 then
            modulated_signal = [modulated_signal, carrier_signal]
        else
            modulated_signal = [modulated_signal, zeroes]
        end
    end
    
    plot(modulated_signal)
    title("Modulated Signal")

endfunction
