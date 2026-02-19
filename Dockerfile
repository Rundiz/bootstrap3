FROM node:25.6.1-bookworm

# Project working directory inside the container
WORKDIR /app

# Persist Ruby gems (installed by Bundler) into /bundle (mount a Docker volume here)
# This keeps subsequent runs fast without baking gems into the image.
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    BUNDLE_APP_CONFIG=/bundle/.bundle \
    BUNDLE_WITHOUT= \
    BUNDLE_SILENCE_ROOT_WARNING=1 \
    PATH=/bundle/bin:$PATH

# Create the bundle directory (will be overlaid by your volume at runtime)
RUN mkdir -p /bundle && chmod 777 /bundle

# OS packages:
# - zip: for release-zip script
# - ruby + build tools: for bundle update / native gems
RUN set -eux; \
    if command -v apt-get >/dev/null 2>&1; then \
      apt-get update; \
      apt-get install -y --no-install-recommends \
        zip \
        ruby-full \
        build-essential \
        git \
        ca-certificates \
        pkg-config \
        zlib1g-dev \
        libffi-dev \
        libxml2-dev \
        libxslt1-dev; \
      rm -rf /var/lib/apt/lists/*; \
    elif command -v apk >/dev/null 2>&1; then \
      apk add --no-cache \
        zip \
        ruby ruby-dev \
        build-base \
        git \
        ca-certificates \
        pkgconfig \
        zlib-dev \
        libffi-dev \
        libxml2-dev \
        libxslt-dev; \
    else \
      echo "No supported package manager found (apt-get/apk)"; exit 1; \
    fi

# Keep npm itself up-to-date (optional, but you wanted this earlier)
RUN npm i -g npm@11.10.0

# Tools your scripts need:
# - ncu (npm-check-updates) for update-deps
RUN npm i -g npm-check-updates

# Install Bundler into the image (not into /bundle)
RUN gem install bundler --no-document
