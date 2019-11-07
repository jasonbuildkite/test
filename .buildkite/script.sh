set -eu
echo '--- :house_with_garden: Setting up the environment'

export REPO_NAME=$(buildkite-agent meta-data get REPO_NAME)
