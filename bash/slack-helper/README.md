Usage in script:

source slack-helper

slacksend "some message"

Setup:

cat > ~/.slackrc <<EOF
export SLACK_URL=<your webhook URL>
EOF

