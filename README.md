<sub><em>Neo-tree's</em></sub>
<h1>File Nesting Config<sup><em> for Neovim</em></sup></h1>

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
-- updated 2024-06-04 14:01
{
  ['*.asax'] = {
    files = { '%1%.*%.cs', '%1%.*%.vb' },
    pattern = '(.*)%.asax$'
  },
  ['*.ascx'] = {
    files = { '%1%.*%.cs', '%1%.*%.vb' },
    pattern = '(.*)%.ascx$'
  },
  ['*.ashx'] = {
    files = { '%1%.*%.cs', '%1%.*%.vb' },
    pattern = '(.*)%.ashx$'
  },
  ['*.aspx'] = {
    files = { '%1%.*%.cs', '%1%.*%.vb' },
    pattern = '(.*)%.aspx$'
  },
  ['*.axaml'] = {
    files = { '%1%.axaml%.cs' },
    pattern = '(.*)%.axaml$'
  },
  ['*.bloc.dart'] = {
    files = { '%1%.event%.dart', '%1%.state%.dart' },
    pattern = '(.*)%.bloc%.dart$'
  },
  ['*.c'] = {
    files = { '%1%.h' },
    pattern = '(.*)%.c$'
  },
  ['*.cc'] = {
    files = { '%1%.hpp', '%1%.h', '%1%.hxx', '%1%.hh' },
    pattern = '(.*)%.cc$'
  },
  ['*.cjs'] = {
    files = { '%1%.cjs%.map', '%1%.*%.cjs', '%1_*%.cjs' },
    pattern = '(.*)%.cjs$'
  },
  ['*.component.ts'] = {
    files = { '%1%.component%.html', '%1%.component%.spec%.ts', '%1%.component%.css', '%1%.component%.scss', '%1%.component%.sass', '%1%.component%.less' },
    pattern = '(.*)%.component%.ts$'
  },
  ['*.cpp'] = {
    files = { '%1%.hpp', '%1%.h', '%1%.hxx', '%1%.hh' },
    pattern = '(.*)%.cpp$'
  },
  ['*.cs'] = {
    files = { '%1%.*%.cs' },
    pattern = '(.*)%.cs$'
  },
  ['*.cshtml'] = {
    files = { '%1%.cshtml%.cs' },
    pattern = '(.*)%.cshtml$'
  },
  ['*.csproj'] = {
    files = { '*proj%.user', '*%.config', 'appsettings%.*', 'bundleconfig%.json' },
    pattern = '(.*)%.csproj$'
  },
  ['*.css'] = {
    files = { '%1%.css%.map', '%1%.*%.css' },
    pattern = '(.*)%.css$'
  },
  ['*.cxx'] = {
    files = { '%1%.hpp', '%1%.h', '%1%.hxx', '%1%.hh' },
    pattern = '(.*)%.cxx$'
  },
  ['*.dart'] = {
    files = { '%1%.freezed%.dart', '%1%.g%.dart' },
    pattern = '(.*)%.dart$'
  },
  ['*.db'] = {
    files = { '*%.db-shm', '*%.db-wal' },
    pattern = '(.*)%.db$'
  },
  ['*.ex'] = {
    files = { '%1%.html%.eex', '%1%.html%.leex', '%1%.html%.heex' },
    pattern = '(.*)%.ex$'
  },
  ['*.fs'] = {
    files = { '%1%.fs%.js', '%1%.fs%.js%.map', '%1%.fs%.jsx', '%1%.fs%.ts', '%1%.fs%.tsx', '%1%.fs%.rs', '%1%.fs%.php', '%1%.fs%.dart' },
    pattern = '(.*)%.fs$'
  },
  ['*.go'] = {
    files = { '%1_test%.go' },
    pattern = '(.*)%.go$'
  },
  ['*.java'] = {
    files = { '%1%.class' },
    pattern = '(.*)%.java$'
  },
  ['*.js'] = {
    files = { '%1%.js%.map', '%1%.*%.js', '%1_*%.js' },
    pattern = '(.*)%.js$'
  },
  ['*.jsx'] = {
    files = { '%1%.js', '%1%.*%.jsx', '%1_*%.js', '%1_*%.jsx', '%1%.less', '%1%.module%.less' },
    pattern = '(.*)%.jsx$'
  },
  ['*.master'] = {
    files = { '%1%.*%.cs', '%1%.*%.vb' },
    pattern = '(.*)%.master$'
  },
  ['*.md'] = {
    files = { '%1%.*' },
    pattern = '(.*)%.md$'
  },
  ['*.mjs'] = {
    files = { '%1%.mjs%.map', '%1%.*%.mjs', '%1_*%.mjs' },
    pattern = '(.*)%.mjs$'
  },
  ['*.module.ts'] = {
    files = { '%1%.resolver%.ts', '%1%.controller%.ts', '%1%.service%.ts' },
    pattern = '(.*)%.module%.ts$'
  },
  ['*.mts'] = {
    files = { '%1%.mts%.map', '%1%.*%.mts', '%1_*%.mts' },
    pattern = '(.*)%.mts$'
  },
  ['*.pubxml'] = {
    files = { '%1%.pubxml%.user' },
    pattern = '(.*)%.pubxml$'
  },
  ['*.razor'] = {
    files = { '%1%.razor%.css', '%1%.razor%.scss', '%1%.razor%.cs' },
    pattern = '(.*)%.razor$'
  },
  ['*.resx'] = {
    files = { '%1%.*%.resx', '%1%.designer%.cs', '%1%.designer%.vb' },
    pattern = '(.*)%.resx$'
  },
  ['*.tex'] = {
    files = { '%1%.acn', '%1%.acr', '%1%.alg', '%1%.aux', '%1%.bbl', '%1%.blg', '%1%.fdb_latexmk', '%1%.fls', '%1%.glg', '%1%.glo', '%1%.gls', '%1%.idx', '%1%.ind', '%1%.ist', '%1%.lof', '%1%.log', '%1%.lot', '%1%.out', '%1%.pdf', '%1%.synctex%.gz', '%1%.toc', '%1%.xdv' },
    pattern = '(.*)%.tex$'
  },
  ['*.ts'] = {
    files = { '%1%.js', '%1%.d%.ts%.map', '%1%.*%.ts', '%1_*%.js', '%1_*%.ts' },
    pattern = '(.*)%.ts$'
  },
  ['*.tsx'] = {
    files = { '%1%.ts', '%1%.*%.tsx', '%1_*%.ts', '%1_*%.tsx', '%1%.less', '%1%.module%.less', '%1%.scss', '%1%.module%.scss' },
    pattern = '(.*)%.tsx$'
  },
  ['*.vbproj'] = {
    files = { '*proj%.user', '*%.config', 'appsettings%.*', 'bundleconfig%.json' },
    pattern = '(.*)%.vbproj$'
  },
  ['*.vue'] = {
    files = { '%1%.*%.ts', '%1%.*%.js', '%1%.story%.vue' },
    pattern = '(.*)%.vue$'
  },
  ['*.xaml'] = {
    files = { '%1%.xaml%.cs' },
    pattern = '(.*)%.xaml$'
  },
  ['+layout.svelte'] = {
    files = { '+layout%.ts', '+layout%.ts', '+layout%.js', '+layout%.server%.ts', '+layout%.server%.js', '+layout%.gql' },
    pattern = '+layout%.svelte$'
  },
  ['+page.svelte'] = {
    files = { '+page%.server%.ts', '+page%.server%.js', '+page%.ts', '+page%.js', '+page%.gql' },
    pattern = '+page%.svelte$'
  },
  ['.clang-tidy'] = {
    files = { '%.clang-format', '%.clangd', 'compile_commands%.json' },
    pattern = '%.clang-tidy$'
  },
  ['.env'] = {
    files = { '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts' },
    pattern = '%.env$'
  },
  ['.gitignore'] = {
    files = { '%.gitattributes', '%.gitmodules', '%.gitmessage', '%.mailmap', '%.git-blame*' },
    pattern = '%.gitignore$'
  },
  ['.project'] = {
    files = { '%.classpath' },
    pattern = '%.project$'
  },
  ['BUILD.bazel'] = {
    files = { '*%.bzl', '*%.bazel', '*%.bazelrc', 'bazel%.rc', '%.bazelignore', '%.bazelproject', 'WORKSPACE' },
    pattern = 'BUILD%.bazel$'
  },
  ['CMakeLists.txt'] = {
    files = { '*%.cmake', '*%.cmake%.in', '%.cmake-format%.yaml', 'CMakePresets%.json', 'CMakeCache%.txt' },
    pattern = 'CMakeLists%.txt$'
  },
  ['Cargo.toml'] = {
    files = { '%.clippy%.toml', '%.rustfmt%.toml', 'cargo%.lock', 'clippy%.toml', 'cross%.toml', 'rust-toolchain%.toml', 'rustfmt%.toml' },
    pattern = 'Cargo%.toml$'
  },
  Dockerfile = {
    files = { 'dockerfile*', '*%.dockerfile', '%.dockerignore', 'docker-compose%.*', 'compose%.*', '%.devcontainer%.*', 'captain-definition' },
    pattern = 'Dockerfile$'
  },
  ['I*.cs'] = {
    files = { '%1%.cs' },
    pattern = 'I(.*)%.cs$'
  },
  Makefile = {
    files = { '*%.mk' },
    pattern = 'Makefile$'
  },
  Pipfile = {
    files = { 'Pipfile', 'Pipfile%.lock', 'requirements*%.txt', 'requirements*%.in', 'requirements*%.pip', 'tox%.ini', '%.editorconfig', '%.flake8', '%.isort%.cfg', '%.python-version' },
    pattern = 'Pipfile$'
  },
  ['README*'] = {
    files = { 'AUTHORS', 'BACKERS*', 'CHANGELOG*', 'CITATION*', 'CODE_OF_CONDUCT*', 'CODEOWNERS', 'CONTRIBUTING*', 'CONTRIBUTORS', 'COPYING*', 'CREDITS', 'GOVERNANCE%.MD', 'HISTORY%.MD', 'LICENSE*', 'MAINTAINERS', 'RELEASE_NOTES*', 'SECURITY%.MD', 'SPONSORS*' },
    ignore_case = true,
    pattern = 'README(.*)$'
  },
  ['app.config.*'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'app%.config%.(.*)$'
  },
  artisan = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'artisan$'
  },
  ['astro.config.*'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'astro%.config%.(.*)$'
  },
  ['composer.json'] = {
    files = { 'composer%.lock', 'phpunit%.xml*', 'psalm*%.xml', '%.php*%.cache' },
    pattern = 'composer%.json$'
  },
  ['default.nix'] = {
    files = { 'shell%.nix' },
    pattern = 'default%.nix$'
  },
  ['deno.json*'] = {
    files = { 'import_map%.json', 'import-map%.json', 'deno%.lock', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts' },
    pattern = 'deno%.json(.*)$'
  },
  ['flake.nix'] = {
    files = { 'flake%.lock' },
    pattern = 'flake%.nix$'
  },
  ['gatsby-config.*'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'gatsby-config%.(.*)$'
  },
  gemfile = {
    files = { 'gemfile%.lock', '%.ruby-version' },
    pattern = 'gemfile$'
  },
  ['go.mod'] = {
    files = { 'go%.sum', '%.air*' },
    pattern = 'go%.mod$'
  },
  ['go.work'] = {
    files = { 'go%.work%.sum' },
    pattern = 'go%.work$'
  },
  ['hatch.toml'] = {
    files = { 'hatch%.toml', 'requirements*%.txt', 'requirements*%.in', 'requirements*%.pip', 'tox%.ini', '%.editorconfig', '%.flake8', '%.isort%.cfg', '%.python-version' },
    pattern = 'hatch%.toml$'
  },
  ['mix.exs'] = {
    files = { 'mix%.lock', '%.formatter%.exs', '%.credo%.exs', '%.dialyzer_ignore%.exs', '%.iex%.exs', '%.tool-versions' },
    pattern = 'mix%.exs$'
  },
  ['next.config.*'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'next%.config%.(.*)$'
  },
  ['nuxt.config.*'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'nuxt%.config%.(.*)$'
  },
  ['package.json'] = {
    files = { '%.browserslist*', '%.cz-config%.js', '%.czrc', '%.nodemon*', '%.pm2*', '%.versionrc*', '%.vscode*', '%.watchman*', 'apollo%.config%.*', 'nest-cli%.*', 'nodemon*', 'pm2%.*', 'typedoc*', 'vetur%.config%.*', '%.gitmojirc%.json', '%.huskyrc*', '%.node-version', '%.npm*', '%.nvmrc', '%.pnp%.*', '%.pnpm*', '%.release-please*%.json', '%.releaserc*', '%.simple-git-hooks*', '%.tazerc*', '%.tool-versions', '%.yarnrc*', 'bower%.json', 'bun%.lockb', 'firebase%.json', 'lerna*', 'npm-shrinkwrap%.json', 'nx%.*', 'package-lock%.json', 'package%.nls*%.json', 'pnpm*', 'release-please*%.json', 'release%.config%.*', 'simple-git-hooks*', 'turbo*', 'workspace%.json', 'yarn*', 'build%.config%.*', 'electron-builder%.*', 'grunt*', 'gulp*', 'rollup%.config%.*', 'tsup%.config%.*', 'webpack*', 'rspack*', '%.circleci*', '%.firebase*', '%.github*', '%.gitlab*', '%.gitpod*', '%.sentry*', '%.stackblitz*', '%.styleci*', '%.travis*', 'appveyor*', 'azure-pipelines*', 'crowdin*', 'jenkins*', 'netlify*', 'Procfile', 'pullapprove*', 'release-tasks%.sh', 'renovate*', 'sonar-project%.properties', 'unlighthouse*', 'vercel*', 'wrangler%.toml', '%.commitlint*', '%.dlint%.json', '%.dprint%.json*', '%.editorconfig', '%.eslint*', '%.flowconfig', '%.jslint*', '%.lintstagedrc*', '%.markdownlint*', '%.prettier*', '%.pylintrc', '%.ruff%.toml', '%.stylelint*', '%.textlint*', '%.xo-config*', '%.yamllint*', 'biome%.json', 'commitlint*', 'dangerfile*', 'dlint%.json', 'dprint%.json*', 'eslint*', 'lint-staged*', 'phpcs%.xml', 'prettier*', 'pyrightconfig%.json', 'ruff%.toml', 'stylelint*', 'tslint*', 'xo%.config%.*', 'knip%.*', '%.knip%.*' },
    pattern = 'package%.json$'
  },
  ['pubspec.yaml'] = {
    files = { '%.metadata', '%.packages', 'all_lint_rules%.yaml', 'analysis_options%.yaml', 'build%.yaml', 'pubspec%.lock', 'pubspec_overrides%.yaml' },
    pattern = 'pubspec%.yaml$'
  },
  ['pyproject.toml'] = {
    files = { 'pyproject%.toml', 'pdm%.lock', '%.pdm%.toml', '%.pdm-python', 'poetry%.lock', 'poetry%.toml', 'setup%.py', 'setup%.cfg', 'MANIFEST%.in', 'requirements*%.txt', 'requirements*%.in', 'requirements*%.pip', 'tox%.ini', '%.editorconfig', '%.flake8', '%.isort%.cfg', '%.python-version', 'Pipfile', 'Pipfile%.lock', 'requirements*%.txt', 'requirements*%.in', 'requirements*%.pip', 'tox%.ini', '%.editorconfig', '%.flake8', '%.isort%.cfg', '%.python-version', 'hatch%.toml', 'requirements*%.txt', 'requirements*%.in', 'requirements*%.pip', 'tox%.ini', '%.editorconfig', '%.flake8', '%.isort%.cfg', '%.python-version', '%.commitlint*', '%.dlint%.json', '%.dprint%.json*', '%.editorconfig', '%.eslint*', '%.flowconfig', '%.jslint*', '%.lintstagedrc*', '%.markdownlint*', '%.prettier*', '%.pylintrc', '%.ruff%.toml', '%.stylelint*', '%.textlint*', '%.xo-config*', '%.yamllint*', 'biome%.json', 'commitlint*', 'dangerfile*', 'dlint%.json', 'dprint%.json*', 'eslint*', 'lint-staged*', 'phpcs%.xml', 'prettier*', 'pyrightconfig%.json', 'ruff%.toml', 'stylelint*', 'tslint*', 'xo%.config%.*' },
    pattern = 'pyproject%.toml$'
  },
  ['quasar.conf.js'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'quasar%.conf%.js$'
  },
  ['remix.config.*'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'remix%.config%.(.*)$'
  },
  ['requirements.txt'] = {
    files = { 'requirements*%.txt', 'requirements*%.in', 'requirements*%.pip', 'tox%.ini', '%.editorconfig', '%.flake8', '%.isort%.cfg', '%.python-version' },
    pattern = 'requirements%.txt$'
  },
  ['rush.json'] = {
    files = { '%.browserslist*', '%.cz-config%.js', '%.czrc', '%.nodemon*', '%.pm2*', '%.versionrc*', '%.vscode*', '%.watchman*', 'apollo%.config%.*', 'nest-cli%.*', 'nodemon*', 'pm2%.*', 'typedoc*', 'vetur%.config%.*', '%.gitmojirc%.json', '%.huskyrc*', '%.node-version', '%.npm*', '%.nvmrc', '%.pnp%.*', '%.pnpm*', '%.release-please*%.json', '%.releaserc*', '%.simple-git-hooks*', '%.tazerc*', '%.tool-versions', '%.yarnrc*', 'bower%.json', 'bun%.lockb', 'firebase%.json', 'lerna*', 'npm-shrinkwrap%.json', 'nx%.*', 'package-lock%.json', 'package%.nls*%.json', 'pnpm*', 'release-please*%.json', 'release%.config%.*', 'simple-git-hooks*', 'turbo*', 'workspace%.json', 'yarn*', 'build%.config%.*', 'electron-builder%.*', 'grunt*', 'gulp*', 'rollup%.config%.*', 'tsup%.config%.*', 'webpack*', 'rspack*', '%.circleci*', '%.firebase*', '%.github*', '%.gitlab*', '%.gitpod*', '%.sentry*', '%.stackblitz*', '%.styleci*', '%.travis*', 'appveyor*', 'azure-pipelines*', 'crowdin*', 'jenkins*', 'netlify*', 'Procfile', 'pullapprove*', 'release-tasks%.sh', 'renovate*', 'sonar-project%.properties', 'unlighthouse*', 'vercel*', 'wrangler%.toml', '%.commitlint*', '%.dlint%.json', '%.dprint%.json*', '%.editorconfig', '%.eslint*', '%.flowconfig', '%.jslint*', '%.lintstagedrc*', '%.markdownlint*', '%.prettier*', '%.pylintrc', '%.ruff%.toml', '%.stylelint*', '%.textlint*', '%.xo-config*', '%.yamllint*', 'biome%.json', 'commitlint*', 'dangerfile*', 'dlint%.json', 'dprint%.json*', 'eslint*', 'lint-staged*', 'phpcs%.xml', 'prettier*', 'pyrightconfig%.json', 'ruff%.toml', 'stylelint*', 'tslint*', 'xo%.config%.*', 'knip%.*', '%.knip%.*' },
    pattern = 'rush%.json$'
  },
  ['setup.cfg'] = {
    files = { 'setup%.cfg', 'MANIFEST%.in', 'requirements*%.txt', 'requirements*%.in', 'requirements*%.pip', 'tox%.ini', '%.editorconfig', '%.flake8', '%.isort%.cfg', '%.python-version' },
    pattern = 'setup%.cfg$'
  },
  ['setup.py'] = {
    files = { 'setup%.py', 'setup%.cfg', 'MANIFEST%.in', 'requirements*%.txt', 'requirements*%.in', 'requirements*%.pip', 'tox%.ini', '%.editorconfig', '%.flake8', '%.isort%.cfg', '%.python-version' },
    pattern = 'setup%.py$'
  },
  ['shims.d.ts'] = {
    files = { '*%.d%.ts' },
    pattern = 'shims%.d%.ts$'
  },
  ['svelte.config.*'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'svelte%.config%.(.*)$'
  },
  ['vite.config.*'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'vite%.config%.(.*)$'
  },
  ['vue.config.*'] = {
    files = { '%.babelrc*', '%.cssnanorc*', '%.htmlnanorc*', '%.postcssrc*', '%.terserrc*', 'babel%.config%.*', 'capacitor%.config%.*', 'contentlayer%.config%.*', 'cssnano%.config%.*', 'formkit%.config%.*', 'formulate%.config%.*', 'htmlnanorc%.*', 'i18n%.config%.*', 'ionic%.config%.*', 'panda%.config%.*', 'postcss%.config%.*', 'rspack%.config%.*', 'sst%.config%.*', 'svgo%.config%.*', 'tailwind%.config%.*', 'uno%.config%.*', 'unocss%.config%.*', 'vuetify%.config%.*', 'webpack%.config%.*', 'windi%.config%.*', '%.env%.*', '%.envrc', '*%.env', 'env%.d%.ts', '%.codecov', '%.lighthouserc%.*', '%.mocha*', 'ava%.config%.*', 'cypress%.*', 'histoire%.config%.*', 'jasmine%.*', 'jest%.config%.*', 'karma*', 'lighthouserc%.*', 'playwright%.config%.*', 'puppeteer%.config%.*', 'vitest%.config%.*', 'api-extractor%.json', 'jsconfig%.*', 'tsconfig%.*', 'tsdoc%.*' },
    pattern = 'vue%.config%.(.*)$'
  }
}
```

## Contributing

The snippet is generated by script, do not edit the README directly.
Instead, go to `build/convert.lua`, make changes and then submit a PR. Thanks!

## Credit & References

- [vscode-file-nesting-config](https://github.com/antfu/vscode-file-nesting-config) - Who created all rules for vscode
-- vim: set nomodifiable :

