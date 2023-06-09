FROM cirrusci/flutter
ADD flutter_linux_3.10.4-stable.tar.xz /sdks
RUN git config --global --add safe.directory /sdks/flutter
