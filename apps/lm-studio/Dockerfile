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

EXPOSE 1234

CMD ["sh", "-c", "lms daemon up && lms link enable || true; if [ -n \"$MODEL_ID\" ]; then lms get \"$MODEL_ID\" --yes || lms get \"$MODEL_ID\"; lms load \"$MODEL_ID\"; fi && lms server start --port 1234 --host 0.0.0.0"]
