clear;clc;
%%
% step 1: get ap coordinates
% ap geometry 
aps=cell(100,1);
% ap number is 5
% all on one edge
aps{1,1}=[0 0 3;0 1 3;0 2 3;0 3 3;0 4 3];
aps{2,1}=[0 0 3;0 2 3;0 4 3;0 6 3;0 8 3];
aps{3,1}=[0 3 3;0 5 3;0 7 3;0 9 3;0 10 3];
aps{4,1}=[0 0 3;0 1 3;0 2 3;0 3 3;0 10 3];
aps{5,1}=[0 0 3;0 1 3;0 2 3;0 9 3;0 10 3];
aps{6,1}=[0 0 3;0 2 3;0 5 3;0 8 3;0 10 3];
aps{7,1}=[0 0 3;0 2.5 3;0 5 3;0 7.5 3;0 10 3];

% change one ap
aps{8,1}=[0 0 3;0 1 3;0 2 3;0 3 3;5 10 3];
aps{9,1}=[0 0 3;0 2 3;0 4 3;0 6 3;5 10 3];
aps{10,1}=[0 4 3;0 5 3;0 6 3;0 7 3;5 10 3];
aps{11,1}=[0 0 3;0 3 3;0 6 3;0 9 3;5 10 3];
aps{12,1}=[0 0 3;0 1 3;0 2 3;0 3 3;10 10 3];
aps{13,1}=[0 0 3;0 2 3;0 4 3;0 6 3;10 10 3];
aps{14,1}=[0 4 3;0 5 3;0 6 3;0 7 3;10 10 3];
aps{15,1}=[0 0 3;0 3 3;0 6 3;0 9 3;10 10 3];
aps{16,1}=[0 0 3;0 1 3;0 2 3;0 3 3;10 5 3];
aps{17,1}=[0 0 3;0 2 3;0 4 3;0 6 3;10 4 3];
aps{18,1}=[0 4 3;0 5 3;0 6 3;0 7 3;10 4 3];
aps{19,1}=[0 0 3;0 3 3;0 6 3;0 9 3;10 4 3];
aps{20,1}=[0 0 3;0 1 3;0 2 3;0 3 3;10 0 3];
aps{21,1}=[0 0 3;0 2 3;0 4 3;0 6 3;10 0 3];
aps{22,1}=[0 4 3;0 5 3;0 6 3;0 7 3;10 0 3];
aps{23,1}=[0 0 3;0 3 3;0 6 3;0 9 3;10 0 3];
aps{24,1}=[0 0 3;0 1 3;0 2 3;0 3 3;5 0 3];
aps{25,1}=[0 0 3;0 2 3;0 4 3;0 6 3;5 0 3];
aps{26,1}=[0 4 3;0 5 3;0 6 3;0 7 3;5 0 3];
aps{27,1}=[0 0 3;0 3 3;0 6 3;0 9 3;5 0 3];

% change two aps
aps{28,1}=[0 0 3;0 1 3;0 2 3;4 10 3;5 10 3];
aps{29,1}=[0 4 3;0 5 3;0 6 3;4 10 3;5 10 3];
aps{30,1}=[0 8 3;0 9 3;0 10 3;4 10 3;5 10 3];
aps{31,1}=[0 0 3;0 5 3;0 10 3;4 10 3;5 10 3];

aps{32,1}=[0 0 3;0 1 3;0 2 3;8 10 3;10 10 3];
aps{33,1}=[0 4 3;0 5 3;0 6 3;8 10 3;10 10 3];
aps{34,1}=[0 8 3;0 9 3;0 10 3;8 10 3;10 10 3];
aps{35,1}=[0 0 3;0 5 3;0 10 3;8 10 3;10 10 3];

aps{36,1}=[0 0 3;0 1 3;0 2 3;10 5 3;10 4 3];
aps{37,1}=[0 4 3;0 5 3;0 6 3;10 5 3;10 4 3];
aps{38,1}=[0 8 3;0 9 3;0 10 3;10 5 3;10 4 3];
aps{39,1}=[0 0 3;0 5 3;0 10 3;10 5 3;10 4 3];

aps{40,1}=[0 0 3;0 1 3;0 2 3;5 10 3;10 0 3];
aps{41,1}=[0 4 3;0 5 3;0 6 3;5 10 3;10 0 3];
aps{42,1}=[0 8 3;0 9 3;0 10 3;5 10 3;10 0 3];
aps{43,1}=[0 0 3;0 5 3;0 10 3;5 10 3;10 0 3];

aps{44,1}=[0 0 3;0 1 3;0 2 3;5 0 3;4 0 3];
aps{45,1}=[0 4 3;0 5 3;0 6 3;5 0 3;4 0 3];
aps{46,1}=[0 8 3;0 9 3;0 10 3;5 0 3;4 0 3];
aps{47,1}=[0 0 3;0 5 3;0 10 3;5 0 3;4 0 3];

aps{48,1}=[0 0 3;0 1 3;0 2 3;5 10 3;10 10 3];
aps{49,1}=[0 4 3;0 5 3;0 6 3;5 10 3;10 10 3];
aps{50,1}=[0 8 3;0 9 3;0 10 3;5 10 3;10 10 3];
aps{51,1}=[0 0 3;0 5 3;0 10 3;5 10 3;10 10 3];

aps{52,1}=[0 0 3;0 1 3;0 2 3;10 10 3;10 5 3];
aps{53,1}=[0 4 3;0 5 3;0 6 3;10 10 3;10 5 3];
aps{54,1}=[0 8 3;0 9 3;0 10 3;10 10 3;10 5 3];
aps{55,1}=[0 0 3;0 5 3;0 10 3;10 10 3;10 5 3];

aps{56,1}=[0 0 3;0 1 3;0 2 3;10 5 3;10 0 3];
aps{57,1}=[0 4 3;0 5 3;0 6 3;10 5 3;10 0 3];
aps{58,1}=[0 8 3;0 9 3;0 10 3;10 5 3;10 0 3];
aps{59,1}=[0 0 3;0 5 3;0 10 3;10 5 3;10 0 3];

aps{60,1}=[0 0 3;0 1 3;0 2 3;10 0 3;5 0 3];
aps{61,1}=[0 4 3;0 5 3;0 6 3;10 0 3;5 0 3];
aps{62,1}=[0 8 3;0 9 3;0 10 3;10 0 3;5 0 3];
aps{63,1}=[0 0 3;0 5 3;0 10 3;10 0 3;5 0 3];

aps{64,1}=[0 0 3;0 1 3;0 2 3;5 10 3;10 5 3];
aps{65,1}=[0 4 3;0 5 3;0 6 3;5 10 3;10 5 3];
aps{66,1}=[0 8 3;0 9 3;0 10 3;5 10 3;10 5 3];
aps{67,1}=[0 0 3;0 5 3;0 10 3;5 10 3;10 5 3];

aps{68,1}=[0 0 3;0 1 3;0 2 3;10 10 3;10 0 3];
aps{69,1}=[0 4 3;0 5 3;0 6 3;10 10 3;10 0 3];
aps{70,1}=[0 8 3;0 9 3;0 10 3;10 10 3;10 0 3];
aps{71,1}=[0 0 3;0 5 3;0 10 3;10 10 3;10 0 3];

aps{72,1}=[0 0 3;0 1 3;0 2 3;10 5 3;5 0 3];
aps{73,1}=[0 4 3;0 5 3;0 6 3;10 5 3;5 0 3];
aps{74,1}=[0 8 3;0 9 3;0 10 3;10 5 3;5 0 3];
aps{75,1}=[0 0 3;0 5 3;0 10 3;10 5 3;5 0 3];

aps{76,1}=[0 0 3;0 1 3;0 2 3;5 10 3;10 0 3];
aps{77,1}=[0 4 3;0 5 3;0 6 3;5 10 3;10 0 3];
aps{78,1}=[0 8 3;0 9 3;0 10 3;5 10 3;10 0 3];
aps{79,1}=[0 0 3;0 5 3;0 10 3;5 10 3;10 0 3];

% change three aps
aps{80,1}=[0 0 3;0 1 3;0 10 3;5 10 3;10 10 3];
aps{81,1}=[0 0 3;0 5 3;0 10 3;5 10 3;10 10 3];
aps{82,1}=[0 0 3;0 10 3;0 10 3;5 10 3;10 10 3];

aps{83,1}=[0 0 3;0 1 3;5 10 3;10 10 3;10 5 3];
aps{84,1}=[0 0 3;0 5 3;5 10 3;10 10 3;10 5 3];
aps{85,1}=[0 0 3;0 10 3;5 10 3;10 10 3;10 5 3];

aps{86,1}=[0 0 3;0 1 3;10 10 3;10 5 3;10 0 3];
aps{87,1}=[0 0 3;0 5 3;10 10 3;10 5 3;10 0 3];
aps{88,1}=[0 0 3;0 10 3;10 10 3;10 5 3;10 0 3];

aps{89,1}=[0 0 3;0 1 3;10 5 3;10 0 3;5 0 3];
aps{90,1}=[0 0 3;0 5 3;10 5 3;10 0 3;5 0 3];
aps{91,1}=[0 0 3;0 10 3;10 5 3;10 0 3;5 0 3];

aps{92,1}=[0 0 3;0 1 3;0 10 3;10 10 3;5 0 3];
aps{93,1}=[0 0 3;0 5 3;0 10 3;10 10 3;5 0 3];
aps{94,1}=[0 0 3;0 10 3;0 10 3;10 10 3;5 0 3];

aps{95,1}=[0 0 3;0 1 3;5 10 3;10 5 3;5 0 3];
aps{96,1}=[0 0 3;0 5 3;5 10 3;10 5 3;5 0 3];
aps{97,1}=[0 0 3;0 10 3;5 10 3;10 5 3;5 0 3];

% change four aps
aps{98,1}=[0 0 3;0 10 3;5 10 3;10 10 3;10 5 3];
aps{99,1}=[0 5 3;0 10 3;5 10 3;10 10 3;10 5 3];

aps{100,1}=[0 0 3;0 10 3;5 10 3;10 5 3;10 0 3];
aps{101,1}=[0 5 3;0 10 3;5 10 3;10 5 3;10 0 3];

aps{102,1}=[0 0 3;5 10 3;10 10 3;10 5 3;10 0 3];
aps{103,1}=[0 5 3;5 10 3;10 10 3;10 5 3;10 0 3];

aps{104,1}=[0 0 3;5 10 3;10 10 3;5 0 3;10 0 3];
aps{105,1}=[0 5 3;5 10 3;10 10 3;5 0 3;10 0 3];

aps{106,1}=[0 0 3;10 10 3;10 5 3;10 0 3;5 0 3];
aps{107,1}=[0 5 3;10 10 3;10 5 3;10 0 3;5 0 3];

% change five aps
aps{108,1}=[0 0 3;0 10 3;7 10 3;10 5 3;7 0 3];
aps{109,1}=[0 6 3;5 10 3;10 6 3;7 0 3;2 0 3];
aps{110,1}=[0 0 3;0 10 3;10 10 3;10 0 3;5 0 3];
%%
jmax=36;
% figure('pos',[250 500 1500 300]);% for 4
figure('pos',[250 500 1500 430]);%for 3
linecolors = jet(jmax);

for i=1:1:3
    subplot(1,3,i);    
    for j=1:jmax      
        k=(i-1)*jmax+j;
        x=[aps{k,1}(:,1);aps{k,1}(1,1)];
        y=[aps{k,1}(:,2);aps{k,1}(1,2)];
        z=ones(6,1)*k;
        plot3(x,y,z,'-s','Color',linecolors(j,:),'linewidth',2);hold on;
    end 
    if i==3
        k=k+1;
        x=[aps{k,1}(:,1);aps{k,1}(1,1)];
        y=[aps{k,1}(:,2);aps{k,1}(1,2)];
        z=ones(6,1)*k;
        plot3(x,y,z,'-s','Color',linecolors(j,:),'linewidth',2);hold on;
        
        k=k+1;
        x=[aps{k,1}(:,1);aps{k,1}(1,1)];
        y=[aps{k,1}(:,2);aps{k,1}(1,2)];
        z=ones(6,1)*k;
        plot3(x,y,z,'-s','Color',linecolors(j,:),'linewidth',2);hold on;
    end
    
    set(gca,'xtick',1:1:10,'ytick',1:1:10,'fontname','Times New Roman','fontsize',15,'fontweight','bold');
    xlabel('Length (m)');
    ylabel('Width (m)');
    zlabel('110 Different AP Shapes');
    grid on;
end

%%
% figure('pos',[600 100 620 700]);
% linecolors = jet(100);
% for i=1:1:100
%     x=[aps{i,1}(:,1);aps{i,1}(1,1)];
%     y=[aps{i,1}(:,2);aps{i,1}(1,2)];
%     z=ones(6,1)*i;
% %     scatter3(x,y,z,'MarkerFaceColor',linecolors(101-i,:));
%     plot3(x,y,z,'-s','Color',linecolors(i,:),'linewidth',2);hold on;
% end
% axis([0 9 0 9]);
% set(gca,'xtick',1:1:10,'ytick',1:1:10,'fontname','Times New Roman','fontsize',15,'fontweight','bold');
% xlabel('Length (m)');
% ylabel('Width (m)');
% zlabel('100 Different AP Shapes');
% grid on;


%%
% figure('pos',[250 500 1500 300]);
% linecolors = jet(25);
% for i=1:1:4
%     subplot(1,4,i);
%     for j=1:25        
%         k=(i-1)*25+j;
%         x=[aps{k,1}(:,1);aps{k,1}(1,1)];
%         y=[aps{k,1}(:,2);aps{k,1}(1,2)];
%         z=ones(6,1)*k;
%         plot3(x,y,z,'-s','Color',linecolors(j,:),'linewidth',2);hold on;
%     end 
%     axis([0 9 0 9]);
%     set(gca,'xtick',1:1:10,'ytick',1:1:10,'fontname','Times New Roman','fontsize',10,'fontweight','bold');
%     xlabel('Length (m)');
%     ylabel('Width (m)');
%     zlabel('100 Different AP Shapes');
%     grid on;
% end




%%
%{
% all on one edge
aps{1,1}=[0 0 3;0 1 3;0 2 3;0 3 3;0 4 3];
aps{2,1}=[0 0 3;0 1 3;0 2 3;0 3 3;0 9 3];
aps{3,1}=[0 0 3;0 1 3;0 5 3;0 7 3;0 9 3];
aps{4,1}=[0 0 3;0 2 3;0 4 3;0 6 3;0 8 3];
aps{5,1}=[0 0 3;0 1 3;0 4.5 3;0 8 3;0 9 3];
aps{6,1}=[0 3 3;0 4 3;0 5 3;0 6 3;0 7 3];
aps{7,1}=[0 0 3;0 1 3;0 2 3;0 8 3;0 9 3];
% change one ap
aps{8,1}=[0 0 3;0 1 3;0 2 3;0 3 3;4.5 9 3];
aps{9,1}=[0 0 3;0 2 3;0 4 3;0 8 3;4.5 9 3];
aps{10,1}=[0 4 3;0 5 3;0 6 3;0 7 3;4.5 9 3];
aps{11,1}=[0 0 3;0 1 3;0 8 3;0 8 3;4.5 9 3];
aps{12,1}=[0 0 3;0 1 3;0 2 3;0 3 3;9 9 3];
aps{13,1}=[0 0 3;0 2 3;0 4 3;0 8 3;9 9 3];
aps{14,1}=[0 4 3;0 5 3;0 6 3;0 7 3;9 9 3];
aps{15,1}=[0 0 3;0 1 3;0 8 3;0 8 3;9 9 3];
aps{16,1}=[0 0 3;0 1 3;0 2 3;0 3 3;9 4.5 3];
aps{17,1}=[0 0 3;0 2 3;0 4 3;0 8 3;9 4 3];
aps{18,1}=[0 4 3;0 5 3;0 6 3;0 7 3;9 4 3];
aps{19,1}=[0 0 3;0 1 3;0 8 3;0 8 3;9 4 3];
aps{20,1}=[0 0 3;0 1 3;0 2 3;0 3 3;9 0 3];
aps{21,1}=[0 0 3;0 2 3;0 4 3;0 8 3;9 0 3];
aps{22,1}=[0 4 3;0 5 3;0 6 3;0 7 3;9 0 3];
aps{23,1}=[0 0 3;0 1 3;0 8 3;0 8 3;9 0 3];
aps{24,1}=[0 0 3;0 1 3;0 2 3;0 3 3;4.5 0 3];
aps{25,1}=[0 0 3;0 2 3;0 4 3;0 8 3;4.5 0 3];
aps{26,1}=[0 4 3;0 5 3;0 6 3;0 7 3;4.5 0 3];
aps{27,1}=[0 0 3;0 1 3;0 8 3;0 8 3;4.5 0 3];
% change two aps
aps{28,1}=[0 0 3;0 1 3;0 2 3;4 9 3;5 9 3];
aps{29,1}=[0 0 3;0 5 3;0 9 3;4 9 3;5 9 3];
aps{30,1}=[0 4 3;0 5 3;0 6 3;4 9 3;5 9 3];
aps{31,1}=[0 0 3;0 1 3;0 2 3;8 9 3;9 9 3];
aps{32,1}=[0 0 3;0 5 3;0 9 3;8 9 3;9 9 3];
aps{33,1}=[0 4 3;0 5 3;0 6 3;8 9 3;9 9 3];
aps{34,1}=[0 0 3;0 1 3;0 2 3;9 5 3;9 4 3];
aps{35,1}=[0 0 3;0 5 3;0 9 3;9 5 3;9 4 3];
aps{36,1}=[0 4 3;0 5 3;0 6 3;9 5 3;9 4 3];
aps{37,1}=[0 0 3;0 1 3;0 2 3;9 0 3;9 1 3];
aps{38,1}=[0 0 3;0 5 3;0 9 3;9 0 3;5 9 3];
aps{39,1}=[0 4 3;0 5 3;0 6 3;9 0 3;5 9 3];
aps{40,1}=[0 0 3;0 1 3;0 2 3;4 0 3;5 0 3];
aps{41,1}=[0 0 3;0 5 3;0 9 3;4 0 3;5 0 3];
aps{42,1}=[0 4 3;0 5 3;0 6 3;4 0 3;5 0 3];
aps{43,1}=[0 0 3;0 1 3;0 2 3;4 9 3;9 9 3];
aps{44,1}=[0 0 3;0 5 3;0 9 3;4 9 3;9 9 3];
aps{45,1}=[0 4 3;0 5 3;0 6 3;4 9 3;9 9 3];
aps{46,1}=[0 0 3;0 1 3;0 2 3;9 9 3;9 5 3];
aps{47,1}=[0 0 3;0 5 3;0 9 3;9 9 3;9 5 3];
aps{48,1}=[0 4 3;0 5 3;0 6 3;9 9 3;9 5 3];
aps{49,1}=[0 0 3;0 1 3;0 2 3;9 5 3;9 0 3];
aps{50,1}=[0 0 3;0 5 3;0 9 3;9 5 3;9 0 3];
aps{51,1}=[0 4 3;0 5 3;0 6 3;9 5 3;9 0 3];
aps{52,1}=[0 0 3;0 1 3;0 2 3;5 0 3;9 0 3];
aps{53,1}=[0 0 3;0 5 3;0 9 3;5 0 3;9 0 3];
aps{54,1}=[0 4 3;0 5 3;0 6 3;5 0 3;9 0 3];
aps{55,1}=[0 0 3;0 1 3;0 2 3;4 9 3;9 4 3];
aps{56,1}=[0 0 3;0 5 3;0 9 3;4 9 3;9 4 3];
aps{57,1}=[0 4 3;0 5 3;0 6 3;4 9 3;9 4 3];
aps{58,1}=[0 0 3;0 1 3;0 2 3;9 9 3;9 0 3];
aps{59,1}=[0 0 3;0 5 3;0 9 3;9 9 3;9 0 3];
aps{60,1}=[0 4 3;0 5 3;0 6 3;9 9 3;9 0 3];
aps{61,1}=[0 0 3;0 1 3;0 2 3;4 0 3;9 4 3];
aps{62,1}=[0 0 3;0 5 3;0 9 3;4 0 3;9 4 3];
aps{63,1}=[0 4 3;0 5 3;0 6 3;4 0 3;9 4 3];
aps{64,1}=[0 0 3;0 1 3;0 2 3;4 9 3;9 0 3];
aps{65,1}=[0 0 3;0 5 3;0 9 3;4 9 3;9 0 3];
aps{66,1}=[0 4 3;0 5 3;0 6 3;4 9 3;9 0 3];
aps{67,1}=[0 0 3;0 1 3;0 2 3;4 9 3;9 4 3];
aps{68,1}=[0 0 3;0 5 3;0 9 3;4 9 3;9 4 3];
aps{69,1}=[0 4 3;0 5 3;0 6 3;4 9 3;9 4 3];
% change three aps
aps{70,1}=[0 0 3;0 1 3;0 9 3;4.5 9 3;9 9 3];
aps{71,1}=[0 0 3;0 5 3;0 9 3;4.5 9 3;9 9 3];
aps{72,1}=[0 0 3;0 9 3;0 9 3;4.5 9 3;9 9 3];
aps{73,1}=[0 0 3;0 1 3;4.5 9 3;9 9 3;9 4.5 3];
aps{74,1}=[0 0 3;0 5 3;4.5 9 3;9 9 3;9 4 3];
aps{75,1}=[0 0 3;0 9 3;4.5 9 3;9 9 3;9 4 3];
aps{76,1}=[0 0 3;0 1 3;9 9 3;9 4.5 3;9 0 3];
aps{77,1}=[0 0 3;0 5 3;9 9 3;9 4.5 3;9 0 3];
aps{78,1}=[0 0 3;0 9 3;9 9 3;9 4.5 3;9 0 3];
aps{79,1}=[0 0 3;0 1 3;9 4.5 3;9 0 3;4.5 0 3];
aps{80,1}=[0 0 3;0 5 3;9 4.5 3;9 0 3;9 9 3];
aps{81,1}=[0 0 3;0 9 3;9 4.5 3;9 0 3;9 9 3];
aps{82,1}=[0 0 3;0 1 3;0 9 3;9 9 3;4.5 0 3];
aps{83,1}=[0 0 3;0 5 3;0 9 3;9 9 3;4.5 0 3];
aps{84,1}=[0 0 3;0 9 3;0 9 3;9 9 3;4.5 0 3];
aps{85,1}=[0 0 3;0 1 3;4.5 9 3;9 4.5 3;4.5 0 3];
aps{86,1}=[0 0 3;0 5 3;4.5 9 3;9 4.5 3;4.5 0 3];
aps{87,1}=[0 0 3;0 9 3;4.5 9 3;9 4.5 3;4.5 0 3];
% change four aps
aps{88,1}=[0 0 3;0 9 3;4.5 9 3;9 9 3;9 4.5 3];
aps{89,1}=[0 4.5 3;0 9 3;4.5 9 3;9 9 3;9 4.5 3];
aps{90,1}=[0 0 3;0 9 3;4.5 9 3;9 4.5 3;9 0 3];
aps{91,1}=[0 4.5 3;0 9 3;4.5 9 3;9 4.5 3;9 0 3];
aps{92,1}=[0 0 3;4.5 9 3;9 9 3;9 4.5 3;9 0 3];
aps{93,1}=[0 4.5 3;4.5 9 3;9 9 3;9 4.5 3;9 0 3];
aps{94,1}=[0 0 3;4.5 9 3;9 9 3;4.5 0 3;9 0 3];
aps{95,1}=[0 4.5 3;4.5 9 3;9 9 3;4.5 0 3;9 0 3];
aps{96,1}=[0 0 3;9 9 3;9 4.5 3;9 0 3;4.5 0 3];
aps{97,1}=[0 4.5 3;9 9 3;9 4.5 3;9 0 3;4.5 0 3];
% change five aps
aps{98,1}=[0 0 3;0 9 3;9 9 3;9 0 3;4.5 4.5 3];
aps{99,1}=[0 6 3;4.5 9 3;9 6 3;7 0 3;2 0 3];
aps{100,1}=[0 0 3;0 9 3;9 9 3;9 0 3;4.5 0 3];
%}