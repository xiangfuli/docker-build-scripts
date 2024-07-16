FROM eclipse-temurin:8u412-b08-jdk

ENV HOME_DIR=/root
WORKDIR $HOME_DIR/

RUN apt-get update -o Acquire::Check-Valid-Until=false -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true && \
    apt-get full-upgrade -y && \
    apt-get install -y sudo git wget unzip imagemagick-6.q16 && \
    apt-get autoremove -y && \
    apt-get autoclean -y

RUN cd $HOME_DIR && git clone https://github.com/AprilRobotics/apriltag-generation.git && \
    wget https://dlcdn.apache.org//ant/binaries/apache-ant-1.10.14-bin.zip && unzip apache-ant-1.10.14-bin.zip && \
    cd apriltag-generation && \
    ../apache-ant-1.10.14/bin/ant

WORKDIR $HOME_DIR/apriltag-generation
