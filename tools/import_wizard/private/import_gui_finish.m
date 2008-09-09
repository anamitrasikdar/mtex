function import_gui_finish(wzrd)
% final import wizard page

pos = get(wzrd,'Position');
h = pos(4);
w = pos(3);
ph = 270;

this_page = get_panel(w,h,ph);
handles = getappdata(wzrd,'handles');
handles.pages = [handles.pages,this_page];
setappdata(this_page,'pagename','Summary');

set(this_page,'visible','off');

handles.preview = uicontrol(...
  'Parent',this_page,...
  'BackgroundColor',[1 1 1],...
  'FontName','monospaced',...
  'HorizontalAlignment','left',...
  'Max',2,...
  'Position',[10 65 w-40 ph-75 ],...
  'String',blanks(0),...
  'Style','edit',...
  'Enable','inactive');

out = uibuttongroup('title','Output',...
  'Parent',this_page,...
  'units','pixels','position',[10 ph-260 w-40 45]);

handles.runmfile = uicontrol(...
  'Parent',out,...
  'Style','radio',...
  'String','Generate M-File',...
  'Value',1,...
  'position',[10 6 130 20]);

uicontrol(...
  'Parent',out,...
  'Style','radio',...
  'String','Generate Workspace Variable',...
  'Value',0,...
  'position',[210 6 210 20]);

setappdata(this_page,'goto_callback',@goto_callback);
setappdata(this_page,'leave_callback',@leave_callback);
setappdata(wzrd,'handles',handles);


%% --------------- Callbacks -------------------------------------

function goto_callback(varargin)

handles = getappdata(gcbf,'handles');
data = getappdata(gcbf,'data');
str = char(data);
set(handles.preview,'String',str);


function leave_callback(varargin)

