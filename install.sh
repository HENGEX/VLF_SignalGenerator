#!/usr/bin/env bash
sed '/^<par>/d' README.md   | sed -r '/```/d' | sed  '/^\*/d' | sed '/^\w.*#/d' | sed '/^\s*$/d' | sed '/^<!--/d' | '/^<pre>/d' > kk.sh
bash kk.sh
