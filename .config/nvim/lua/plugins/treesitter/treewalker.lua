local treewalker = require('treewalker')

local options = {
  -- Whether to briefly highlight the node after jumping to it
  highlight = true,

  -- How long should above highlight last (in ms)
  highlight_duration = 250,

  -- The color of the above highlight. Must be a valid vim highlight group.
  -- (see :h highlight-group for options)
  highlight_group = 'CursorLine',

  -- Whether to create a visual selection after a movement to a node.
  -- If true, highlight is disabled and a visual selection is made in
  -- its place.
  select = false,

  -- Whether to use vim.notify to warn when there are missing parsers or incorrect options
  notifications = true,

  -- Whether the plugin adds movements to the jumplist -- true | false | 'left'
  --  true: All movements more than 1 line are added to the jumplist. This is the default,
  --        and is meant to cover most use cases. It's modeled on how { and } natively add
  --        to the jumplist.
  --  false: Treewalker does not add to the jumplist at all
  --  "left": Treewalker only adds :Treewalker Left to the jumplist. This seems the most
  --          likely jump to cause location confusion, so use this to minimize writes
  --          to the jumplist, while maintaining some ability to go back.
  jumplist = true,

  -- Whether movement, when inside the scope of some node, should be confined to that scope.
  -- When true, when moving through neighboring nodes inside some node, you won't be able to
  -- move outside of that scope via :Treewalker Up/Down. When false, if on a node at the end
  -- of a scope, movement will bring you to the next node of similar indentation/number of
  -- ancestor nodes, even when it is outside of the scope you're currently in.
  scope_confined = false,
}

treewalker.setup(options)
