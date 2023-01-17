FROM mit-scheme:latest
COPY src/main.scm /app/main.scm
WORKDIR /app
CMD ["scheme", "--quiet", "--load", "main.scm"]