close all
clc
str = 'Сидоров Николай 101 521 899';
sum(str ~= ' ')
strnew = [str(9:15) str(8) str(1:7) str(16:27)]
strnew = strrep(strnew,'1','один ');

strnew = strrep(strnew,'2','два ');

strnew = strrep(strnew,'3','три ');

strnew = strrep(strnew,'4','четыре ');

strnew = strrep(strnew,'5','пять ');

strnew = strrep(strnew,'6','шесть ');

strnew = strrep(strnew,'7','семь ');

strnew = strrep(strnew,'8','восемь ');

strnew = strrep(strnew,'9','девять ');

strnew = strrep(strnew,'0','ноль ');
mas=[];

for i=1:27
    
    for j=0:9
        
        if(str2double(str(i))==j)
            
            mas=[mas,j];
            
        end
        
    end
    
end
str2=[10 20 40 50 12 19 21 32 44; -1 -2 -3 -4 32 51 32 44 82; 10 3 7 8 10 37 46 68 42]
f=fopen('in9.txt', 'wt');

fprintf(f, '%f %f %f %f %f %f %f %f %f\n', str2);

fclose(f);

f=fopen('in9.txt','rt');

mas1=fscanf(f,'%d', 6)

fclose(f);

h1=figure;
hold on
x = 1:0.1:5;
%График
y=sin(9*x);
plot(x,y);
hold off
%сохранить построенный график в файл
File1NameExp='lab3_09';
PictHigh1='200';
DirName1='var9';
%Создаём новую папку для данных
if ~exist(DirName1, 'file')
    mkdir(DirName1);
end
cd(DirName1);
FileName000=[File1NameExp '.jpg'];
saveas(h1,FileName000);
FileHtml=fopen([File1NameExp '.html'],'wt');
%Заголовок html-файла
fprintf(FileHtml,'<HTML>\n');
fprintf(FileHtml,'<head>\n');
fprintf(FileHtml,'<title>Отчет по лабораторной работе 4 \n');
fprintf(FileHtml,'</title>\n');
fprintf(FileHtml,'<META HTTP-EQUIV="Content-Type"CONTENT="text/html; charset=windows">\n');
fprintf(FileHtml,'</head>\n');
fprintf(FileHtml,'<body>\n');
fprintf(FileHtml,['<center><H3>ОТЧЕТ<br>по лабораторной работе</h3></center>\n']);
%листинг программы или другая информация
n1=1;
n2=2;
fprintf(FileHtml,'<h3>Исходные данные</h3>\n');
fprintf(FileHtml,'%-5.0f%-5.0f\n',n1,n2);
fprintf(FileHtml,'<br><br>График \n');
fprintf(FileHtml,['<a href="' FileName000 '">']);
fprintf(FileHtml,['<img src="' FileName000 '" height="' PictHigh1 '" >' '\n']);
fprintf(FileHtml,['<a href="' FileName000 '">']);
fprintf(FileHtml,'</a>\n');
fprintf(FileHtml,'</body>\n');
fprintf(FileHtml,'</HTML>\n');
fclose(FileHtml);