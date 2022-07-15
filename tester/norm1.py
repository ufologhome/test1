import os
import matplotlib
matplotlib.use('Agg') # No pictures displayed 
import pylab
import librosa
import librosa.display
import numpy as np

sig, fs = librosa.load('/root/output.wav')
   
# make pictures name 
save_path = '/root/tester/tes0.jpg'

pylab.axis('off') # no axis
pylab.axes([0., 0., 1., 1.], frameon=False, xticks=[800], yticks=[900]) # Remove the white edge

S = librosa.feature.melspectrogram(y=sig, sr=fs, n_mels=128, fmax=8000)
librosa.display.specshow(librosa.power_to_db(S, ref=np.max))

pylab.savefig(save_path, bbox_inches=None, pad_inches=0)
pylab.close()