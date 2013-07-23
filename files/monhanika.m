function varargout = usage_curve(varargin)
% USAGE_CURVE M-file for usage_curve.fig
%      USAGE_CURVE, by itself, creates a new USAGE_CURVE or raises the existing
%      singleton*.
%
%      H = USAGE_CURVE returns the handle to a new USAGE_CURVE or the handle to
%      the existing singleton*.
%
%      USAGE_CURVE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in USAGE_CURVE.M with the given input arguments.
%
%      USAGE_CURVE('Property','Value',...) creates a new USAGE_CURVE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before usage_curve_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to usage_curve_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help usage_curve

% Last Modified by GUIDE v2.5 23-Jul-2013 01:00:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @usage_curve_OpeningFcn, ...
                   'gui_OutputFcn',  @usage_curve_OutputFcn, ...
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


% --- Executes just before usage_curve is made visible.
function usage_curve_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to usage_curve (see VARARGIN)

% Choose default command line output for usage_curve
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes usage_curve wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = usage_curve_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function menu_file_Callback(hObject, eventdata, handles)
% hObject    handle to menu_file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function exit_tag_Callback(hObject, eventdata, handles)
% hObject    handle to exit_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
    %sdns exit software:
    exit=questdlg('Do you want to Exit?','Quit','Yes','No','No');
    switch exit
        case 'Yes'
            close
        case 'No'
            quit cancel;
    end


function wi_tag_Callback(hObject, eventdata, handles)
% hObject    handle to wi_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%sdns input for wi popupmenu:
    switch get(handles.wi_tag,'value')
        case 1
             wi_hidden=913;
        case 2
             wi_hidden=850;
    end
    set(handles.wihidden_tag,'string',wi_hidden);
%end input

% Hints: get(hObject,'String') returns contents of wi_tag as text
%        str2double(get(hObject,'String')) returns contents of wi_tag as a double


% --- Executes during object creation, after setting all properties.
function wi_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wi_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_tag_Callback(hObject, eventdata, handles)
% hObject    handle to t_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_tag as text
%        str2double(get(hObject,'String')) returns contents of t_tag as a double


% --- Executes during object creation, after setting all properties.
function t_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_tag_Callback(hObject, eventdata, handles)
% hObject    handle to d_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d_tag as text
%        str2double(get(hObject,'String')) returns contents of d_tag as a double


% --- Executes during object creation, after setting all properties.
function d_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_tag_Callback(hObject, eventdata, handles)
% hObject    handle to n_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_tag as text
%        str2double(get(hObject,'String')) returns contents of n_tag as a double


% --- Executes during object creation, after setting all properties.
function n_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wc_tag_Callback(hObject, eventdata, handles)
% hObject    handle to wc_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wc_tag as text
%        str2double(get(hObject,'String')) returns contents of wc_tag as a double


% --- Executes during object creation, after setting all properties.
function wc_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wc_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v_tag_Callback(hObject, eventdata, handles)
% hObject    handle to v_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v_tag as text
%        str2double(get(hObject,'String')) returns contents of v_tag as a double


% --- Executes during object creation, after setting all properties.
function v_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ni_tag_Callback(hObject, eventdata, handles)
% hObject    handle to ni_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ni_tag as text
%        str2double(get(hObject,'String')) returns contents of ni_tag as a double


% --- Executes during object creation, after setting all properties.
function ni_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ni_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vi_tag_Callback(hObject, eventdata, handles)
% hObject    handle to vi_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vi_tag as text
%        str2double(get(hObject,'String')) returns contents of vi_tag as a double


% --- Executes during object creation, after setting all properties.
function vi_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vi_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vf_tag_Callback(hObject, eventdata, handles)
% hObject    handle to vf_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vf_tag as text
%        str2double(get(hObject,'String')) returns contents of vf_tag as a double


% --- Executes during object creation, after setting all properties.
function vf_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vf_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i_tag_Callback(hObject, eventdata, handles)
% hObject    handle to i_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%sdns input for i popupmenu:
    switch get(handles.i_tag,'value')
        case 1
            i_hidden=1;
        case 2
            i_hidden=2;
    end
    set(handles.ihidden_tag,'string',i_hidden);
%end input

% Hints: get(hObject,'String') returns contents of i_tag as text
%        str2double(get(hObject,'String')) returns contents of i_tag as a double

% --- Executes during object creation, after setting all properties.

function i_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v0_tag_Callback(hObject, eventdata, handles)
% hObject    handle to v0_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v0_tag as text
%        str2double(get(hObject,'String')) returns contents of v0_tag as a double


% --- Executes during object creation, after setting all properties.
function v0_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v0_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lf_tag_Callback(hObject, eventdata, handles)
% hObject    handle to lf_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lf_tag as text
%        str2double(get(hObject,'String')) returns contents of lf_tag as a double


% --- Executes during object creation, after setting all properties.
function lf_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lf_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_tag_Callback(hObject, eventdata, handles)
% hObject    handle to h_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h_tag as text
%        str2double(get(hObject,'String')) returns contents of h_tag as a double


% --- Executes during object creation, after setting all properties.
function h_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha2_tag_Callback(hObject, eventdata, handles)
% hObject    handle to alpha2_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha2_tag as text
%        str2double(get(hObject,'String')) returns contents of alpha2_tag as a double


% --- Executes during object creation, after setting all properties.
function alpha2_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha2_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function td_tag_Callback(hObject, eventdata, handles)
% hObject    handle to td_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of td_tag as text
%        str2double(get(hObject,'String')) returns contents of td_tag as a double


% --- Executes during object creation, after setting all properties.
function td_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to td_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in type_tag.
function type_tag_Callback(hObject, eventdata, handles)
% hObject    handle to type_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%sdns input for tower type:
switch get(handles.type_tag,'value')
        case 1
             type_hidden=1;
             hold off
        case 2
             type_hidden=2;
             hold off
    end
    set(handles.typehidden_tag,'string',type_hidden);
% Hints: contents = cellstr(get(hObject,'String')) returns type_tag contents as cell array
%        contents{get(hObject,'Value')} returns selected item from type_tag


% --- Executes during object creation, after setting all properties.
function type_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to type_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ztype_tag.
function ztype_tag_Callback(hObject, eventdata, handles)
% hObject    handle to ztype_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%sdns input for chains insulator type:
switch get(handles.ztype_tag,'value')
        case 1
             ztype_hidden=1;
             hold off
        case 2
             ztype_hidden=2;
             hold off
    end
    set(handles.ztypehidden_tag,'string',ztype_hidden);

% Hints: contents = cellstr(get(hObject,'String')) returns ztype_tag contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ztype_tag


% --- Executes during object creation, after setting all properties.
function ztype_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ztype_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sfv_tag_Callback(hObject, eventdata, handles)
% hObject    handle to sfv_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sfv_tag as text
%        str2double(get(hObject,'String')) returns contents of sfv_tag as a double


% --- Executes during object creation, after setting all properties.
function sfv_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sfv_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sft_tag_Callback(hObject, eventdata, handles)
% hObject    handle to sft_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sft_tag as text
%        str2double(get(hObject,'String')) returns contents of sft_tag as a double


% --- Executes during object creation, after setting all properties.
function sft_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sft_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sfw_tag_Callback(hObject, eventdata, handles)
% hObject    handle to sfw_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sfw_tag as text
%        str2double(get(hObject,'String')) returns contents of sfw_tag as a double


% --- Executes during object creation, after setting all properties.
function sfw_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sfw_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p_tag_Callback(hObject, eventdata, handles)
% hObject    handle to p_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p_tag as text
%        str2double(get(hObject,'String')) returns contents of p_tag as a double


% --- Executes during object creation, after setting all properties.
function p_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function itheta_tag_Callback(hObject, eventdata, handles)
% hObject    handle to itheta_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of itheta_tag as text
%        str2double(get(hObject,'String')) returns contents of itheta_tag as a double


% --- Executes during object creation, after setting all properties.
function itheta_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to itheta_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vu_tag_Callback(hObject, eventdata, handles)
% hObject    handle to vu_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vu_tag as text
%        str2double(get(hObject,'String')) returns contents of vu_tag as a double


% --- Executes during object creation, after setting all properties.
function vu_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vu_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vtheta_tag_Callback(hObject, eventdata, handles)
% hObject    handle to vtheta_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vtheta_tag as text
%        str2double(get(hObject,'String')) returns contents of vtheta_tag as a double


% --- Executes during object creation, after setting all properties.
function vtheta_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vtheta_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vbeta_tag_Callback(hObject, eventdata, handles)
% hObject    handle to vbeta_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vbeta_tag as text
%        str2double(get(hObject,'String')) returns contents of vbeta_tag as a double


% --- Executes during object creation, after setting all properties.
function vbeta_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vbeta_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in plotbutton.
function plotbutton_Callback(hObject, eventdata, handles)
% hObject    handle to plotbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%-----------------------------------------------------------
%sdns inputs overload factors(sfv,sft & sfw):
    sfv=str2num(get(handles.sfv_tag,'string'));
    sft=str2num(get(handles.sft_tag,'string'));
    sfw=str2num(get(handles.sfw_tag,'string'));
%end input sf.
%-----------------------------------------------------------
%sdns 1-Swe(max):

    %sdns input data: (popupmenu inputs is not here.go to: popupmenu callback)
    d=str2num(get(handles.d_tag,'string'));
    wc=str2num(get(handles.wc_tag,'string'));
    n=str2num(get(handles.n_tag,'string'));
    t=str2num(get(handles.t_tag,'string'));
    v=str2num(get(handles.v_tag,'string'));
    ni=str2num(get(handles.ni_tag,'string'));
    vi=str2num(get(handles.vi_tag,'string'));
    vf=str2num(get(handles.vf_tag,'string'));
        %sdns define popup menu variables:
    i=str2num(get(handles.ihidden_tag,'string'));
    wi=str2num(get(handles.wihidden_tag,'string'));
    % sdns end input for Swe(max)
    
    %sdns formulization for Swe(max):
    wice=wi*t*(t+d)*3.1416*0.000001;
    vfi=((ni*vi)+vf)*i;
    swe_max=(v-(vfi*sfv))/((wc+wice)*n*sfv);
    %sdns ---------------------------------------------
    %sdns Swe_max plot latter.
    %swn=0:0.1:max_x; ------> we dont know max_x yet!
    %plot(handles.axes_tag,swn,swe_max,'r');
    %hold on;
    %grid on;
    %figure
    %plot(swn,swe_max,'r');
    %hold on;
    %grid on;
    
% end of Swe(max)

%------------------------------------------------------------------------

%sdns 2-Swn:
    % inputs for Swn:
    v0=str2num(get(handles.v0_tag,'string'));
    v0f=str2num(get(handles.v0f_tag,'string'));
    lf=str2num(get(handles.lf_tag,'string'));
    df=str2num(get(handles.df_tag,'string'));
    h=str2num(get(handles.h_tag,'string'));
    alpha1=str2num(get(handles.alpha1_tag,'string'));
    alpha2=str2num(get(handles.alpha2_tag,'string'));
    td=str2num(get(handles.td_tag,'string'));
    j=str2num(get(handles.j_tag,'string'));
    t2=str2num(get(handles.t2_tag,'string'));
    % end inputs-note alpha is degree,but it should rad in matlab!
    
    %sdns formulization for Swn:
    sf=df*lf*j;
    p=.0625*((v0*v0f/100)^2);
    %note:sf is windage the chains of insulators area
    twf=0.0625*((v0*v0f/100)^2)*sf*i;
    max_x=0;
    for alpha=alpha1:1:alpha2        
        tt=2*h*(sin((3.1416/180)*(alpha)/2))*n;
        swn=(td-(tt*sft)-(twf*sfw))/(0.0625*((v0*v0f/100)^2)*n*sfw*(d+(2*t2))*0.001);
        %----------------------------------------------------------------
        %sdns-mohasebat baraye mahdud kardan mehvar haye mokhtasat az tariq
        %mahdud kardane tule Swe(max) k ta hadaksare Swn rasm shavad
        if swn >= max_x
            max_x=swn;
        end
        %end for max_x.I use max_x latter.
        %---------------------------------------------------------------
        if alpha==alpha1
            figure
        end
        swe0=0:0.1:swe_max;
        plot(handles.axes_tag,swn,swe0,'b');
        hold on;
        grid on;
        plot(swn,swe0,'b');
        hold on;
    end
    grid on;
%end Swn.

%-----------------------------------------------------------

%sdns plot Swe_max (after find max_x from above):
    swn1=0:0.1:max_x;
    plot(handles.axes_tag,swn1,swe_max,'r');
    hold on;
    plot(swn1,swe_max,'r');
    hold on;
%end of plot

%-----------------------------------------------------------
    %sdns 3.Swe(min):
    %sdns input for Swe(min):
        %popup menus input:
    type=str2num(get(handles.typehidden_tag,'string'));
    ztype=str2num(get(handles.ztypehidden_tag,'string'));
        %end popup.other inputs:
    itheta=str2num(get(handles.itheta_tag,'string'));
    vu=str2num(get(handles.vu_tag,'string'));
    vtheta=str2num(get(handles.vtheta_tag,'string'));
    vbeta=str2num(get(handles.vbeta_tag,'string'));
    %end inputs.
    
    %sdns formulization for Swe(min):
    if type==1
        swe_min=(vu-(vfi*sfv))/((wc+wice)*n*sfv);
        swn2=0:0.1:max_x;
        plot(handles.axes_tag,swn2,swe_min,'g');
        hold on;
        plot(swn2,swe_min,'g');
        hold on;
    else
        if ztype==1
            for alpha=alpha1:1:alpha2
                %note: alpha and itheta input is degree but should be rad in matlab!
                tt=2*h*(sin((3.1416/180)*alpha/2))*n;
                tw=d*p*n*0.001;
                swn3=0:0.1:max_x;
                swe_min=((tw*cot((3.1416/180)*itheta)/(wc*n))*swn3)+(((tt*cot((3.1416/180)*itheta))-(vfi/2))/(wc*n));
                plot(handles.axes_tag,swn3,swe_min,'g');
                hold on;
                plot(swn3,swe_min,'g');
                hold on;
            end
        else
            %inja baraye borje avizi V shekl ast!
        end
        
    end
    
    
% --------------------------------------------------------------------
function about_tag_Callback(hObject, eventdata, handles)
% hObject    handle to about_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    %sdns about me:
    msgbox('Programmer: Saeed najafi <------> Email: saeed.sdn@gmail.com <------> Phone: +98-936-207-0569 <------> Special thanks to Mr.Mohammadzadeh','About me','help')

% --- Executes on selection change in wi_tag.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to wi_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns wi_tag contents as cell array
%        contents{get(hObject,'Value')} returns selected item from wi_tag


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wi_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function df_tag_Callback(hObject, eventdata, handles)
% hObject    handle to df_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of df_tag as text
%        str2double(get(hObject,'String')) returns contents of df_tag as a double


% --- Executes during object creation, after setting all properties.
function df_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to df_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha1_tag_Callback(hObject, eventdata, handles)
% hObject    handle to alpha1_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha1_tag as text
%        str2double(get(hObject,'String')) returns contents of alpha1_tag as a double


% --- Executes during object creation, after setting all properties.
function alpha1_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha1_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes_tag


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(figure,'axes_tag',axes_tag)


% --------------------------------------------------------------------
function tools_tag_Callback(hObject, eventdata, handles)
% hObject    handle to tools_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function grid_tag_Callback(hObject, eventdata, handles)
% hObject    handle to grid_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function grid_on_tag_Callback(hObject, eventdata, handles)
% hObject    handle to grid_on_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
    %sdns: grid on:
    grid on

% --------------------------------------------------------------------
function grid_off_tag_Callback(hObject, eventdata, handles)
% hObject    handle to grid_off_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    %sdns grid off:
    grid off


% --------------------------------------------------------------------
function print_axes_tag_Callback(hObject, eventdata, handles)
% hObject    handle to print_axes_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg(axes_tag)


% --------------------------------------------------------------------



function v0f_tag_Callback(hObject, eventdata, handles)
% hObject    handle to v0f_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v0f_tag as text
%        str2double(get(hObject,'String')) returns contents of v0f_tag as a double


% --- Executes during object creation, after setting all properties.
function v0f_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v0f_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function j_tag_Callback(hObject, eventdata, handles)
% hObject    handle to j_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of j_tag as text
%        str2double(get(hObject,'String')) returns contents of j_tag as a double


% --- Executes during object creation, after setting all properties.
function j_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to j_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t2_tag_Callback(hObject, eventdata, handles)
% hObject    handle to t2_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t2_tag as text
%        str2double(get(hObject,'String')) returns contents of t2_tag as a double


% --- Executes during object creation, after setting all properties.
function t2_tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%sdns end of program!
