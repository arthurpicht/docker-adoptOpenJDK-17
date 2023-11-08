FROM arthurpicht/debian-12:latest

ENV DOCKER_NAME="adoptopenjdk-17"
ENV JAVA_HOME /man/java
ENV PATH $JAVA_HOME/bin:$PATH

# see https://github.com/docker-library/docs/tree/master/openjdk

RUN set -eux; \
	export OPENJDK_URL="https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.9%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.9_9.tar.gz"; \
	export OPENJDK_FILE="OpenJDK17U-jdk_x64_linux_hotspot_17.0.9_9.tar.gz"; \
	wget -O "$OPENJDK_FILE" "$OPENJDK_URL"; \	
	HASH="7b175dbe0d6e3c9c23b6ed96449b018308d8fc94a5ecd9c0df8b8bc376c3c18a"; \
	HASH="$HASH $OPENJDK_FILE"; \
	echo $HASH | sha256sum -c; \
	mkdir -p "$JAVA_HOME"; \
	tar --extract \
		--file "$OPENJDK_FILE" \
		--directory "$JAVA_HOME" \
		--strip-components 1 \
		--no-same-owner \
	; \
	rm "$OPENJDK_FILE"; \
	echo "[$(date)]  [$DOCKER_NAME] [$OPENJDK_URL]" >> /.components; \
	javac --version; \
	java --version; 
