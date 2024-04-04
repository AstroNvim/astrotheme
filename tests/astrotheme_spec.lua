describe("Color Library", function()
  local Color = require "astrotheme.lib.color"

  local c1 = Color.new { 10, 10, 10 }
  local c2 = Color.new { 5, 5, 5 }
  local c3 = Color.new { 0, 0, 0 }
  local c4 = Color.new { 25, 65, 50 }

  it("Constructor with RGB vs Hex", function() assert.equals(Color.new { 10, 10, 10 }, Color.new "#0A0A0A") end)
  it("Add Operation", function() assert.equals(c1 + c2, Color.new { 15, 15, 15 }) end)
  it("Divide Operation", function() assert.equals((c1 + c2) / 2, Color.new { 7.5, 7.5, 7.5 }) end)
  it("Multiply Operation", function() assert.equals(c1 * c2, Color.new { 50, 50, 50 }) end)
  it("Subtraction Operation", function() assert.equals(c1 - c2, Color.new { 5, 5, 5 }) end)
  it("Equal Operation", function() assert.equals(c1, Color.new { 10, 10, 10 }) end)
  it("Less Than Operation", function() assert.True(c2 < c1) end)

  it("blend Function", function() assert.equals(c1:blend(c3, 0.5), Color.new { 5, 5, 5 }) end)
  it("darken Function", function() assert.equals(c4:darken(30), Color.new { 0, 35, 20 }) end)
  it("darken_2 Function", function() assert.equals(c4:darken_2(30), Color.new { 7, 41, 32 }) end)
  it("desat Function", function() assert.equals(c4:desat(1), Color.new { 55, 55, 55 }) end)
  it("dif Function", function() assert.equals(c2:dif(c3), 5) end)
  it("lighten Function", function() assert.equals(c4:lighten(30), Color.new { 55, 95, 80 }) end)
  it("lighten_2 Function", function() assert.equals(c4:lighten_2(30), Color.new { 55, 83, 68 }) end)
  it("sat Function", function() assert.equals(c4:sat(1), Color.new { 0, 65, 48 }) end)
  it("sort Function", function() assert.are.same(c4:sort(), { "r", "b", "g" }) end)
  it("tohex Function", function() assert.equals(c1:tohex(), "#0A0A0A") end)

  it("Visual Full Spectrum Color Test", function()
    local bl = Color.new "#1A1D23"
    local w = Color.new "#DEDEDE"
    local r = Color.new "#FF838B"
    local o = Color.new "#F5983A"
    local y = Color.new "#DFAB25"
    local g = Color.new "#87C05F"
    local c = Color.new "#4AC2B8"
    local b = Color.new "#5EB7FF"
    local p = Color.new "#DD97F1"

    local offset = 30

    print "DARK / ORIGINAL / LIGHT - ALT\n"
    io.write(tostring(bl:darken_2(offset)))
    io.write(tostring(w:darken_2(offset)))
    io.write(tostring(r:darken_2(offset)))
    io.write(tostring(o:darken_2(offset)))
    io.write(tostring(y:darken_2(offset)))
    io.write(tostring(g:darken_2(offset)))
    io.write(tostring(c:darken_2(offset)))
    io.write(tostring(b:darken_2(offset)))
    io.write(tostring(p:darken_2(offset)))
    io.write "\n"

    io.write(tostring(bl))
    io.write(tostring(w))
    io.write(tostring(r))
    io.write(tostring(o))
    io.write(tostring(y))
    io.write(tostring(g))
    io.write(tostring(c))
    io.write(tostring(b))
    io.write(tostring(p))
    io.write "\n"

    io.write(tostring(bl:lighten_2(offset)))
    io.write(tostring(w:lighten_2(offset)))
    io.write(tostring(r:lighten_2(offset)))
    io.write(tostring(o:lighten_2(offset)))
    io.write(tostring(y:lighten_2(offset)))
    io.write(tostring(g:lighten_2(offset)))
    io.write(tostring(c:lighten_2(offset)))
    io.write(tostring(b:lighten_2(offset)))
    io.write(tostring(p:lighten_2(offset)))
    io.write "\n"

    print "\nDARK / ORIGINAL / LIGHT\n"
    io.write(tostring(bl:darken(offset)))
    io.write(tostring(w:darken(offset)))
    io.write(tostring(r:darken(offset)))
    io.write(tostring(o:darken(offset)))
    io.write(tostring(y:darken(offset)))
    io.write(tostring(g:darken(offset)))
    io.write(tostring(c:darken(offset)))
    io.write(tostring(b:darken(offset)))
    io.write(tostring(p:darken(offset)))
    io.write "\n"

    io.write(tostring(bl))
    io.write(tostring(w))
    io.write(tostring(r))
    io.write(tostring(o))
    io.write(tostring(y))
    io.write(tostring(g))
    io.write(tostring(c))
    io.write(tostring(b))
    io.write(tostring(p))
    io.write "\n"

    io.write(tostring(bl:lighten(offset)))
    io.write(tostring(w:lighten(offset)))
    io.write(tostring(r:lighten(offset)))
    io.write(tostring(o:lighten(offset)))
    io.write(tostring(y:lighten(offset)))
    io.write(tostring(g:lighten(offset)))
    io.write(tostring(c:lighten(offset)))
    io.write(tostring(b:lighten(offset)))
    io.write(tostring(p:lighten(offset)))
    io.write "\n"

    print "\nBLEND\n"
    io.write(tostring(bl:blend(r, 0.5)))
    io.write(tostring(bl:blend(o, 0.5)))
    io.write(tostring(bl:blend(y, 0.5)))
    io.write(tostring(bl:blend(g, 0.5)))
    io.write(tostring(bl:blend(c, 0.5)))
    io.write(tostring(bl:blend(b, 0.5)))
    io.write(tostring(bl:blend(p, 0.5)))
    io.write "\n"
    io.write(tostring(w:blend(r, 0.5)))
    io.write(tostring(w:blend(o, 0.5)))
    io.write(tostring(w:blend(y, 0.5)))
    io.write(tostring(w:blend(g, 0.5)))
    io.write(tostring(w:blend(c, 0.5)))
    io.write(tostring(w:blend(b, 0.5)))
    io.write(tostring(w:blend(p, 0.5)))
    io.write "\n"

    print "\nDESATURATION\n"
    io.write(tostring(r:desat(0)))
    io.write(tostring(o:desat(0)))
    io.write(tostring(y:desat(0)))
    io.write(tostring(g:desat(0)))
    io.write(tostring(c:desat(0)))
    io.write(tostring(b:desat(0)))
    io.write(tostring(p:desat(0)))
    io.write "\n"

    io.write(tostring(r:desat(0.5)))
    io.write(tostring(o:desat(0.5)))
    io.write(tostring(y:desat(0.5)))
    io.write(tostring(g:desat(0.5)))
    io.write(tostring(c:desat(0.5)))
    io.write(tostring(b:desat(0.5)))
    io.write(tostring(p:desat(0.5)))
    io.write "\n"

    io.write(tostring(r:desat(1)))
    io.write(tostring(o:desat(1)))
    io.write(tostring(y:desat(1)))
    io.write(tostring(g:desat(1)))
    io.write(tostring(c:desat(1)))
    io.write(tostring(b:desat(1)))
    io.write(tostring(p:desat(1)))
    io.write "\n"

    print "\nSATURATION\n"
    io.write(tostring(r:sat(0)))
    io.write(tostring(o:sat(0)))
    io.write(tostring(y:sat(0)))
    io.write(tostring(g:sat(0)))
    io.write(tostring(c:sat(0)))
    io.write(tostring(b:sat(0)))
    io.write(tostring(p:sat(0)))
    io.write "\n"

    io.write(tostring(r:sat(0.5)))
    io.write(tostring(o:sat(0.5)))
    io.write(tostring(y:sat(0.5)))
    io.write(tostring(g:sat(0.5)))
    io.write(tostring(c:sat(0.5)))
    io.write(tostring(b:sat(0.5)))
    io.write(tostring(p:sat(0.5)))
    io.write "\n"

    io.write(tostring(r:sat(1)))
    io.write(tostring(o:sat(1)))
    io.write(tostring(y:sat(1)))
    io.write(tostring(g:sat(1)))
    io.write(tostring(c:sat(1)))
    io.write(tostring(b:sat(1)))
    io.write(tostring(p:sat(1)))
    io.write "\n"
  end)
end)
