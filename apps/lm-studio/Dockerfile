FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    procps \
    libgomp1 \
    libatomic1 \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://lmstudio.ai/install.sh | bash

RUN ln -s /root/.lmstudio/bin/lms /usr/local/bin/lms

ENV PATH="/root/.lmstudio/bin:${PATH}"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 1234

ENTRYPOINT ["/entrypoint.sh"]
