#!/usr/bin/env bash
sed 's/```bash/cas1/g' README.md | sed 's/```/cas2/g' | awk '/cas1/{flag=1; next} /cas2/{flag=0} flag' > kk.sh
source kk.sh
