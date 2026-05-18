wget --user-agent="Mozilla/5.0" \
     --content-disposition \
     --no-check-certificate -O comfilt.zip \
     https://figshare.com/ndownloader/articles/25398766/versions/3
     
mkdir data/tompos
unzip comfilt.zip -d data/tompos
