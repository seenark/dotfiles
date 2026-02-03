function skills-symlink
    for dir in .agents/skills/*/
        set skill_name (basename $dir)
        ln -s (pwd)/.agents/skills/$skill_name .claude/skills/$skill_name
    end
end
