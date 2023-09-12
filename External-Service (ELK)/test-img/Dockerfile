# Use a base image of your choice
FROM alpine:latest

# Install any necessary packages or dependencies for your test application
# For this example, we'll use the echo command to simulate log messages
RUN apk --no-cache add bash

# Create a script that generates log messages
RUN echo '#!/bin/bash' > /entrypoint.sh
RUN echo 'while true; do' >> /entrypoint.sh
RUN echo '  echo "Test log message $(date)"' >> /entrypoint.sh
RUN echo '  sleep 1' >> /entrypoint.sh
RUN echo 'done' >> /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Run the script as the container's entry point
CMD ["/entrypoint.sh"]
