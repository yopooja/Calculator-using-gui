function varargout = calculator(varargin)
% CALCULATOR MATLAB code for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 08-Mar-2017 21:17:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator (see VARARGIN)

% Choose default command line output for calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global i 
i=0;

% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

global flag
flag=0;
global str;


function Textbox_Callback(hObject, eventdata, handles)
% hObject    handle to Textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Textbox as text
%        str2double(get(hObject,'String')) returns contents of Textbox as a double
%str2num(get(handles.Textbox),'string');



% --- Executes during object creation, after setting all properties.
function Textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'4');
set(handles.Textbox,'String',str);



% --- Executes on button press in Seven.
function Seven_Callback(hObject, eventdata, handles)
% hObject    handle to Seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'7');
set(handles.Textbox,'String',str);

% --- Executes on button press in one.
function one_Callback(hObject, ~, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'1');
set(handles.Textbox,'String',str);


% --- Executes on button press in Eight.
function Eight_Callback(hObject, eventdata, handles)
% hObject    handle to Eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'8');
set(handles.Textbox,'String',str);


% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'5');
set(handles.Textbox,'String',str);


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'2');
set(handles.Textbox,'String',str);


% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'3');
set(handles.Textbox,'String',str);

% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'6');
%str=eval(str);
set(handles.Textbox,'String',str);


% --- Executes on button press in Nine.
function Nine_Callback(hObject, eventdata, handles)
% hObject    handle to Nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'9');
%str=eval(str);
set(handles.Textbox,'String',str);


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
global flag
if(flag==0)
    str=eval(str);
    set(handles.Textbox,'String',str);
end
% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
str=strcat(str,'0');
set(handles.Textbox,'String',str);


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in division.
set(handles.Textbox,'string','');

function division_Callback(hObject, eventdata, handles)

% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%str=eval(str);
str=get(handles.Textbox,'String');
z=str(end);
    if(z=='+'||z=='-'||z=='*'||z=='/')
        str=strrep(str,z,'');
        set(handles.Textbox,'String',str);
    end
global i
i=i+1;
%set(handles.t1,'String',i);
if(i>1)
    str=eval(str);
    set(handles.Textbox,'String',str);
    str=num2str(str);
    str=strcat(str,'/');
    set(handles.Textbox,'String',str);
else
    str=strcat(str,'/');
    set(handles.Textbox,'String',str);
end



% --- Executes on button press in addition.
function addition_Callback(hObject, eventdata, handles)
 % hObject    handle to addition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
z=str(end);
    if(z=='+'||z=='-'||z=='*'||z=='/')
        str=strrep(str,z,'');
        set(handles.Textbox,'String',str);
    end
global i
i=i+1;
%set(handles.t1,'String',i);
if(i>1)
    str=eval(str);
    set(handles.Textbox,'String',str);
    str=num2str(str);
    str=strcat(str,'+');
    set(handles.Textbox,'String',str);
else
    str=strcat(str,'+');
    set(handles.Textbox,'String',str);
end

  %str=eval(str);
%set(handles.Textbox,'String',str);


% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
%set(handles.temp,'String',str);
z=str(end);
    if(z=='+'||z=='-'||z=='*'||z=='/')
        str=strrep(str,z,'');
        set(handles.Textbox,'String',str);
    end
global i
i=i+1;
%set(handles.t1,'String',i);
if(i>1)
    str=eval(str);
    set(handles.Textbox,'String',str);
    str=num2str(str);
    str=strcat(str,'*');
    set(handles.Textbox,'String',str);
else
    str=strcat(str,'*');
    set(handles.Textbox,'String',str);
end
% if(str(end-1)=='+'||str(end-1)=='-'||str(end-1)=='*'||str(end-1)=='/')
%   str=strrep(str,str(end-1),'');
% end
  %str=eval(str);



% --- Executes on button press in subtract.
function subtract_Callback(hObject, eventdata, handles)
% hObject    handle to subtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
%set(handles.temp,'String',str);
z=str(end);
    if(z=='+'||z=='-'||z=='*'||z=='/')
        str=strrep(str,z,'');
        set(handles.Textbox,'String',str);
    end
global i
i=i+1;
%set(handles.t1,'String',i);
if(i>1)
    str=eval(str);
    set(handles.Textbox,'String',str);
    str=num2str(str);
    str=strcat(str,'-');
    set(handles.Textbox,'String',str);
else
    str=strcat(str,'-');
    set(handles.Textbox,'String',str);
end




function temp_Callback(hObject, eventdata, handles)
% hObject    handle to temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temp as text
%        str2double(get(hObject,'String')) returns contents of temp as a double


% --- Executes during object creation, after setting all properties.
function temp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in OpenBracket.
function OpenBracket_Callback(hObject, eventdata, handles)
% hObject    handle to OpenBracket (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
global flag
flag=1;
str=strcat(str,'(');
set(handles.Textbox,'String',str);

% --- Executes on button press in CloseBracket.
function CloseBracket_Callback(hObject, eventdata, handles)
% hObject    handle to CloseBracket (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
global flag
if(flag==1)
    str=strcat(str,')');
    set(handles.Textbox,'String',str);
    flag=0;
end
% --- Executes on button press in point.
function point_Callback(hObject, eventdata, handles)
% hObject    handle to point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.Textbox,'String');
if(str(end)=='1'||str(end)=='2'||str(end)=='3'||str(end)=='4'||str(end)=='5'||str(end)=='6'||str(end)=='7'||str(end)=='8'||str(end)=='9'||str(end)=='0')
    str=strcat(str,'.');
    set(handles.Textbox,'String',str);
end


% --- Executes during object creation, after setting all properties.
function t1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t1_Callback(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t1 as text
%        str2double(get(hObject,'String')) returns contents of t1 as a double


% --- Executes during object creation, after setting all properties.
function temp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
