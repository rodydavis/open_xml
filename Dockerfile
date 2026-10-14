# Stage 1: Build the Jaspr static documentation site
FROM dart:stable AS build

# Set working directory
WORKDIR /app

# Copy the entire workspace (both the library and the doc site)
COPY . .

# Run pub get at the root library
RUN dart pub get

# Navigate to doc_site and build it
WORKDIR /app/doc_site
RUN dart pub get
RUN dart pub global activate jaspr_cli
RUN dart pub global run jaspr_cli:jaspr build

# Stage 2: Serve the static site using Nginx
FROM nginx:alpine AS runtime

# Install curl for docker healthcheck
RUN apk add --no-cache curl

# Copy the generated static files from the build stage to Nginx html directory
COPY --from=build /app/doc_site/build/jaspr /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
