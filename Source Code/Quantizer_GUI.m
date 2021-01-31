function varargout = Quantizer_GUI(varargin)
% QUANTIZER_GUI MATLAB code for Quantizer_GUI.fig
%      QUANTIZER_GUI, by itself, creates a new QUANTIZER_GUI or raises the existing
%      singleton*.
%
%      H = QUANTIZER_GUI returns the handle to a new QUANTIZER_GUI or the handle to
%      the existing singleton*.
%
%      QUANTIZER_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUANTIZER_GUI.M with the given input arguments.
%
%      QUANTIZER_GUI('Property','Value',...) creates a new QUANTIZER_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Quantizer_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Quantizer_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Quantizer_GUI

% Last Modified by GUIDE v2.5 08-Jan-2021 23:57:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Quantizer_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Quantizer_GUI_OutputFcn, ...
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


% --- Executes just before Quantizer_GUI is made visible.
function Quantizer_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Quantizer_GUI (see VARARGIN)

% Choose default command line output for Quantizer_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Quantizer_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Quantizer_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function amplitude_input_Callback(hObject, eventdata, handles)
% hObject    handle to amplitude_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplitude_input as text
%        str2double(get(hObject,'String')) returns contents of amplitude_input as a double


% --- Executes during object creation, after setting all properties.
function amplitude_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitude_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time_input_Callback(hObject, eventdata, handles)
% hObject    handle to time_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time_input as text
%        str2double(get(hObject,'String')) returns contents of time_input as a double


% --- Executes during object creation, after setting all properties.
function time_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in uniform_input.
function uniform_input_Callback(hObject, eventdata, handles)
% hObject    handle to uniform_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of uniform_input
uniform_input =  get(handles.uniform_input, 'Value')
if uniform_input == 0
    set(handles.uipanel1, 'visible', 'off');

else
    set(handles.uipanel1, 'visible', 'on');
    set(handles.uipanel2, 'visible', 'off');
    set(handles.nonuniform_input, 'Value', 0);    


end

% --- Executes on button press in nonuniform_input.
function nonuniform_input_Callback(hObject, eventdata, handles)
% hObject    handle to nonuniform_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of nonuniform_input
nonuniform_input =  get(handles.nonuniform_input, 'Value');
if nonuniform_input == 0
    set(handles.uipanel2, 'visible', 'off');
    set(handles.uniform_input, 'Value', 0);    

else
    set(handles.uipanel2, 'visible', 'on');
    set(handles.uipanel1, 'visible', 'off');
    set(handles.uniform_input, 'Value', 0);    

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


% --- Executes on button press in enter_input.
function enter_input_Callback(hObject, eventdata, handles)
% hObject    handle to enter_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;
time_input = get(handles.time_input, 'String');
amplitude_input = get(handles.amplitude_input, 'String');

time_vector = str2double(strsplit(time_input, ' '));
amplitude_vector = str2double(strsplit(amplitude_input, ' '))

nonuniform_input =  get(handles.nonuniform_input, 'Value');

if nonuniform_input == 1 
    level_input2 = str2double(get(handles.level_input2, 'String'));
    peak_input2 = str2double(get(handles.peak_input2, 'String'));
    mu_input = str2double(get(handles.mu_input, 'String'));
    [err, xq] = non_uniform_quantizer_v1(amplitude_vector, mu_input, peak_input2, level_input2);
end

uniform_input =  get(handles.uniform_input, 'Value');

if uniform_input == 1
    levels_input = str2double(get(handles.levels_input, 'String'));
    peak_input = str2double(get(handles.peak_input, 'String'));
    type_input = get(handles.type_input, 'Value');
    [err, xq] = uniform_quantizer_v1(amplitude_vector, levels_input, peak_input, type_input);

end

%err = immse(amplitude_vector, xq);
error_output = set(handles.error_output, 'String', err);


axes(handles.graph_output);

%input signal
%t = time_vector(1):0.001:0.1;
%y = 5*cos(2*pi*10*t);
%graph = plot(t,y);
graph = plot(time_vector, amplitude_vector);

hold on;
%output signal
graph = stairs(time_vector, xq);
legend({'input signal','quantized signal'});

function peak_input_Callback(hObject, eventdata, handles)
% hObject    handle to peak_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of peak_input as text
%        str2double(get(hObject,'String')) returns contents of peak_input as a double


% --- Executes during object creation, after setting all properties.
function peak_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to peak_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in type_input.
function type_input_Callback(hObject, eventdata, handles)
% hObject    handle to type_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns type_input contents as cell array
%        contents{get(hObject,'Value')} returns selected item from type_input


% --- Executes during object creation, after setting all properties.
function type_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to type_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function levels_input_Callback(hObject, eventdata, handles)
% hObject    handle to levels_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of levels_input as text
%        str2double(get(hObject,'String')) returns contents of levels_input as a double


% --- Executes during object creation, after setting all properties.
function levels_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to levels_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function level_input2_Callback(hObject, eventdata, handles)
% hObject    handle to level_input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of level_input2 as text
%        str2double(get(hObject,'String')) returns contents of level_input2 as a double


% --- Executes during object creation, after setting all properties.
function level_input2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to level_input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function peak_input2_Callback(hObject, eventdata, handles)
% hObject    handle to peak_input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of peak_input2 as text
%        str2double(get(hObject,'String')) returns contents of peak_input2 as a double


% --- Executes during object creation, after setting all properties.
function peak_input2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to peak_input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mu_input_Callback(hObject, eventdata, handles)
% hObject    handle to mu_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mu_input as text
%        str2double(get(hObject,'String')) returns contents of mu_input as a double


% --- Executes during object creation, after setting all properties.
function mu_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mu_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error_output_Callback(hObject, eventdata, handles)
% hObject    handle to error_output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error_output as text
%        str2double(get(hObject,'String')) returns contents of error_output as a double


% --- Executes during object creation, after setting all properties.
function error_output_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error_output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
