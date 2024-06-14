cp Dockerfile.base Dockerfile && \
./command2label.py ./xnat/command.json >> Dockerfile && \
docker build --no-cache -t xnat/convert2ndot_bids:latest .
docker tag xnat/convert2ndot_bids:latest registry.nrg.wustl.edu/docker/nrg-repo/yash/convert2ndot_bids:latest
rm Dockerfile