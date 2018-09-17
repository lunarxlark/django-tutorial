FROM ubuntu:18.04

# install Anaconda3
RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/* && \
    wget -q https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh && \
    bash Anaconda3-5.2.0-Linux-x86_64.sh -p /anaconda3 -b && \
    rm Anaconda3*.sh

# install django
RUN . /anaconda3/etc/profile.d/conda.sh && \
    #ln -s /anaconda3/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /anaconda3/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate django-tutorial" >> ~/.bashrc && \
    conda update -n base conda -y && \
    conda create -n django-tutorial && \
    conda activate django-tutorial && \
    conda install django -y
EXPOSE 8000

CMD ["/anaconda3/envs/django-tutorial/bin/python", "/opt/myblogapp/manage.py", "runserver", "0.0.0.0:8000"]