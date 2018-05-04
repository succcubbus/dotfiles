"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log("config activated");
    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", function () { return console.log("Control+Enter was pressed"); });
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
    "ui.colorscheme": "solarized8_dark",
    "oni.useDefaultConfig": true,
    "oni.loadInitVim": true,
    "oni.hideMenu": true,
    "tabs.mode": "native",
    "sidebar.enabled": false,
    "editor.fontSize": "14px",
    "editor.fontFamily": "Fira Code",
    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto"
};
