local label = "italomaia/torch"
local cmd = "docker build . --rm -t %s --build-arg TORCH_LUA_VERSION=%s"
local names = {}
for i, version in ipairs {'luajit21', 'lua51', 'lua52', 'lua53'} do
  table.insert(names, label .. ':' .. version)
  os.execute(
    string.format(cmd, names[i], version:upper()) ..
    (i == 1 and " --no-cache" or ""))
end

print("Docker images created:")
for _, name in pairs(names) do
  print('-> ' .. name)
end
