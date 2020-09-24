FROM gcr.io/deeplearning-platform-release/tf2-cpu.2-3

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install libgrib-api-dev
RUN apt-get -y install libeccodes-dev
RUN apt-get -y install libmagplus3v5
RUN apt-get -y install libproj-dev
RUN apt-get -y install proj-data
RUN apt-get -y install proj-bin
RUN apt-get -y install gdal-bin
RUN apt-get -y install libgeos-dev
RUN apt-get -y install libssl1.0.0
RUN apt-get -y install libssl-dev

# requirementsに書いたらなぜかこけた
RUN pip install pyproj
RUN pip install eccodes-python
RUN pip install pygrib
RUN pip install ecmwf-api-client
