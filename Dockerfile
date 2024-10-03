FROM alpine AS fristLinux
RUN apk add --no-cache git
RUN mkdir /GPDS-practice-1
RUN git clone https://github.com/eder24m3za/DockerFile.git .

FROM ubuntu:latest as myUbuntu
COPY --from=fristLinux /GPDS-practice-1 /repoDockerFile
CMD /bin/bash
