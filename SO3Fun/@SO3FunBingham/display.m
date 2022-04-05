function display(SO3F,varargin)
% standard output


if check_option(varargin,'skipHeader')
  disp('  <strong>bingham component</strong>');
else
  displayClass(SO3F,inputname(1),[],'moreInfo',symChar(SO3F),varargin{:});
  disp(' ');
end

disp(['  kappa: ',xnum2str(SO3F.kappa)]);
disp(['  weight: ' xnum2str(mean(SO3F(1),'all','bandwidth',16))])
disp(' ');

end
