local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local sublime = util.template(M.template, colors)
  return sublime
end

-- vim.schedule(function()
--   local config = require("solarized-osaka.config")
--   config.setup({ style = "storm" })
--   local colors = require("solarized-osaka.colors").setup()
--
--   local lookup = {}
--
--   local function process(cc, parent)
--     for k, v in pairs(cc) do
--       if type(v) == "string" then
--         if v:sub(1, 1) == "#" then
--           lookup[v] = (parent and (parent .. ".") or "") .. k
--         end
--       else
--         process(v, (parent and (parent .. ".") or "") .. k)
--       end
--     end
--   end
--   process(colors)
--   for c, n in pairs(lookup) do
--     M.template = M.template:gsub(c, "${" .. n .. "}")
--   end
--   d(lookup)
--   vim.notify(M.template)
-- end)

-- Largely based off https://github.com/enkia/enki-theme
M.template = [[
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>author</key>
	<string>Folke Lemaitre (http://github.com/folke)</string>
	<key>colorSpaceName</key>
	<string>sRGB</string>
	<key>name</key>
	<string>TokyoNight</string>
	<key>semanticClass</key>
	<string>enki.theme.tokyo</string>
	<key>settings</key>
	<array>
		<dict>
			<key>settings</key>
			<dict>
				<key>activeGuide</key>
				<string>#363b54</string>
				<key>background</key>
				<string>${bg}</string>
				<key>caret</key>
				<string>#DBC08A</string>
				<key>findHighlight</key>
				<string>#ffa300</string>
				<key>findHighlightForeground</key>
				<string>#000000</string>
				<key>foreground</key>
				<string>${fg}</string>
				<key>guide</key>
				<string>#4f4f5e40</string>
				<key>gutterForeground</key>
				<string>#3b415caa</string>
				<key>inactiveSelection</key>
				<string>#282833</string>
				<key>invisibles</key>
				<string>#4f4f5e</string>
				<key>lineHighlight</key>
				<string>#00000030</string>
				<key>selection</key>
				<string>#9D599D40</string>
				<key>selectionBorder</key>
				<string>#9D599D</string>
				<key>shadow</key>
				<string>#00000010</string>
				<key>stackGuide</key>
				<string>#4f4f5e60</string>
				<key>tagsOptions</key>
				<string>underline</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Italics - Comments, Storage, Keyword Flow, Vue attributes, Decorators</string>
			<key>scope</key>
			<string>comment, meta.var.expr storage.type, keyword.control.flow, meta.directive.vue punctuation.separator.key-value.html, meta.directive.vue entity.other.attribute-name.html, tag.decorator.js entity.name.tag.js, tag.decorator.js punctuation.definition.tag.js, storage.modifier</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Comment</string>
			<key>scope</key>
			<string>comment, comment.block.documentation, punctuation.definition.comment</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${base01}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Comment Doc</string>
			<key>scope</key>
			<string>comment.block.documentation variable, comment.block.documentation storage, comment.block.documentation punctuation, comment.block.documentation keyword, comment.block.documentation support, comment.block.documentation markup, comment.block.documentation markup.inline.raw.string.markdown, keyword.other.phpdoc.php</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${base01}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Number, Boolean, Undefined, Null</string>
			<key>scope</key>
			<string>variable.other.constant, punctuation.definition.constant, constant.language, constant.numeric, support.constant</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>String, Symbols, Markup Heading</string>
			<key>scope</key>
			<string>string, constant.other.symbol, constant.other.key, markup.heading, meta.attribute-selector</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Colors</string>
			<key>scope</key>
			<string>constant.other.color, constant.other.color.rgb-value.hex punctuation.definition.constant</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#9aa5ce</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Invalid</string>
			<key>scope</key>
			<string>invalid, invalid.illegal</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Invalid deprecated</string>
			<key>scope</key>
			<string>invalid.deprecated</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Storage Type</string>
			<key>scope</key>
			<string>storage.type</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Storage - modifier, var, const, let</string>
			<key>scope</key>
			<string>meta.var.expr storage.type, storage.modifier</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${violet500}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Interpolation</string>
			<key>scope</key>
			<string>punctuation.definition.template-expression, punctuation.section.embedded</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Spread</string>
			<key>scope</key>
			<string>keyword.operator.spread, keyword.operator.rest</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Operator, Misc</string>
			<key>scope</key>
			<string>keyword.operator, keyword.control.as, keyword.other, keyword.operator.bitwise.shift, punctuation, punctuation.definition.constant.markdown, punctuation.definition.string, punctuation.support.type.property-name, text.html.vue-html meta.tag, punctuation.definition.keyword, punctuation.terminator.rule, punctuation.definition.entity, punctuation.definition.tag, punctuation.separator.inheritance.php, punctuation.definition.tag.html, keyword.other.template, keyword.other.substitution, entity.name.operator, text.html.vue meta.tag.block.any.html, text.html.vue meta.tag.inline.any.html, text.html.vue meta.tag.other.html, text.html.twig meta.tag.inline.any.html, text.html.twig meta.tag.block.any.html, text.html.twig meta.tag.structure.any.html, text.html.twig meta.tag.any.html</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue700}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Import, Export, From, Default</string>
			<key>scope</key>
			<string>keyword.control.import, keyword.control.export, keyword.control.from, keyword.control.default, meta.import keyword.other</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Keyword</string>
			<key>scope</key>
			<string>keyword, keyword.control, keyword.other.important</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Keyword SQL</string>
			<key>scope</key>
			<string>keyword.other.DML</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Keyword Operator Logical, Arrow, Ternary, Comparison</string>
			<key>scope</key>
			<string>keyword.operator.logical, storage.type.function, keyword.operator.bitwise, keyword.operator.ternary, keyword.operator.comparison, keyword.operator.relational, keyword.operator.or.regexp</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Tag</string>
			<key>scope</key>
			<string>entity.name.tag, entity.name.tag support.class.component, meta.tag</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Tag Punctuation</string>
			<key>scope</key>
			<string>punctuation.definition.tag, punctuation.definition.tag.html, punctuation.definition.tag.begin.html, punctuation.definition.tag.end.html</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#ba3c97</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Blade</string>
			<key>scope</key>
			<string>keyword.blade, entity.name.function.blade</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>PHP - Embedded Tag</string>
			<key>scope</key>
			<string>punctuation.section.embedded.begin.php, punctuation.section.embedded.end.php</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Smarty - Twig tag - Blade</string>
			<key>scope</key>
			<string>punctuation.definition.variable.smarty, punctuation.section.embedded.begin.smarty, punctuation.section.embedded.end.smarty, meta.tag.template.value.twig, punctuation.section.tag.twig, meta.tag.expression.twig, punctuation.definition.tag.expression.twig, punctuation.definition.tag.output.twig, variable.parameter.smarty</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#7DCFFF</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Smarty - Twig variable - function</string>
			<key>scope</key>
			<string>variable.other.property.twig, support.function.twig, meta.function-call.twig, keyword.control.twig, keyword.control.smarty, keyword.operator.other.twig, keyword.operator.comparison.twig, support.function.functions.twig, support.function.functions.twig, keyword.operator.assignment.twig, support.function.filters.twig, support.function.built-in.smarty, keyword.operator.smarty, text.blade text.html.blade custom.compiler.blade.php punctuation.section.embedded.php entity.name.tag.block.any.html, text.blade text.html.blade custom.compiler.blade.php punctuation.section.embedded.php constant.other.inline-data.html, text.blade text.html.blade custom.compiler.blade.php support.function constant.other.inline-data.html</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Globals - PHP Constants  etc</string>
			<key>scope</key>
			<string>constant.other.php, variable.other.global.safer, variable.other.global.safer punctuation.definition.variable, variable.other.global, variable.other.global punctuation.definition.variable, constant.other</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${warning}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Variables</string>
			<key>scope</key>
			<string>variable, support.variable, string constant.other.placeholder</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Object Variable</string>
			<key>scope</key>
			<string>variable.other.object, support.module.node</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Object Key</string>
			<key>scope</key>
			<string>meta.object-literal.key, meta.group.braces.curly constant.other.object.key.js string.unquoted.label.js, string.alias.graphql, string.unquoted.graphql, string.unquoted.alias.graphql, meta.field.declaration.ts variable.object.property</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green500}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Object Property</string>
			<key>scope</key>
			<string>variable.other.property, support.variable.property, support.variable.property.dom, meta.function-call variable.other.object.property, variable.language.prototype, meta.property.object, variable.other.member</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Object Property</string>
			<key>scope</key>
			<string>variable.other.object.property</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Object Literal Member lvl 3 (Vue Prop Validation)</string>
			<key>scope</key>
			<string>meta.objectliteral meta.object.member meta.objectliteral meta.object.member meta.objectliteral meta.object.member meta.object-literal.key</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>C-related Block Level Variables</string>
			<key>scope</key>
			<string>source.cpp meta.block variable.other</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Other Variable</string>
			<key>scope</key>
			<string>support.other.variable</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Methods</string>
			<key>scope</key>
			<string>meta.class-method.js entity.name.function.js, entity.name.method.js, variable.function.constructor, keyword.other.special-method, storage.type.cs</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Function Definition</string>
			<key>scope</key>
			<string>entity.name.function, meta.function-call, meta.function-call entity.name.function, variable.function, meta.definition.method entity.name.function, meta.object-literal entity.name.function</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Function Argument</string>
			<key>scope</key>
			<string>variable.parameter.function.language.special, variable.parameter, meta.function.parameters punctuation.definition.variable, meta.function.parameter variable</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${warning}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Constant, Tag Attribute</string>
			<key>scope</key>
			<string>keyword.other.type.php, storage.type.php, constant.character, constant.escape, keyword.other.unit</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Variable Definition</string>
			<key>scope</key>
			<string>meta.definition.variable variable.other.constant, meta.definition.variable variable.other.readwrite, variable.other.declaration</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Inherited Class</string>
			<key>scope</key>
			<string>entity.other.inherited-class</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Class, Support, DOM, etc</string>
			<key>scope</key>
			<string>support.class, support.type, variable.other.readwrite.alias, support.orther.namespace.use.php, meta.use.php, support.other.namespace.php, support.type.sys-types, support.variable.dom, support.constant.math, support.type.object.module, support.constant.json, entity.name.namespace, meta.import.qualifier, entity.name.class</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Class Name</string>
			<key>scope</key>
			<string>entity.name</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Support Function</string>
			<key>scope</key>
			<string>support.function</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS Class and Support</string>
			<key>scope</key>
			<string>source.css support.type.property-name, source.sass support.type.property-name, source.scss support.type.property-name, source.less support.type.property-name, source.stylus support.type.property-name, source.postcss support.type.property-name, support.type.property-name.css, support.type.vendored.property-name, support.type.map.key</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS Font</string>
			<key>scope</key>
			<string>support.constant.font-name, meta.definition.variable</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS Class</string>
			<key>scope</key>
			<string>entity.other.attribute-name.class, meta.at-rule.mixin.scss entity.name.function.scss</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS ID</string>
			<key>scope</key>
			<string>entity.other.attribute-name.id</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#fc7b7b</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS Tag</string>
			<key>scope</key>
			<string>entity.name.tag.css, entity.name.tag.reference, entity.name.tag.scss</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS Tag Reference</string>
			<key>scope</key>
			<string>entity.name.tag.reference</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${warning}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS Property Separator</string>
			<key>scope</key>
			<string>meta.property-list punctuation.separator.key-value</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#9abdf5</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS Punctuation</string>
			<key>scope</key>
			<string>meta.property-list, punctuation.definition.entity.css</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${warning}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>SCSS @</string>
			<key>scope</key>
			<string>meta.at-rule.mixin keyword.control.at-rule.mixin, meta.at-rule.include entity.name.function.scss, meta.at-rule.include keyword.control.at-rule.include</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>SCSS Mixins, Extends, Include Keyword</string>
			<key>scope</key>
			<string>keyword.control.at-rule.include punctuation.definition.keyword, keyword.control.at-rule.mixin punctuation.definition.keyword, meta.at-rule.include keyword.control.at-rule.include, keyword.control.at-rule.extend punctuation.definition.keyword, meta.at-rule.extend keyword.control.at-rule.extend, entity.other.attribute-name.placeholder.css punctuation.definition.entity.css, meta.at-rule.media keyword.control.at-rule.media, meta.at-rule.mixin keyword.control.at-rule.mixin, meta.at-rule.function keyword.control.at-rule.function, keyword.control punctuation.definition.keyword, meta.at-rule.import.scss entity.other.attribute-name.placeholder.scss punctuation.definition.entity.scss, meta.at-rule.import.scss keyword.control.at-rule.import.scss</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${violet500}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>SCSS Include Mixin Argument</string>
			<key>scope</key>
			<string>meta.property-list meta.at-rule.include</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS value</string>
			<key>scope</key>
			<string>support.constant.property-value</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Sub-methods</string>
			<key>scope</key>
			<string>entity.name.module.js, variable.import.parameter.js, variable.other.class.js</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Language methods</string>
			<key>scope</key>
			<string>variable.language</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Variable punctuation</string>
			<key>scope</key>
			<string>variable.other punctuation.definition.variable</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Keyword this with Punctuation, ES7 Bind Operator</string>
			<key>scope</key>
			<string>source.js constant.other.object.key.js string.unquoted.label.js, variable.language.this punctuation.definition.variable, keyword.other.this</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>HTML Attributes</string>
			<key>scope</key>
			<string>entity.other.attribute-name, text.html.basic entity.other.attribute-name.html, text.html.basic entity.other.attribute-name, text.blade entity.other.attribute-name.class, text.html.smarty entity.other.attribute-name.class</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Vue Template attributes</string>
			<key>scope</key>
			<string>meta.directive.vue punctuation.separator.key-value.html, meta.directive.vue entity.other.attribute-name.html</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Vue Template attribute separator</string>
			<key>scope</key>
			<string>meta.directive.vue punctuation.separator.key-value.html</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue700}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS IDs</string>
			<key>scope</key>
			<string>source.sass keyword.control</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS psuedo selectors</string>
			<key>scope</key>
			<string>entity.other.attribute-name.pseudo-class, entity.other.attribute-name.pseudo-element, entity.other.attribute-name.placeholder, meta.property-list meta.property-value</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Inserted</string>
			<key>scope</key>
			<string>markup.inserted</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green500}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Deleted</string>
			<key>scope</key>
			<string>markup.deleted</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red500}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Changed</string>
			<key>scope</key>
			<string>markup.changed</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Regular Expressions</string>
			<key>scope</key>
			<string>string.regexp</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue900}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Regular Expressions - Punctuation</string>
			<key>scope</key>
			<string>punctuation.definition.group</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Regular Expressions - Character Class</string>
			<key>scope</key>
			<string>constant.other.character-class.regexp</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Regular Expressions - Character Class Set</string>
			<key>scope</key>
			<string>constant.other.character-class.set.regexp, punctuation.definition.character-class.regexp</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${warning}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Regular Expressions - Quantifier</string>
			<key>scope</key>
			<string>keyword.operator.quantifier.regexp</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue700}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Regular Expressions - Backslash</string>
			<key>scope</key>
			<string>constant.character.escape.backslash</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Escape Characters</string>
			<key>scope</key>
			<string>constant.character.escape</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue700}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Decorators</string>
			<key>scope</key>
			<string>tag.decorator.js entity.name.tag.js, tag.decorator.js punctuation.definition.tag.js</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>CSS Units</string>
			<key>scope</key>
			<string>keyword.other.unit</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - Level 0</string>
			<key>scope</key>
			<string>source.json meta.mapping.key.json string.quoted.double.json, source.json meta.structure.dictionary.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - Level 1</string>
			<key>scope</key>
			<string>source.json meta.mapping.value.json meta.sequence.json meta.mapping.key.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - Level 2</string>
			<key>scope</key>
			<string>source.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.mapping.key.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - Level 3</string>
			<key>scope</key>
			<string>source.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.key.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - Level 4</string>
			<key>scope</key>
			<string>source.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.key.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${warning}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - Level 5</string>
			<key>scope</key>
			<string>source.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.key.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - Level 6</string>
			<key>scope</key>
			<string>source.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.key.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green500}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - Level 7</string>
			<key>scope</key>
			<string>source.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.key.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - Level 8</string>
			<key>scope</key>
			<string>source.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.value.json meta.sequence.json meta.mapping.key.json string.quoted.double.json punctuation.definition.string.end.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Key - value</string>
			<key>scope</key>
			<string>source.json meta.structure.dictionary.json meta.structure.dictionary.value.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json string.quoted.double.json, source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.array.json meta.structure.dictionary.json meta.structure.dictionary.value.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Plain Punctuation</string>
			<key>scope</key>
			<string>punctuation.definition.list_item.markdown</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#9abdf5</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Block Punctuation</string>
			<key>scope</key>
			<string>meta.block, meta.brace, punctuation.definition.block, punctuation.definition.use, punctuation.definition.group.shell, punctuation.definition.class, punctuation.definition.begin.bracket, punctuation.definition.end.bracket, punctuation.definition.parameters, punctuation.definition.arguments, punctuation.definition.dictionary, punctuation.definition.array, punctuation.section</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#9abdf5</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Plain</string>
			<key>scope</key>
			<string>meta.jsx.children, meta.embedded.block</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>HTML text</string>
			<key>scope</key>
			<string>text.html</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#9aa5ce</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Markup Raw Inline</string>
			<key>scope</key>
			<string>text.html.markdown markup.inline.raw.markdown</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${magenta}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Markup Raw Inline Punctuation</string>
			<key>scope</key>
			<string>text.html.markdown markup.inline.raw.markdown punctuation.definition.raw.markdown</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#4E5579</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Heading 1</string>
			<key>scope</key>
			<string>heading.1.markdown entity.name, heading.1.markdown punctuation.definition.heading.markdown</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>${blue700}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Heading 2</string>
			<key>scope</key>
			<string>heading.2.markdown entity.name, heading.2.markdown punctuation.definition.heading.markdown</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>#61bdf2</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Heading 3</string>
			<key>scope</key>
			<string>heading.3.markdown entity.name, heading.3.markdown punctuation.definition.heading.markdown</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Heading 4</string>
			<key>scope</key>
			<string>heading.4.markdown entity.name, heading.4.markdown punctuation.definition.heading.markdown</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>#6d91de</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Heading 5</string>
			<key>scope</key>
			<string>heading.5.markdown entity.name, heading.5.markdown punctuation.definition.heading.markdown</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>#9aa5ce</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Heading 6</string>
			<key>scope</key>
			<string>heading.6.markdown entity.name, heading.6.markdown punctuation.definition.heading.markdown</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>#747ca1</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup - Italic</string>
			<key>scope</key>
			<string>markup.italic, markup.italic punctuation</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup - Bold</string>
			<key>scope</key>
			<string>markup.bold, markup.bold punctuation</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup - Bold-Italic</string>
			<key>scope</key>
			<string>markup.bold markup.italic, markup.bold markup.italic punctuation</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold italic</string>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup - Underline</string>
			<key>scope</key>
			<string>markup.underline, markup.underline punctuation</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>underline</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Blockquote</string>
			<key>scope</key>
			<string>markup.quote punctuation.definition.blockquote.markdown</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#4e5579</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup - Quote</string>
			<key>scope</key>
			<string>markup.quote</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Link</string>
			<key>scope</key>
			<string>string.other.link, markup.underline.link, constant.other.reference.link.markdown, string.other.link.description.title.markdown</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green500}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Fenced Code Block</string>
			<key>scope</key>
			<string>markup.fenced_code.block.markdown, markup.inline.raw.string.markdown, variable.language.fenced.markdown</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue700}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown - Separator</string>
			<key>scope</key>
			<string>meta.separator</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>#444b6a</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup - Table</string>
			<key>scope</key>
			<string>markup.table</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#c0cefc</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Token - Info</string>
			<key>scope</key>
			<string>token.info-token</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Token - Warn</string>
			<key>scope</key>
			<string>token.warn-token</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#ffdb69</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Token - Error</string>
			<key>scope</key>
			<string>token.error-token</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red300}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Token - Debug</string>
			<key>scope</key>
			<string>token.debug-token</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#b267e6</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Apache Tag</string>
			<key>scope</key>
			<string>entity.tag.apacheconf</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${red}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Preprocessor</string>
			<key>scope</key>
			<string>meta.preprocessor</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green500}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>ENV value</string>
			<key>scope</key>
			<string>source.env</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
	</array>
	<key>uuid</key>
	<string>06f855e3-9fb7-4fb1-b790-aef06065f34e</string>
</dict>
</plist>

]]

return M
