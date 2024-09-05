local markview = require("markview");
local presets = require("markview.presets");

markview.setup({
    headings = presets.headings.glow_labels,
    modes = {"n", "i", "no", "c"},
    hybrid_modes = {"i"},
    callbacks = {
      on_enable = function (_, win)
        vim.wo[win].conceallevel = 2;
        vim.wo[win].concealcursor = "nc";
      end
    }
});

