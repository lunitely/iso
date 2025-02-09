clear

echo "╭───────────────────────────────────────────"
echo "│"
echo "│   Keyboard Configuration:"
echo "│     - nano /lunitely/keyboard.conf"
echo "│"
echo "│   You are currently automatically"
echo "│   switching to the root user, to"
echo "│   stop this run this command:"
echo "│     - rm /lunitely/.autoroot.sh"
echo "│"
echo "╰───────────────────────────────────────────"

if [ -f "/lunitely/.autoroot.sh" ]; then
    source /lunitely/.autoroot.sh
    source /lunitely/.bashrc
fi

alias exit="echo Exit Prevention, remove: 'unalias exit'"