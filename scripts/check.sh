#!/usr/bin/env bash
# Verify Tor is up: compare your IP with and without the proxy.
set -euo pipefail
echo 'Direct IP:'
curl -s https://check.torproject.org/api/ip | head -c 120; echo
echo 'Via Tor (SocksPort 9050):'
curl -s --socks5-hostname 127.0.0.1:9050 https://check.torproject.org/api/ip | head -c 120; echo
