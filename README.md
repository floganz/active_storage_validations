# README

Processable image validation strange behaviour

Install steps
1. Install Ruby.
2. Install libvips: `brew install vips`.
3. Run `bundle install`.
4. Set up the development and test databases with `rails db:create db:schema:load db:seed db:test:prepare`.

Steps to reproduce via the interface:
1. Start a server.
2. Visit http://localhost:3000/items/new.
3. Add to file field "malformed.png" from "spec/fixtures/images" folder.
4. Save.

**Expected result**: Validation error is display that image is not processable. Validation error is display that image is not processable.

**Actual result**: model is saved without error, obviously that image couldn't be displayed.

Same behaviour we can see in tests where for same invalid image not error is added on the model.
Just run `rspec`.
