# Adaptive-Filters-Echo-Cancellation

## Introduction 

Echo cancellation is an important aspect of any communication-based system. Over the past few decades, there has been a significant rise in the interest of understanding the problem of echo in long-distance telephone calls. An echo is essentially a delayed or distorted version of the original signal that is reflected back and heard at the source. 

The purpose of echo cancellation is to reduce the echo as much as possible in order to obtain a clear understanding of the original message. One of the earliest form of echo control involved adding a loss of 3dB in the transmission line which delayed the entire signal by 6dB. Although this technique was effective in reducing the echo heard at the source, it also introduced an additional 3dB loss to the speech transmission, making it an unideal solution. The echo suppressor is a device that had been commonly used to control the network echoes. Although the device was effective in controlling echo in circuits with about 100ms of round-trip delays, the suppressors failed to function effectively with telephone calls with delays over 600ms and often mutilated signals that received a high level of echo or a low speech level. 

Another form of echo cancellation is through the use of adaptive filters. These are more widely used than echo suppressors as they are significantly more stable and also have a larger scope of improvement. Adaptive filters are also dynamic and can change their features depending on the input data. Currently, there are many algorithms that are used for echo cancellation, but the most common one is the Least Mean Squares (LMS) algorithm because of its simplicity.
 
Usually, the adaptive filter that implements the algorithm is a Finite Impulse Response (FIR) filter. This is due to the fact that the FIR filter provides unimodal mean squared error (MSE) and greater stability. However, implementing the FIR algorithm also requires a greater computational complexity since the algorithm would require a significant amount of filter coefficients to match the impulse response. Hence, the IIR filter is substituted which provides reduced complexity as the IIR filter requires fewer coefficients as compared to the FIR filter. 

## Methodology

The purpose of the adaptive filter is to minimize the cost function J which is the difference between the output y(i) and the desired output d(i) where i is the total number of samples. This is explained further by looking at the figure below. 

![trainingalgorithm](https://user-images.githubusercontent.com/50300494/58265390-935fe580-7d4d-11e9-8739-56be7d9f5d38.png)
