# Base image - using an Arch Linux base image
FROM archlinux:latest

# Install base-devel, git, and openssh for building AUR packages and cloning repositories via SSH
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm base-devel git openssh

# Create a non-root user to avoid running everything as root
RUN useradd -m auruser \
    && echo "auruser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Set the working directory
WORKDIR /home/auruser

# Switch to the non-root user
USER auruser

# Start an interactive shell
CMD ["/bin/bash"]
