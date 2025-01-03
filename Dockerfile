FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install git wget build-essential dos2unix && \
    # Clean up apt cache to reduce layer size
    rm -rf /var/lib/apt/lists/* && \
    # Download and extract the tarball in one command
    wget https://cloud.maschath.de/s/dDrZN4DSgJ33E3w/download/Codescape.GNU.Tools.Package.2019.09-03-2.for.MIPS32.MTI.Bare.Metal.Ubuntu-18.04.5.x86_64.tar.gz && \
    tar -xzf Codescape.GNU.Tools.Package.2019.09-03-2.for.MIPS32.MTI.Bare.Metal.Ubuntu-18.04.5.x86_64.tar.gz -C /opt && \
    # Clean up the tarball after extraction to save space
    rm Codescape.GNU.Tools.Package.2019.09-03-2.for.MIPS32.MTI.Bare.Metal.Ubuntu-18.04.5.x86_64.tar.gz

WORKDIR /app