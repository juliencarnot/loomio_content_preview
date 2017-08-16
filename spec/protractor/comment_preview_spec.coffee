describe 'content preview', ->
  page = require '../../../../angular/test/protractor/helpers/page_helper.coffee'

  describe 'previewing a comment', ->
    it 'can preview', ->
      page.loadPath 'setup_comment_preview'
      page.expectText '.preview-button', 'PREVIEW'
      page.fillIn '.comment-form__comment-field', 'Here is some text'
      page.click '.preview-button--unselected'
      page.expectText '.preview-pane', 'Patrick Swayze'
      page.expectText '.preview-pane', 'Here is some text'
