# Use small official nginx image
FROM nginx:stable-alpine

# Copy static site
COPY html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]