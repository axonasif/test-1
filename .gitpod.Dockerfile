FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    && sudo apt-get install cowsay -y

RUN sh -c "$(curl -sSfL https://release.solana.com/v1.9.5/install)"
RUN export PATH="/home/gitpod/.local/share/solana/install/active_release/bin:$PATH"