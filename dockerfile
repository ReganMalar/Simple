# -------- Stage 1 --------
FROM ubuntu:latest AS build

WORKDIR /app
COPY . .

# -------- Stage 2 --------
FROM python:3.10-slim

WORKDIR /app

# Copy only required files from stage 1
COPY --from=build /app /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Run using production server (better than flask dev server)
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]


# Alternative: Use Flask's built-in server (not recommended for production)