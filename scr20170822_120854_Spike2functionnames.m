%% scr20170822_120854_Spike2functionnames.mlx


folder_name = uigetdir(pwd)

cd(folder_name)

filename = 'list-func.txt';

fid = fopen(filename)

A = fread(fid,'*char')';

fclose(fid);
%%

funcs = strsplit(A,'\n')

funcs_ = regexprep(funcs,'\r','')
funcs_(end) = [];
funcs_ = regexprep(funcs_,'\$','\\\\$'); % escape $ symbol
%%

str = strjoin(funcs_,'|');

fprintf(['{\n',...
    '  name: "support.function.spike2"\n',...    
    '  match: "(?<!\\\\.)\\\\b(?i)(%s)(?=\\\\()"\n',...
    '}\n'],str)