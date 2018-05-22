import * as React from '/opt/oni/resources/app/node_modules/react';
import * as Oni from '/opt/oni/resources/app/node_modules/oni-api';

export const activate = (oni: Oni.Plugin.Api) => {
  console.log('config activated');

  // Input
  //
  // Add input bindings here:
  //
  oni.input.bind('<c-enter>', () => console.log('Control+Enter was pressed'));

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

  'sidebar.enabled': false,
  'experimental.mardownPreview.enabled': true,

  'editor.fontSize': '14px',
  'editor.fontFamily': 'Fira Code',
  // 'editor.renderer': 'webgl',
};
