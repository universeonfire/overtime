class Post < ApplicationRecord
	enum status: {submitted: 0 , approved: 1 , rejected: 2 }
	belongs_to :user ,optional: true
	validates_presence_of :date, :work_performed , :daily_hours
	validates :daily_hours ,numericality: { greater_than: 0.0}

	scope :posts_by, ->(user) { where(user_id: user.id) }

	after_save :confirm_audit_log, if: :submitted?
	after_save :un_confirm_audit_log, if: :rejected?

	private

		def confirm_audit_log
			auditlog = Auditlog.where(user_id: self.user_id, start_date: (self.date - 7.days..self.date)).last
			auditlog.confirmed! if auditlog
		end

		def un_confirm_audit_log
			auditlog = Auditlog.where(user_id: self.user_id, start_date: (self.date - 7.days..self.date)).last
			auditlog.pending! if auditlog
		end
end

