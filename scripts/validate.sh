#!/bin/bash
set -e

# Health check
curl -f http://localhost || exit 1
