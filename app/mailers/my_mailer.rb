
class MyMailer < ActionMailer::Base

	def mandrill_client
		@mandrill_client ||= Mandrill::API.new 'ATr0CgWC5G2ap_IEvDgaVA'
	end

	def new_user(user)
		template_name = "new-user"
		template_content = []
		message = {
			to: [{email: "#{user.email}" }],
			subject: "Welcome to Swiftbeard",
			merge_vars: [
				{
					rcpt: user.email,
					vars: [{ name: "USER_NAME", content: user.name}]
				}

			]
		}

		mandrill_client.messages.send_template template_name, template_content, message
	end
end