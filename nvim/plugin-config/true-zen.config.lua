local zen_setup, zen = pcall(require, "true-zen")
if not zen_setup then
    return
end

zen.setup{}
