require "rails_helper"

RSpec.describe Item, type: :model do
  describe "validations" do
    subject { item.valid? }

    describe "of picture being processable image" do
      let(:item) { Item.new }
      let(:error) { item.errors.where(:picture, :image_not_processable) }

      before do
        item.picture.attach(
          io: Rails.root.join("spec/fixtures/images/#{picture}").open,
          filename: picture
        )

        subject
      end

      context "when picture is an image" do
        let(:picture) { "valid.png" }

        it "does not add an error" do
          expect(error).not_to be_present
        end
      end

      context "when picture is not an image" do
        let(:picture) { "malformed.png" }

        it "adds an error" do
          expect(error).to be_present
        end
      end
    end
  end
end
