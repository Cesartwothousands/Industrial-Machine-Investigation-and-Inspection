import librosa as lc
import matplotlib.pyplot as plt
import numpy as np

fs = 16000
n_fft = 512

f = fs*np.array(range(int(1+n_fft/2)))/(n_fft/2)

def stft(path):
    # Load a file
    data = lc.load(path,sr=None)

    length = len(data[0])

    spec = np.array(lc.stft(data[0], n_fft=512, hop_length=160, win_length=400, window='hann'))

    plt.pcolormesh(np.array(range(int(length/160+1)))/fs, f, np.abs(spec))
    plt.colorbar()
    plt.title('STFT Magnitude')
    plt.ylabel('Frequency [Hz]')
    plt.xlabel('Time [sec]')
    plt.tight_layout()
    plt.show()


stft('vavle.00.normal.00000023.wav')