#echo "first we fetch everything from github"
#git clone https://github.com/sjjko/sjjko.github.ioCloning into '.'
echo "copy the generated html pages from _site folder in ../../gh-pages!"
HP_FOLDER=/home/kos/Code/kos/html/gh-pages
SUBMIT_FOLDER=$PWD
cd $HP_FOLDER
jekyll build
cd $SUBMIT_FOLDER
cp -r ../../gh-pages/_site/* ./
echo "add everything new to git repo"
git add -A
echo "now commit everything with an input message"
echo "Commit message (then press enter):"
read COMMITMESSAGE
git commit -m $COMMITMESSAGE
echo "now we push the page to the repository!"
git push -u origin master
echo "finished hp update!"
