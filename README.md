
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

Because of the notebook's token authentication, we should get the token from container log,

```bash
docker logs <container-id>
[I 12:28:52.035 NotebookApp] Writing notebook server cookie secret to /home/notebook/.local/share/jupyter/runtime/notebook_cookie_secret
[I 12:28:52.948 NotebookApp] Serving notebooks from local directory: /home/notebook/notes
[I 12:28:52.948 NotebookApp] 0 active kernels
[I 12:28:52.948 NotebookApp] The Jupyter Notebook is running at:
[I 12:28:52.949 NotebookApp] http://d48cdb4113ed:8888/?token=cdd925b4b1116ff57bfbb3bf0311a37cf4eddc84c8af62c5
[I 12:28:52.949 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[W 12:28:52.949 NotebookApp] No web browser found: could not locate runnable browser.
[C 12:28:52.950 NotebookApp]

    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://d48cdb4113ed:8888/?token=cdd925b4b1116ff57bfbb3bf0311a37cf4eddc84c8af62c5&token=cdd925b4b1116ff57bfbb3bf0311a37cf4eddc84c8af62c5
```

and replace the url with the exposed host address.

**If the port 8888 already listens on the host machine, you should replace with another one.**

Components
==========

This image bases on Python 3, which includes `jupyter`, `numpy`, `scikit-learn`, `mysqlclient` and `psycopg2`.
With thses prepared packages, it's easy to do some machine learning tasks.
