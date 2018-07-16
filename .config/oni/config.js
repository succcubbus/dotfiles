"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log('config activated');
    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind('<c-enter>', function () { return console.log('Control+Enter was pressed'); });
    oni.input.bind('<f7>', function () {
        return oni.commands.executeCommand('language.findAllReferences');
    });
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};
exports.deactivate = function (oni) {
    console.log('config deactivated');
};
exports.configuration = {
    'ui.colorscheme': 'solarized8_dark',
    'oni.useDefaultConfig': true,
    'oni.loadInitVim': true,
    'oni.hideMenu': true,
    'tabs.mode': 'native',
    'sidebar.enabled': true,
    'sidebar.default.open': false,
    'experimental.mardownPreview.enabled': true,
    'editor.fontSize': '14px',
    'editor.fontFamily': 'Fira Code',
    // 'editor.renderer': 'webgl',
    //
    'language.elixir.languageServer.command': '/home/jannis/projects/elixir-ls/release/language_server.sh',
    'language.elixir.languageServer.rootFiles': ['mix.exs'],
    'language.rust.languageServer.command': 'rustup',
    'language.rust.languageServer.arguments': ['run', 'nightly', 'rls'],
    'language.rust.languageServer.rootFiles': ['Cargo.toml']
};
