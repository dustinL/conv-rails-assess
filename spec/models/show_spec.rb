describe Show do
  it { should validate_presence_of :location}
  it { should belong_to :artist }
  it { should validate_presence_of :date}

end
