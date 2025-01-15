import faiss
import numpy as np

# Dataset
data = np.random.rand(10000, 128).astype('float32')

# Numero di cluster
k = 10

# Inizializzazione k-means
kmeans = faiss.Kmeans(d=data.shape[1], k=k, gpu=True)
kmeans.train(data)

# Centroidi e assegnazioni
centroids = kmeans.centroids
assignments = kmeans.index.search(data, 1)[1]
