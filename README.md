
jupyter-notebook-anywhere
=========================

A containerized jupyter notebook based on docker.


Get started
===========

Build
------

### From source ###

First, you should close this repository with `git` as the following,

```bash
git clone https://github.com/justdoit0823/jupyter-notebook-anywhere
```

Next, begin your build process with `docker` command.

```bash
cd jupyter-notebook-anywhere
docker build -t jupyter-notebook-anywhere:0.1 .
```

### From docker hub ###

With the docker hub, you just need to pull this image to your local machine.

```bash
docker pull justdoit/jupyter-notebook-anywhere
```

Run
---

After pulling the image, you can start a container as the following,

```bash
docker run -d -p 127.0.0.1:8888:8888 justdoit/jupyter-notebook-anywhere:0.1 --ip 0.0.0.0
```

**If the port 8888 already listens on the host machine, you should replace with another one.**

Components
==========

This image bases on Python 3, which includes `jupyter`, `numpy`, `scikit-learn`, `mysqlclient` and `psycopg2`.
With thses prepared packages, it's easy to do some machine learning tasks.
