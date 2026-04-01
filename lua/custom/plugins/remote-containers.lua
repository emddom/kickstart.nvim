return {
  'jamestthompson3/nvim-remote-containers',
  config = function()
    -- Set the command to podman if needed, 
    -- but since you have DOCKER_HOST set it should work automatically.
    vim.g.remote_containers_docker_command = 'podman'
  end
}
