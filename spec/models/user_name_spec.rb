require 'rails_helper'

RSpec.describe Username, type: :model do
  it { is_expected.to have_db_column :name }
end
