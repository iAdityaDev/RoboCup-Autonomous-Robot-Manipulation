classdef Reshape_To_ReshapeLayer1010 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.
    %#codegen

    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    properties (Learnable)
    end

    properties (State)
    end

    properties
        Vars
        NumDims
    end

    methods(Static, Hidden)
        % Specify the properties of the class that will not be modified
        % after the first assignment.
        function p = matlabCodegenNontunableProperties(~)
            p = {
                % Constants, i.e., Vars, NumDims and all learnables and states
                'Vars'
                'NumDims'
                };
        end
    end


    methods(Static, Hidden)
        % Instantiate a codegenable layer instance from a MATLAB layer instance
        function this_cg = matlabCodegenToRedirected(mlInstance)
            this_cg = best2.coder.Reshape_To_ReshapeLayer1010(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = best2.Reshape_To_ReshapeLayer1010(cgInstance.Name);
            if isstruct(cgInstance.Vars)
                names = fieldnames(cgInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this_ml.Vars.(fieldname) = dlarray(cgInstance.Vars.(fieldname));
                end
            else
                this_ml.Vars = [];
            end
            this_ml.NumDims = cgInstance.NumDims;
        end
    end

    methods
        function this = Reshape_To_ReshapeLayer1010(mlInstance)
            this.Name = mlInstance.Name;
            this.NumOutputs = 7;
            this.OutputNames = {'x_model_22_m_0_m__23', 'x_model_22_m_0_m__24', 'x_model_22_m_0_m__20', 'x_model_22_m_0_m__25', 'x_model_22_m_0_m__23NumDims', 'x_model_22_m_0_m__24NumDims', 'x_model_22_m_0_m__25NumDims'};
            if isstruct(mlInstance.Vars)
                names = fieldnames(mlInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this.Vars.(fieldname) = best2.coder.ops.extractIfDlarray(mlInstance.Vars.(fieldname));
                end
            else
                this.Vars = [];
            end

            this.NumDims = mlInstance.NumDims;
        end

        function [x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__20, x_model_22_m_0_m__25, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims] = predict(this, x_model_22_m_0_m__30__)
            if isdlarray(x_model_22_m_0_m__30__)
                x_model_22_m_0_m__30_ = stripdims(x_model_22_m_0_m__30__);
            else
                x_model_22_m_0_m__30_ = x_model_22_m_0_m__30__;
            end
            x_model_22_m_0_m__30NumDims = 4;
            x_model_22_m_0_m__30 = best2.coder.ops.permuteInputVar(x_model_22_m_0_m__30_, [4 3 1 2], 4);

            [x_model_22_m_0_m__23__, x_model_22_m_0_m__24__, x_model_22_m_0_m__20__, x_model_22_m_0_m__25__, x_model_22_m_0_m__23NumDims__, x_model_22_m_0_m__24NumDims__, x_model_22_m_0_m__20NumDims__, x_model_22_m_0_m__25NumDims__] = Reshape_To_ReshapeGraph1044(this, x_model_22_m_0_m__30, x_model_22_m_0_m__30NumDims, false);
            x_model_22_m_0_m__23_ = best2.coder.ops.permuteOutputVar(x_model_22_m_0_m__23__, ['as-is'], 0);
            x_model_22_m_0_m__24_ = best2.coder.ops.permuteOutputVar(x_model_22_m_0_m__24__, ['as-is'], 0);
            x_model_22_m_0_m__20_ = best2.coder.ops.permuteOutputVar(x_model_22_m_0_m__20__, [3 4 2 1], 4);
            x_model_22_m_0_m__25_ = best2.coder.ops.permuteOutputVar(x_model_22_m_0_m__25__, ['as-is'], 0);

            x_model_22_m_0_m__23 = dlarray(single(x_model_22_m_0_m__23_), repmat('U', 1, max(2, coder.const(x_model_22_m_0_m__23NumDims__))));
            x_model_22_m_0_m__24 = dlarray(single(x_model_22_m_0_m__24_), repmat('U', 1, max(2, coder.const(x_model_22_m_0_m__24NumDims__))));
            x_model_22_m_0_m__20 = dlarray(single(x_model_22_m_0_m__20_), 'SSCB');
            x_model_22_m_0_m__25 = dlarray(single(x_model_22_m_0_m__25_), repmat('U', 1, max(2, coder.const(x_model_22_m_0_m__25NumDims__))));
            x_model_22_m_0_m__23NumDims = dlarray(ones(1,x_model_22_m_0_m__23NumDims__,'like',x_model_22_m_0_m__23), 'UU');
            x_model_22_m_0_m__24NumDims = dlarray(ones(1,x_model_22_m_0_m__24NumDims__,'like',x_model_22_m_0_m__23), 'UU');
            x_model_22_m_0_m__25NumDims = dlarray(ones(1,x_model_22_m_0_m__25NumDims__,'like',x_model_22_m_0_m__23), 'UU');
        end

        function [x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__20, x_model_22_m_0_m__25, x_model_22_m_0_m__23NumDims1046, x_model_22_m_0_m__24NumDims1047, x_model_22_m_0_m__20NumDims1048, x_model_22_m_0_m__25NumDims1049] = Reshape_To_ReshapeGraph1044(this, x_model_22_m_0_m__30, x_model_22_m_0_m__30NumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape1022, x_model_22_m_0_m__21NumDims] = best2.coder.ops.prepareReshapeArgs(x_model_22_m_0_m__30, this.Vars.x_model_10_m_m_0__3, coder.const(x_model_22_m_0_m__30NumDims), 0);
            x_model_22_m_0_m__21 = reshape(x_model_22_m_0_m__30, shape1022{:});

            % Split:
            [x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__25, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims] = best2.coder.ops.onnxSplit(x_model_22_m_0_m__21, 2, this.Vars.SplitSplit1045, 0, coder.const(x_model_22_m_0_m__21NumDims));

            % Reshape:
            [shape1023, x_model_22_m_0_m__20NumDims] = best2.coder.ops.prepareReshapeArgs(x_model_22_m_0_m__25, this.Vars.x_model_10_m_m_0__2, coder.const(x_model_22_m_0_m__25NumDims), 0);
            x_model_22_m_0_m__20 = reshape(x_model_22_m_0_m__25, shape1023{:});

            % Set graph output arguments
            x_model_22_m_0_m__23NumDims1046 = x_model_22_m_0_m__23NumDims;
            x_model_22_m_0_m__24NumDims1047 = x_model_22_m_0_m__24NumDims;
            x_model_22_m_0_m__20NumDims1048 = x_model_22_m_0_m__20NumDims;
            x_model_22_m_0_m__25NumDims1049 = coder.const(x_model_22_m_0_m__25NumDims);

        end

    end

end