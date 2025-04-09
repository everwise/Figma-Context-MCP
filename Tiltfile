print('Figma MCP Tiltfile')

def run_with_nvm(script):
  return 'bash -c "set +e && export NVM_DIR="${{NVM_DIR:-$HOME/.nvm}}" && source $NVM_DIR/nvm.sh --no-use && nvm use && {}"'.format(script)

# Do initial setup steps
local('bash tilt/install.sh')

# Run health check script to validate all the configuration needed by the resources is present and correct
#local('bash tilt/health_check.sh')

# Start up the frontend
local_resource(
    'figma-mcp',
    cmd='tilt/frontend_install.sh',
    serve_cmd=run_with_nvm('pnpm run dev --port=3333'),
    allow_parallel=True,
    deps=['package.json', 'package.lock', 'tilt/frontend_install.sh'],
    labels=['figma-mcp'],
)
