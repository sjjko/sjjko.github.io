echo "first we fetch everything from github"
git clone https://github.com/sjjko/sjjko.github.ioCloning into '.'
echo "copy the generated html pages from _site folder in ../../gh-pages!"
cp -r ../../gh-pages/_site/* ./
echo "add everything new to git repo"
git add -A
echo "now commit everything with an input message"
echo "Commit message (then press enter):"
read COMMITMESSAGE
git commit -m $COMMITMESSAGE
echo "now we push the page to the repository!"
git push origin master
echo "finished"