#!/bin/bash

# Install PHP dependencies
composer install --no-dev --optimize-autoloader

# Install Node.js dependencies
npm ci

# Build frontend assets
npm run build

# Create storage directories
mkdir -p storage/framework/cache/data
mkdir -p storage/framework/sessions
mkdir -p storage/framework/testing
mkdir -p storage/framework/views
mkdir -p storage/logs

# Set permissions
chmod -R 755 storage
chmod -R 755 bootstrap/cache

# Copy public directory for Vercel
cp -r public dist