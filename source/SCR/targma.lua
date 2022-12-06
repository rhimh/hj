function targma(msg)
text = nil
if msg and msg.content and msg.content.text then
text = msg.content.text.text
end
msg_chat_id = msg.chat_id
msg_id = msg.id
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text)
if neww then
text = neww or text
end
end
if text == 'ترجمه' or text == 'ترجمة' or text == 'ترجم' or text == 'translat' then 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'ترجمه الي العربية', data = msg.sender_id.user_id..'toar'},{text = 'ترجمه الي الانجليزية', data = msg.sender_id.user_id..'toen'}},
{{text = ' ◜᥉᥆uɾᥴ︎ᥱ︎◞', url = "https://t.me/AR_N1"}},
}
}
return send(msg_chat_id,msg_id, [[*
• Hey Send Text translate
• ارسل النص لترجمته
*]],"md",false, false, false, false, reply_markup)
end

end
return {Fast = targma}