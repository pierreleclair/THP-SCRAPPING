require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

#URL
def depute_url
  page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600&lang=fr"))
  return page
end

#Choper les mails
def depute_mail
  page = depute_url
  mail = page.xpath ('//*[contains(text(), "@assemblee-nationale.fr")]')
  mail_array = [] #array pour stocker
  mail.each do |mails|
    mail_array << { "emails" => mails.text } #.text pour avoir les infos en string
  end
  return mail_array
end

#Prénoms & noms
def names
  page = depute_url
  names_array = []
    names = page.xpath('//*[@class="titre_normal"]').each do |the_name| #virer le Mme & M

      names_array << { "first_name" => the_name.text.split(" ")[1], "last_name" => the_name.text.split(" ")[2]}
    end

    return names_array
  end

  #Array prénoms, noms & email
def names_mails
  mail_array = depute_mail
  names_array = names
  a = []

  names_array.each_with_index do |x, y|
    a << {x => (mail_array) [y]}
  end
  
  puts a
  return a
end

names_mails