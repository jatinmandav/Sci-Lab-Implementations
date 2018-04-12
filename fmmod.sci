/*
    * By: Jatin Kumar Mandav
    *
    * Frequency Modulation
    *
    * Inputs: Amplitude of Carrier Wave, Frequency of Carrier Wave
    *         Amplitude of Message Wave, Frequency of Message Wave
    *         Sampling Frequency or Sampling/sec
    *
*/
function [] = fm_mod(amp_carrier, freq_carrier, amp_message, freq_message, freq_sampling)
    
    t = 0:1/freq_sampling:1
    message_signal = amp_message*sin(2*%pi*freq_message*t)
    carrier_signal = amp_carrier*sin(2*%pi*freq_carrier*t)
    k = 1.5
    modulated_signal = amp_carrier*sin(2*%pi*freq_carrier*t + (k*amp_message/freq_message)*cos(2*%pi*freq_message*t))
    
    subplot(3, 1, 1)
    plot(message_signal)
    title("Message Signal")
    
    subplot(3, 1, 2)
    plot(carrier_signal)
    title("Carrier Signal")
    
    subplot(3, 1, 3)
    plot(modulated_signal)
    title("Modulated Signal")
    
endfunction
