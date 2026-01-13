--[[
Simple diagram filter that skips diagram rendering instead of trying to use external tools
that may not be available.
]]

local function should_skip_diagram(code)
  -- Check if code block contains mermaid
  return code:find("mermaid") ~= nil
end

function CodeBlock(block)
  -- If this is a mermaid block and we can't render it, skip processing
  if block.classes:includes("mermaid") then
    if should_skip_diagram(block.text) then
      -- Create a placeholder comment instead
      return pandoc.RawBlock("html", "<!-- Diagram skipped: mermaid diagram rendering requires mmdc tool -->")
    end
  end
  return nil
end

return {
  {
    CodeBlock = CodeBlock
  }
}