/*
    * By: Jatin Kumar Mandav
    *
    * PAM Modulation
    *
    * Inputs: Amplitude of Carrier Wave, Frequency of Carrier Wave
    *         Amplitude of Message Wave, Frequency of Message Wave
    *         Sampling Frequency or Sampling/sec
    *
*/
function [] = pam_mod(amp_carrier, freq_carrier, amp_message, freq_message, freq_sampling)
    t = [0:0.1:12*%pi]
    carrier_signal = 1 + squarewave(4*t)
    message_signal = amp_message*sin(2*%pi*freq_message*t)
    
    modulated_signal = carrier_signal.*message_signal
    
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
