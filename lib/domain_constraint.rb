class DomainConstraint
  def self.matches?(request)
    request.domain.present?
  end
end