# == Schema Information
#
# Table name: rings
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image       :string(255)
#  category    :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Ring do
  pending "add some examples to (or delete) #{__FILE__}"
end
