describe 'content preview', ->
  page = require '../../../../../angular/test/protractor/helpers/page_helper.coffee'

  describe 'previewing a comment', ->
    it 'can preview', ->
      page.loadPath 'setup_comment_preview'
      page.expectText '.preview-button.md-button', 'PREVIEW'
      page.fillIn '.comment-form textarea', 'Here is some text'
      page.click '.preview-button.md-button'
      page.expectText '.preview-pane', 'Patrick Swayze'
      page.expectText '.preview-pane', 'Here is some text'
