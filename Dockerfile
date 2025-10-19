# Use small official nginx image
FROM nginx:stable-alpine

# Remove default config and copy ours
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static site
COPY html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]