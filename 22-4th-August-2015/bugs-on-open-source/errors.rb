

class Foo
  class Error < StandardError; end
  class CredentialsError < Error; end

  def initialize(username='', password='')
    raise CredentialsError, 'Username or Password missing!' if [username, password].any? { |s| s !~ /[^[:space:]]/ }

    login(username, password)
  end

  private

  def login(username, password)

  end

end