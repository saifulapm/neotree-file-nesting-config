local buildTools = {
  "build.config.*",
  "electron-builder.*",
  "grunt*",
  "gulp*",
  "rollup.config.*",
  "tsup.config.*",
  "webpack*",
  "rspack*",
}

local dependencyAnalysis = { "knip.*", ".knip.*" }

local testingTools = {
  ".codecov",
  ".lighthouserc.*",
  ".mocha*",
  "ava.config.*",
  "cypress.*",
  "histoire.config.*",
  "jasmine.*",
  "jest.config.*",
  "karma*",
  "lighthouserc.*",
  "playwright.config.*",
  "puppeteer.config.*",
  "vitest.config.*",
}

local tsconfig = { "api-extractor.json", "jsconfig.*", "tsconfig.*", "tsdoc.*" }

local services = {
  ".circleci*",
  ".firebase*",
  ".github*",
  ".gitlab*",
  ".gitpod*",
  ".sentry*",
  ".stackblitz*",
  ".styleci*",
  ".travis*",
  "appveyor*",
  "azure-pipelines*",
  "crowdin*",
  "jenkins*",
  "netlify*",
  "Procfile",
  "pullapprove*",
  "release-tasks.sh",
  "renovate*",
  "sonar-project.properties",
  "unlighthouse*",
  "vercel*",
  "wrangler.toml",
}

local linters = {
  ".commitlint*",
  ".dlint.json",
  ".dprint.json*",
  ".editorconfig",
  ".eslint*",
  ".flowconfig",
  ".jslint*",
  ".lintstagedrc*",
  ".markdownlint*",
  ".prettier*",
  ".pylintrc",
  ".ruff.toml",
  ".stylelint*",
  ".textlint*",
  ".xo-config*",
  ".yamllint*",
  "biome.json*",
  "commitlint*",
  "dangerfile*",
  "dlint.json",
  "dprint.json*",
  "eslint*",
  "lint-staged*",
  "phpcs.xml",
  "prettier*",
  "pyrightconfig.json",
  "ruff.toml",
  "stylelint*",
  "tslint*",
  "xo.config.*",
}

local env = { ".env.*", ".envrc", "*.env", "env.d.ts" }

local workspaces = {
  ".gitmojirc.json",
  ".huskyrc*",
  ".node-version",
  ".npm*",
  ".nvmrc",
  ".pnp.*",
  ".pnpm*",
  ".release-please*.json",
  ".releaserc*",
  ".simple-git-hooks*",
  ".tazerc*",
  ".tool-versions",
  ".yarnrc*",
  "bower.json",
  "bun.lockb",
  "firebase.json",
  "lerna*",
  "npm-shrinkwrap.json",
  "nx.*",
  "package-lock.json",
  "package.nls*.json",
  "pnpm*",
  "release-please*.json",
  "release.config.*",
  "simple-git-hooks*",
  "turbo*",
  "workspace.json",
  "yarn*",
}

local docker = {
  "dockerfile*",
  "*.dockerfile",
  ".dockerignore",
  "docker-compose.*",
  "compose.*",
  ".devcontainer.*",
  "captain-definition",
}

local tex = {
  "%1.acn",
  "%1.acr",
  "%1.alg",
  "%1.aux",
  "%1.bbl",
  "%1.blg",
  "%1.fdb_latexmk",
  "%1.fls",
  "%1.glg",
  "%1.glo",
  "%1.gls",
  "%1.idx",
  "%1.ind",
  "%1.ist",
  "%1.lof",
  "%1.log",
  "%1.lot",
  "%1.out",
  "%1.pdf",
  "%1.synctex.gz",
  "%1.toc",
  "%1.xdv",
}

local frameworks = {
  ["app.config.*"] = {},
  ["artisan"] = { "server.php", "webpack.mix.js" },
  ["astro.config.*"] = {},
  ["gatsby-config.*"] = { "gatsby-browser.*", "gatsby-node.*", "gatsby-ssr.*", "gatsby-transformer.*" },
  ["next.config.*"] = { "next-env.d.ts", "next-i18next.config.*" },
  ["nuxt.config.*"] = { ".nuxtignore", ".nuxtrc" },
  ["quasar.conf.js"] = { "quasar.extensions.json" },
  ["remix.config.*"] = { "remix.*" },
  ["svelte.config.*"] = { "mdsvex.config.js", "vite.config.*", "houdini.config.*" },
  ["vite.config.*"] = {},
  ["vue.config.*"] = {},
}

local libraries = {
  ".babelrc*",
  ".cssnanorc*",
  ".htmlnanorc*",
  ".postcssrc*",
  ".terserrc*",
  "babel.config.*",
  "capacitor.config.*",
  "contentlayer.config.*",
  "cssnano.config.*",
  "drizzle.config.*",
  "formkit.config.*",
  "formulate.config.*",
  "htmlnanorc.*",
  "i18n.config.*",
  "ionic.config.*",
  "panda.config.*",
  "postcss.config.*",
  "rspack.config.*",
  "sst.config.*",
  "svgo.config.*",
  "tailwind.config.*",
  "uno.config.*",
  "unocss.config.*",
  "vuetify.config.*",
  "webpack.config.*",
  "windi.config.*",
}
for i = 1, #env do
  table.insert(libraries, env[i])
end
for i = 1, #testingTools do
  table.insert(libraries, testingTools[i])
end
for i = 1, #tsconfig do
  table.insert(libraries, tsconfig[i])
end

local packageJSON = {
  ".browserslist*",
  ".cz-config.js",
  ".czrc",
  "components.*",
  ".nodemon*",
  ".pm2*",
  ".versionrc*",
  ".vscode*",
  ".watchman*",
  "apollo.config.*",
  "nest-cli.*",
  "nodemon*",
  "pm2.*",
  "typedoc*",
  "vetur.config.*",
}
for i = 1, #workspaces do
  table.insert(packageJSON, workspaces[i])
end
for i = 1, #buildTools do
  table.insert(packageJSON, buildTools[i])
end
for i = 1, #services do
  table.insert(packageJSON, services[i])
end
for i = 1, #linters do
  table.insert(packageJSON, linters[i])
end
for i = 1, #dependencyAnalysis do
  table.insert(packageJSON, dependencyAnalysis[i])
end

local readme = {
  "AUTHORS",
  "BACKERS*",
  "CHANGELOG*",
  "CITATION*",
  "CODE_OF_CONDUCT*",
  "CODEOWNERS",
  "CONTRIBUTING*",
  "CONTRIBUTORS",
  "COPYING*",
  "CREDITS",
  "GOVERNANCE.MD",
  "HISTORY.MD",
  "LICENSE*",
  "MAINTAINERS",
  "RELEASE_NOTES*",
  "SECURITY.MD",
  "SPONSORS*",
  "README-*",
}

local cargo =
  { ".clippy.toml", ".rustfmt.toml", "cargo.lock", "clippy.toml", "cross.toml", "rust-toolchain.toml", "rustfmt.toml" }

local gofile = { "go.sum", ".air*" }

local gemfile = { "gemfile.lock", ".ruby-version" }

local composer = { "composer.lock", "phpunit.xml*", "psalm*.xml", ".php*.cache" }

local dotnetProject = { "*proj.user", "*.config", "appsettings.*", "bundleconfig.json" }

local pubspecYAML = {
  ".metadata",
  ".packages",
  "all_lint_rules.yaml",
  "analysis_options.yaml",
  "build.yaml",
  "pubspec.lock",
  "pubspec_overrides.yaml",
}

local elixir = { "mix.lock", ".formatter.exs", ".credo.exs", ".dialyzer_ignore.exs", ".iex.exs", ".tool-versions" }

local pythonConfigs = { "tox.ini", ".editorconfig", ".flake8", ".isort.cfg", ".python-version" }

local requirementstxt = { "requirements*.txt", "requirements*.in", "requirements*.pip" }

for i = 1, #pythonConfigs do
  table.insert(requirementstxt, pythonConfigs[i])
end

local setupcfg = { "setup.cfg", "MANIFEST.in" }

for i = 1, #requirementstxt do
  table.insert(setupcfg, requirementstxt[i])
end

local setuppy = { "setup.py" }
for i = 1, #setupcfg do
  table.insert(setuppy, setupcfg[i])
end

local pipfile = { "Pipfile", "Pipfile.lock" }
for i = 1, #requirementstxt do
  table.insert(pipfile, requirementstxt[i])
end

local hatchtoml = { "hatch.toml" }
for i = 1, #requirementstxt do
  table.insert(hatchtoml, requirementstxt[i])
end

local pyprojecttoml = {
  -- the one config file to rule them all
  "pyproject.toml",
  "pdm.lock",
  ".pdm.toml",
  ".pdm-python",
  "poetry.lock",
  "poetry.toml",
}
for i = 1, #setuppy do
  table.insert(pyprojecttoml, setuppy[i])
end
for i = 1, #pipfile do
  table.insert(pyprojecttoml, pipfile[i])
end
for i = 1, #hatchtoml do
  table.insert(pyprojecttoml, hatchtoml[i])
end
for i = 1, #linters do
  table.insert(pyprojecttoml, linters[i])
end

local phoenixLiveView = { "%1.html.eex", "%1.html.leex", "%1.html.heex" }

local denoRuntime = { "import_map.json", "import-map.json", "deno.lock" }
for i = 1, #tsconfig do
  table.insert(denoRuntime, tsconfig[i])
end
for i = 1, #env do
  table.insert(denoRuntime, env[i])
end

local sqlite = { "*.db-shm", "*.db-wal" }

local razor = { "%1.razor.css", "%1.razor.scss", "%1.razor.cs" }

local base = {
  [".clang-tidy"] = ".clang-format, .clangd, compile_commands.json",
  [".gitignore"] = ".gitattributes, .gitmodules, .gitmessage, .mailmap, .git-blame*",
  [".project"] = ".classpath",
  ["*.asax"] = "%1.*.cs, %1.*.vb",
  ["*.ascx"] = "%1.*.cs, %1.*.vb",
  ["*.ashx"] = "%1.*.cs, %1.*.vb",
  ["*.aspx"] = "%1.*.cs, %1.*.vb",
  ["*.axaml"] = "%1.axaml.cs",
  ["*.bloc.dart"] = "%1.event.dart, %1.state.dart",
  ["*.c"] = "%1.h",
  ["*.cc"] = "%1.hpp, %1.h, %1.hxx, %1.hh",
  ["*.cjs"] = "%1.cjs.map, %1.*.cjs, %1_*.cjs",
  ["*.component.ts"] = "%1.component.html, %1.component.spec.ts, %1.component.css, %1.component.scss, %1.component.sass, %1.component.less",
  ["*.cpp"] = "%1.hpp, %1.h, %1.hxx, %1.hh",
  ["*.cs"] = "%1.*.cs",
  ["*.cshtml"] = "%1.cshtml.cs",
  ["*.css"] = "%1.css.map, %1.*.css",
  ["*.cxx"] = "%1.hpp, %1.h, %1.hxx, %1.hh",
  ["*.dart"] = "%1.freezed.dart, %1.g.dart",
  ["*.fs"] = "%1.fs.js, %1.fs.js.map, %1.fs.jsx, %1.fs.ts, %1.fs.tsx, %1.fs.rs, %1.fs.php, %1.fs.dart",
  ["*.go"] = "%1_test.go",
  ["*.java"] = "%1.class",
  ["*.js"] = "%1.js.map, %1.*.js, %1_*.js",
  ["*.jsx"] = "%1.js, %1.*.jsx, %1_*.js, %1_*.jsx, %1.less, %1.module.less",
  ["*.master"] = "%1.*.cs, %1.*.vb",
  ["*.md"] = "%1.*",
  ["*.mjs"] = "%1.mjs.map, %1.*.mjs, %1_*.mjs",
  ["*.module.ts"] = "%1.resolver.ts, %1.controller.ts, %1.service.ts",
  ["*.mts"] = "%1.mts.map, %1.*.mts, %1_*.mts",
  ["*.pubxml"] = "%1.pubxml.user",
  ["*.py"] = "%1.pyi",
  ["*.resx"] = "%1.*.resx, %1.designer.cs, %1.designer.vb",
  ["*.ts"] = "%1.js, %1.d.ts.map, %1.*.ts, %1_*.js, %1_*.ts",
  ["*.tsx"] = "%1.ts, %1.*.tsx, %1_*.ts, %1_*.tsx, %1.less, %1.module.less, %1.scss, %1.module.scss",
  ["*.vue"] = "%1.*.ts, %1.*.js, %1.story.vue",
  ["*.xaml"] = "%1.xaml.cs",
  ["BUILD.bazel"] = "*.bzl, *.bazel, *.bazelrc, bazel.rc, .bazelignore, .bazelproject, WORKSPACE",
  ["CMakeLists.txt"] = "*.cmake, *.cmake.in, .cmake-format.yaml, CMakePresets.json, CMakeCache.txt",
  ["default.nix"] = "shell.nix",
  ["flake.nix"] = "flake.lock",
  ["go.mod"] = "go.sum",
  ["go.work"] = "go.work.sum",
  ["I*.cs"] = "%1.cs",
  ["Makefile"] = "*.mk",
  ["shims.d.ts"] = "*.d.ts",
}

local svelteKitRouting = {
  ["+page.svelte"] = "+page.server.ts,+page.server.js,+page.ts,+page.js,+page.gql",
  ["+layout.svelte"] = "+layout.ts,+layout.ts,+layout.js,+layout.server.ts,+layout.server.js,+layout.gql",
}

local sortObject = function(obj, fn)
  fn = fn or function(a, b)
    return a < b
  end
  local keys = {}
  for key in pairs(obj) do
    table.insert(keys, key)
  end
  table.sort(keys, fn)
  local sortedObj = {}
  for _, key in ipairs(keys) do
    sortedObj[key] = obj[key]
  end
  return sortedObj
end

local convertBaseTable = function(tbl)
  local result = {}
  for name, str in pairs(tbl) do
    local pattern = string.gsub(name, "%.", "%%.") -- escape dots
    pattern = string.gsub(pattern, "%*", "(.*)") -- convert * to Lua pattern
    pattern = pattern .. "$" -- add end of string anchor

    local files = {}
    for file in string.gmatch(str, "([^,]+)") do
      local glob = string.gsub(file, "%.", "%%.") -- escape dots
      glob = string.gsub(glob, "%%1", "%%1") -- convert %1 to Lua capture
      glob = string.gsub(glob, "%s+", "") -- remove spaces
      table.insert(files, glob)
    end

    result[name] = {
      pattern = pattern,
      files = files,
    }
  end
  return result
end

local function convertStringTable(name, tbl, ignoreCase)
  local pattern = string.gsub(name, "%.", "%%.") -- escape dots
  pattern = string.gsub(pattern, "%*", "(.*)") -- convert * to Lua pattern
  pattern = pattern .. "$" -- add end of string anchor

  local files = {}
  for _, str in ipairs(tbl) do
    local glob = string.gsub(str, "%.", "%%.") -- escape dots
    glob = string.gsub(glob, "%%1", "%%1") -- convert %1 to Lua capture
    glob = string.gsub(glob, "%s+", "") -- remove spaces
    table.insert(files, glob)
  end

  local result = {
    [name] = {
      pattern = pattern,
      files = files,
    },
  }

  if ignoreCase then
    result[name].ignore_case = true
  end

  return result
end

local function mergeTables(t1, t2)
  for k, v in pairs(t2) do
    if type(v) == "table" then
      if type(t1[k] or false) == "table" then
        mergeTables(t1[k] or {}, t2[k] or {})
      else
        t1[k] = v
      end
    else
      t1[k] = v
    end
  end
  return t1
end

local function stringify(item)
  return vim.inspect(item, { indent = string.rep(" ", 2) })
end

local full = convertBaseTable(base)
full = mergeTables(full, convertStringTable(".env", env))
full = mergeTables(full, convertStringTable("Dockerfile", docker))
full = mergeTables(full, convertStringTable("package.json", packageJSON))
full = mergeTables(full, convertStringTable("rush.json", packageJSON))
full = mergeTables(full, convertStringTable("pubspec.yaml", pubspecYAML))
full = mergeTables(full, convertStringTable("README.*", readme, true))
full = mergeTables(full, convertStringTable("Cargo.toml", cargo))
full = mergeTables(full, convertStringTable("gemfile", gemfile))
full = mergeTables(full, convertStringTable("go.mod", gofile))
full = mergeTables(full, convertStringTable("composer.json", composer))
full = mergeTables(full, convertStringTable("*.csproj", dotnetProject))
full = mergeTables(full, convertStringTable("*.vbproj", dotnetProject))
full = mergeTables(full, convertStringTable("mix.exs", elixir))
full = mergeTables(full, convertStringTable("pyproject.toml", pyprojecttoml))
full = mergeTables(full, convertStringTable("setup.cfg", setupcfg))
full = mergeTables(full, convertStringTable("setup.py", setuppy))
full = mergeTables(full, convertStringTable("Pipfile", pipfile))
full = mergeTables(full, convertStringTable("hatch.toml", hatchtoml))
full = mergeTables(full, convertStringTable("requirements.txt", requirementstxt))
full = mergeTables(full, convertStringTable("*.ex", phoenixLiveView))
full = mergeTables(full, convertStringTable("*.tex", tex))
full = mergeTables(full, convertStringTable("deno.json*", denoRuntime))
full = mergeTables(full, convertStringTable("*.db", sqlite))
full = mergeTables(full, convertStringTable("*.razor", razor))

for n, i in pairs(frameworks) do
  local merged = mergeTables(i, libraries)
  local result = convertStringTable(n, merged)
  full[n] = result[n]
end

full = mergeTables(full, convertBaseTable(svelteKitRouting))

local init_template = [[
--- Generated by ./build/convert.lua
--- DO NOT EDIT THIS FILE DIRECTLY

local M = {}

M.nesting_rules = %s

return M
-- vim: set nomodifiable :
]]

local readme_template = [[
<h1>Neo-tree File Nesting Config<sup><em> for Neovim</em></sup></h1>

![neotree-file-nesting-config](https://github.com/saifulapm/neotree-file-nesting-config/assets/3833316/88a6e479-e23d-40d2-a44b-b755c43ea666)


A neovim implementation of the [vscode-file-nesting-config](https://github.com/antfu/vscode-file-nesting-config) with [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim).


## Use it

### By Neovim Plugin

```lua
-- lazy.nvim
{
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      -- Others dependencies
      'saifulapm/neotree-file-nesting-config', -- add plugin as dependency. no need any other config or setup call
    },
    opts = {
      -- recommanded config for better UI
      hide_root_node = true,
      retain_hidden_root_indent = true,
      filesystem = {
        filtered_items = {
          show_hidden_count = false,
          never_show = {
            '.DS_Store',
          },
        },
      },
      default_component_configs = {
        indent = {
          with_expanders = true,
          expander_collapsed = '',
          expander_expanded = '',
        },
      },
      -- others config
    },
    config = function(_, opts)
      -- Adding rules from plugin
      opts.nesting_rules = require('neotree-file-nesting-config').nesting_rules
      require('neo-tree').setup(opts)
    end,
}
```

### Update Manually

If you prefer not using plugin, you can copy rules and add your `neo-tree` config directly. But if you use plugin, you will get updates free.

```lua
-- updated %s
%s
```

## Contributing

The snippet is generated by script, do not edit the README directly.
Instead, go to `build/convert.lua`, make changes and then submit a PR. Thanks!

## Credit & References

- [vscode-file-nesting-config](https://github.com/antfu/vscode-file-nesting-config) - Who created all rules for vscode
]]

local full_str = stringify(full)
local init_output = init_template:format(full_str):gsub('"', "'")
local readme_output = readme_template:format(os.date("%Y-%m-%d %H:%M"), full_str):gsub('"', "'")
vim.fn.writefile(vim.split(init_output, "\n"), "./lua/neotree-file-nesting-config.lua")
vim.fn.writefile(vim.split(readme_output, "\n"), "./README.md")
