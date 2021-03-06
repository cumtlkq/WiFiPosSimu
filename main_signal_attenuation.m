clear;clc;
%%
% step 1: get ap coordinates
aps=cell(5,1);
aps{1,1}=[0 0 3;5 10 3;10 0 3];
aps{2,1}=[0 0 3;0 10 3;10 0 3;10 10 3;5 5 3]; % [0 6 3;4.5 9 3;9 6 3;7 0 3;2 0 3];
aps{3,1}=[0 0 3;0 3 3;0 6 3;0 10 3;5 10 3;...
          10 10 3;10 7 3;10 4 3;10 0 3;5 0 3];
aps{4,1}=[0 0 3;0 2.5 3;0 5 3;0 7.5 3;0 10 3;2.5 10 3;5 10 3;7.5 10 3;...
          10 10 3;10 7.5 3;10 5 3;10 2.5 3;10 0 3;3 0 3;6 0 3];  
aps{5,1}=[0 0 3;0 2 3;0 4 3;0 6 3;0 8 3;0 10 3;2 10 3;4 10 3;6 10 3;8 10 3;...
          10 10 3;10 8 3;10 6 3;10 4 3;10 2 3;10 0 3;8 0 3;6 0 3;4 0 3;2 0 3]; 

      
%%
% step 2: get rp coordinates 
grid=[10 10 1];
rp_coordinates=get_rp_coordinates(grid);
sample_time=240;
      
%% 
% step 3: set propagate model
noise_sigma=5;
attenuation_n=[1;1.5;2;2.5;3;3.5;4;4.5;5;5.5];

%% 
% step 4: generate test points coordinates
tp_number=100;
field=[10 10];
tp_coordinates=get_test_points( field, tp_number );

%%
% step 5: test for signal attenuation
imax=size(aps,1);
jmax=size(attenuation_n,1);
attenuation_test_result=cell(imax*jmax,6);
hwait=waitbar(0,'TESTING...');
for i= 1:1:imax
    ap_coordinates=aps{i,1};    
    for j= 1:1:jmax
        % set model parameters vector
        model_parameters=[attenuation_n(j,1);noise_sigma;sample_time];
        k=(i-1)*jmax+j;
        waitbar(k/(imax*jmax),hwait,'TESTING...');
        attenuation_test_result(k,:)=do_test_main( ap_coordinates, model_parameters, rp_coordinates, tp_coordinates );
    end
end
close(hwait);

%%
% step 6: clean data
imax=size(attenuation_test_result,1);
attenuation_clean_result=cell(imax,6);
attenuation_clean_result(:,1)=attenuation_test_result(:,1);
hwait=waitbar(0,'DATA CLEANING...');
for i=1:imax
    attenuation_temp=attenuation_test_result{i,3}(1,1);
%     sigma_temp=attenuation_test_result{i,3}(2,1);
    temp1=attenuation_test_result{i,6}{1,3};
    nn_rmse=get_rmse(temp1);
    temp2=attenuation_test_result{i,6}{1,5};
    prob_rmse=get_rmse(temp2);
    %result format: sigma=5
    %apnumber attenuation sigma nn_error nn_rmse prob_error
    attenuation_clean_result(i,2:6)={attenuation_temp temp1 nn_rmse temp2 prob_rmse};
    waitbar(i/imax,hwait,'DATA CLEANING...');
end
close(hwait);

%%
% 
save test_result_attenuation.mat attenuation_test_result attenuation_clean_result;
clear;clc;
fprintf('%s\n','Attenuation factor test finished!');




      