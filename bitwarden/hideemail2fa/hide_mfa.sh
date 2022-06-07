#!/bin/sh

# First check if we already made the modifications
if ! grep -q "==hide-mfa==" /web-vault/app/main.*.css; then
	echo "Running hide-mfa patch"
	echo "/* ==hide-mfa== */.list-group-2fa > li.list-group-item:nth-child(5) { display: none !important; }" | tee -a /web-vault/app/main.*.css
fi