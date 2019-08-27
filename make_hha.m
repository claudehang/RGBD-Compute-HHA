% all = dir('./bed-data-tif');
% all = all(3:end);
% for i=1:length(all)
%     D=imread(['./bed-data-tif/' all(i).name]);
%     RD=D;
%     HHA = saveHHA([], [], D, RD);
%     imwrite(HHA, ['./hha-bed/' sprintf('img_%04d.png',i)]);
% end



function [ch_a,ch_b,ch_c]=make_hha(image_name)
D=imread(image_name);
RD=D;
HHA = saveHHA([], [], D, RD);
ch_a=HHA(:,:,1);
ch_b=HHA(:,:,2);
ch_c=HHA(:,:,3);
end