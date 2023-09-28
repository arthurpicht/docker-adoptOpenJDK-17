FROM arthurpicht/debian-12:latest

ENV DOCKER_NAME="adoptopenjdk-17"
ENV JAVA_HOME /man/java
ENV PATH $JAVA_HOME/bin:$PATH

# see https://github.com/docker-library/docs/tree/master/openjdk

# TEMP: cache file locally, dev-time only
# COPY openjdk.tar.gz .

RUN set -eux; \
	export OPENJDK_URL="https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.8.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.8.1_1.tar.gz"; \
	export OPENJDK_FILE="OpenJDK17U-jdk_x64_linux_hotspot_17.0.8.1_1.tar.gz"; \
	wget -O "$OPENJDK_FILE" "$OPENJDK_URL"; \	
	HASH="c25dfbc334068a48c19c44ce39ad4b8427e309ae1cfa83f23c102e78b8a6dcc0"; \
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
	echo "$OPENJDK_URL" >> /.components; \
	javac --version; \
	java --version; 
