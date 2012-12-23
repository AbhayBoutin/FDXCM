link index weeks to "show" weekly review of that week // url gets the date by persistence
  routes file 
    for weekly_review#show needs variable to be passed, which is the url, check http://guides.rubyonrails.org/routing.html#dynamic-segments

  controller
   grab
   grab the data for the week given in the parameter

git filter-branch --index-filter 'git rm --cached --ignore-unmatch DFD\ -\ Production\ Data.xlsx' \--prune-empty --tag-name-filter cat -- --all
git filter-branch --index-filter 'git rm --cached --ignore-unmatch DFD\ Employee\ Application\ CJF\ Rev.doc' \--prune-empty --tag-name-filter cat -- --all
git filter-branch --index-filter 'git rm --cached --ignore-unmatch working\ template.xlsx' \--prune-empty --tag-name-filter cat -- --all

git push origin master --force