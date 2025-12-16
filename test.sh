YARN_VERSION=$(yarn -v | cut -d '.' -f 1)
echo "Detected Yarn major version: $YARN_VERSION"

if [ "$YARN_VERSION" -ge 2 ]; then
  STORE_PATH=$(yarn config get cacheFolder)
  echo "Using Yarn 2+ cache directory logic"
else
  STORE_PATH=$(yarn cache dir)
  echo "Using Yarn 1.x cache directory logic"
fi