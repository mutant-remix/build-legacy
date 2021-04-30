#!/bin/bash
cd "$(dirname "$0")"
./orxporter/orxport.py -m manifest/out.orx -i ../input -C cache -q 32x32 -o out/test_png/shortcode -r resvg -f %d/%s -t 4 -F png-128
