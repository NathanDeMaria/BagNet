# BagNet

Trying out ideas from [the BagNet paper](https://openreview.net/pdf?id=SkfMWhAqYQ) (Wieland Brendel and Matthias Bethge). Slides made with [RISE](https://github.com/damianavila/RISE)

## Build

```bash
docker build -t fastai-notebook .
```

## Run

```bash
NVIDIA_VISIBLE_DEVICES=0 docker run \
    --rm -d --runtime=nvidia -p 8890:8888 \
    -v ~/reading_group/bagnet/notebooks/:/root/notebooks/ \
     fastai-notebook
```

