local setup, barbar = pcall(require, "barbar")
if not setup then
  return
end

barbar.setup()
