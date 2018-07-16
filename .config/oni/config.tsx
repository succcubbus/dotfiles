import * as React from '/opt/oni/resources/app/node_modules/react';
import * as Oni from '/opt/oni/resources/app/node_modules/oni-api';

export const activate = (oni: Oni.Plugin.Api) => {
  console.log('config activated');

  // Input
  //
  // Add input bindings here:
  //
  oni.input.bind('<c-enter>', () => console.log('Control+Enter was pressed'));
  oni.input.bind('<f7>', () =>
    oni.commands.executeCommand('language.findAllReferences'),
  );

  //
  // Or remove the default bindings here by uncommenting the below line:
  //
  // oni.input.unbind("<c-p>")
};

export const deactivate = (oni: Oni.Plugin.Api) => {
  console.log('config deactivated');
};

export const configuration = {
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

  'language.elixir.languageServer.command':
    '/home/jannis/projects/elixir-ls/release/language_server.sh',
  'language.elixir.languageServer.rootFiles': ['mix.exs'],
  'language.rust.languageServer.command': 'rustup',
  'language.rust.languageServer.arguments': ['run', 'nightly', 'rls'],
  'language.rust.languageServer.rootFiles': ['Cargo.toml'],
};
