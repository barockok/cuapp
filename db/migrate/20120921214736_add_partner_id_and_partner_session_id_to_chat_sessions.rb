class AddPartnerIdAndPartnerSessionIdToChatSessions < ActiveRecord::Migration
  def change
    add_column :chat_sessions, :partner_id, :integer
    add_column :chat_sessions, :partner_session_id, :integer
  end
end
