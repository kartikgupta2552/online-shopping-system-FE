# -----------------------
# Stage 1 — Builder
# -----------------------
FROM node:20-alpine AS builder

# Enable Yarn via Corepack
RUN corepack enable

# Set working directory
WORKDIR /app

# Copy only package.json + yarn.lock first for caching
COPY package.json yarn.lock ./

# Install dependencies (immutable ensures lockfile sync)
RUN yarn install --immutable

# Copy rest of the application source code
COPY . .

# Build the production bundle
RUN yarn build


# -----------------------
# Stage 2 — Runner
# -----------------------
FROM node:20-alpine AS runner

WORKDIR /app

# Copy only built output and needed files from builder
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package.json ./

# Install only production dependencies
RUN yarn install --immutable --production

# Expose port (adjust if different)
EXPOSE 5173

# Start the app (adjust if using serve or similar)
CMD ["yarn", "preview"]

