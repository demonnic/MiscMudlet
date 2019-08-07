demonnic.TextFormatter = {
  options = {
    formatType = "c",
    wrap = true,
    width = 80,
    cap = "",
    spacer = " ",
    alignment = "center",
    inside = true,
    mirror = false,
  },
  validFormatTypes = { 'd', 'dec', 'decimal', 'h', 'hex', 'hexidecimal', 'c', 'color', 'colour', 'col', 'name'}
}

function demonnic.TextFormatter:setType(typeToSet)
  local isNotValid = not table.contains(self.validFormatTypes, typeToSet)
  if isNotValid then
    error("demonnic.TextFormatter:setType: Invalid argument, valid types are:" .. table.concat(self.validFormatTypes, ", "))
  end
  self.options.formatType = typeToSet
end

function demonnic.TextFormatter:toBoolean(thing)
  if type(thing) ~= "boolean" then
    if thing == "true" then
      thing = true
    elseif thing == "false" then
      thing = false
    else
      return nil
    end
  end
  return thing
end

function demonnic.TextFormatter:checkString(str)
  if type(str) ~= "string" then
    if tostring(str) then
      str = tostring(str)
    else
      return nil
    end
  end
  return str
end

function demonnic.TextFormatter:setWrap(shouldWrap)
  shouldWrap = self:toBoolean(shouldWrap)
  if shouldWrap == nil then
    error("demonnic.TextFormatter:setWrap(shouldWrap) Argument error, boolean expected, got " .. type(shouldWrap) .. ", if you want to set the number of characters wide to format for, use setWidth()")
  end
  self.options.wrap = shouldWrap
end

function demonnic.TextFormatter:setWidth(width)
  if type(width) ~= "number" then
    if tonumber(width) then
      width = tonumber(width)
    else
      error("demonnic.TextFormatter:setWidth(width): Argument error, number expected, got " .. type(width))
    end
  end
  self.options.width = width
end

function demonnic.TextFormatter:setCap(cap)
  local cap = self:checkString(cap)
  if cap == nil then error("demonnic.TextFormatter:setCap(cap): Argument error, string expect, got " .. type(cap)) end
  self.options.cap = cap
end

function demonnic.TextFormatter:setCapColor(capColor)
  local capColor = self:checkString(capColor)
  if capColor == nil then error("demonnic.TextFormatter:setCapColor(capColor): Argument error, string expected, got " .. type(capColor)) end
  self.options.capColor = capColor
end

function demonnic.TextFormatter:setSpacerColor(spacerColor)
  local spacerColor = self:checkString(spacerColor)
  if spacerColor == nil then error("demonnic.TextFormatter:setSpacerColor(spacerColor): Argument error, string expected, got " .. type(spacerColor)) end
  self.options.spacerColor = spacerColor
end

function demonnic.TextFormatter:setTextColor(textColor)
  local textColor = self:checkString(textColor)
  if textColor == nil then error("demonnic.TextFormatter:setTextColor(textColor): Argument error, string expected, got " .. type(textColor)) end
  self.options.textColor = textColor
end

function demonnic.TextFormatter:setSpacer(spacer)
  local spacer = self:checkString(spacer)
  if spacer == nil then error("demonnic.TextFormatter:setSpacer(spacer): Argument error, string expect, got " .. type(spacer)) end
  self.options.spacer = spacer
end

function demonnic.TextFormatter:setAlignment(alignment)
  local validAlignments = {
    "left",
    "right",
    "center"
  }
  if not table.contains(validAlignments, alignment) then
    error("demonnic.TextFormatter:setAlignment(alignment): Argument error: Only valid arguments for setAlignment are 'left', 'right', or 'center'. You sent" .. alignment)
  end
  self.options.alignment = alignment
end

function demonnic.TextFormatter:setInside(spacerInside)
  spacerInside = self:toBoolean(spacerInside)
  if spacerInside == nil then
    error("demonnic.TextFormatter:setInside(spacerInside) Argument error, boolean expected, got " .. type(spacerInside))
  end
  self.options.inside = spacerInside
end

function demonnic.TextFormatter:setMirror(shouldMirror)
  shouldMirror = self:toBoolean(shouldMirror)
  if shouldMirror == nil then
    error("demonnic.TextFormatter:setMirror(shouldMirror): Argument error, boolean expected, got " .. type(shouldMirror))
  end
  self.options.mirror = shouldMirror
end

function demonnic.TextFormatter:format(str)
  return demonnic:fText(str, self.options)
end

setmetatable(demonnic.TextFormatter, demonnic.TextFormatter)
function demonnic.TextFormatter:new(options)
  me = {}
  setmetatable(me, self)
  self.__index = self
  if type(options) == "table" then
    for option,value in pairs(options) do
      me.options[option] = value
    end
  elseif option ~= nil then
    error("demonnic.TextFormatter:new(options): Argument error, table expected, got " .. type(options))
  end
  return me
end