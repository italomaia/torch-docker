local cmd = "docker build . -t italomaia/torch:%s --build-arg TORCH_LUA_VERSION=%s"
for _, name in pairs {'luajit21', 'lua51', 'lua52', 'lua53'} do
    os.execute(string.format(cmd, name, name:upper()))
end