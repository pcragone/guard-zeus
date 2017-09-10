require 'guard/compat/test/template'

require 'guard/zeus'

RSpec.describe Guard::Zeus do
  describe 'template' do
    subject { Guard::Compat::Test::Template.new(described_class) }

    it 'works' do
      expect(subject.changed('config/lib/foo_spec.rb')).to eq(%w(config/lib/foo_spec.rb))
      expect(subject.changed('spec/spec_helper.rb')).to eq(%w(spec/spec_helper.rb))
      expect(subject.changed('Gemfile')).to eq(%w(Gemfile))
    end
  end
end
