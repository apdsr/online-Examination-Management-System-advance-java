/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
    config.toolbarGroups = [
        { name: 'basicstyles', groups: [ 'basicstyles' ] },
        { name: 'paragraph', groups: [ 'list', 'indent', 'align' ] },
        { name: 'styles' },
        { name: 'colors' }
    ];
    config.extraPlugins = 'wordcount';

    config.wordcount = {

        // Whether or not you want to show the Word Count
        showWordCount: true,

        // Whether or not you want to show the Char Count
        showCharCount: false,

        // Maximum allowed Word Count
        maxWordCount: 4000,

        // Maximum allowed Char Count
        maxCharCount: 10
    };
};



