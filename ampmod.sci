/*
    * By: Jatin Kumar Mandav
    *
    * Amplitude Modulation
    *
    * Inputs: Amplitude of Carrier Wave, Frequency of Carrier Wave
    *         Amplitude of Message Wave, Frequency of Message Wave
    *         Sampling Frequency or Sampling/sec
    *
*/
function [] = amp_mod(amp_carrier, freq_carrier, amp_message, freq_message, sampling_freq)
    t = 0:1/sampling_freq:2
    message_signal = amp_message*sin(2*%pi*freq_message*t)
    carrier_signal = amp_carrier*sin(2*%pi*freq_carrier*t)
    
    modulated_signal = (amp_carrier + message_signal).*(carrier_signal/amp_carrier)
    
    subplot(3, 1, 1)
    plot(message_signal)
    title("Message Signal")
    
    subplot(3, 1, 2)
    plot(carrier_signal)
    title("Carrier Signal")
    
    subplot(3, 1, 3)
    plot(modulated_signal)
    title("Amplitude Modulated Signal")
    
endfunction
