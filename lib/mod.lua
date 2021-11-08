local mod = require 'core/mods'

mod.menu.register(mod.this_name, m)

get_date = function()
    local current_unix_timestamp = os.time()
    return os.date("%Y-%m-%d_%X", current_unix_timestamp)
end

local api = {}

get_unique_file_name = function(directory, name, extension)
    local output = name
    local test_against = name

    local file_index = 0

    while (util.file_exists(directory..test_against..extension)) do
        file_index = file_index + 1
        test_against = name.."_"..file_index
    end

    return test_against .. extension
end

api.screenshot = function(name, directory)
   local filename = name ~= nil and name or get_date()
   local dir = directory ~= nil and directory or ""

   local unique_name = get_unique_file_name(_path.dust..dir, filename, ".png")

   print('capturing '.. dir..unique_name)
  _norns.screen_export_png(_path.dust..dir..unique_name)
end

return api