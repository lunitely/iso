clear

echo "╭───────────────────────────────────────────"
echo "│"
echo "│   Keyboard Configuration:"
echo "│     - nano /home/lunitely/keyboard.conf"
echo "│"
echo "│   You are currently automatically"
echo "│   switching to the root user, to"
echo "│   stop this run this command:"
echo "│     - rm /home/lunitely/.autoroot.sh"
echo "│"
echo "╰───────────────────────────────────────────"

if [ -f "/home/lunitely/.autoroot.sh" ]; then
    source /home/lunitely/.autoroot.sh
    source /home/lunitely/.bashrc
fi

alias exit="echo Exit Prevention, remove: 'unalias exit'"