#!/bin/bash

post() {
    curl -X POST \
    --data-urlencode "payload={\"channel\": \"#webhook\", \"username\": \"udon_kireina_go\", \"text\": \"\`\`\`$(cat -)\`\`\`\", \"icon_emoji\": \":thinking_face:\"}" \
    https://hooks.slack.com/services/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
}

if [ -p /dev/stdin ]; then
    cat -
else
    echo $@
fi | post
