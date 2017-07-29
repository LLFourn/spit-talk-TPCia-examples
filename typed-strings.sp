say File</etc/hosts>.owner;

say GitHub<stedolan/jq>.latest-release-url;

for File</bin /usr/bin> {
    say "$_ was last modified at {.mtime}"
}
