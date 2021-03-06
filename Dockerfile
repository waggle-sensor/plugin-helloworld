FROM waggle/plugin-opencv:4.1.1

RUN pip3 install --no-cache-dir \
    "https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp36-cp36m-linux_$(uname -m).whl"

COPY app/ /app/
WORKDIR /app

ENTRYPOINT ["/usr/bin/python3", "/app/app.py"]
