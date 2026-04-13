classdef Transpose_To_AddLayer1013 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = best.coder.Transpose_To_AddLayer1013(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = best.Transpose_To_AddLayer1013(cgInstance.Name);
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
        function this = Transpose_To_AddLayer1013(mlInstance)
            this.Name = mlInstance.Name;
            this.NumInputs = 7;
            this.OutputNames = {'x_model_10_m_m_0_att'};
            if isstruct(mlInstance.Vars)
                names = fieldnames(mlInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this.Vars.(fieldname) = best.coder.ops.extractIfDlarray(mlInstance.Vars.(fieldname));
                end
            else
                this.Vars = [];
            end

            this.NumDims = mlInstance.NumDims;
        end

        function [x_model_10_m_m_0_att] = predict(this, x_model_10_m_m_0__11__, x_model_10_m_m_0__12__, x_model_10_m_m_0__13__, x_model_10_m_m_0__16__, x_model_10_m_m_0__11NumDims__, x_model_10_m_m_0__12NumDims__, x_model_10_m_m_0__13NumDims__)
            if isdlarray(x_model_10_m_m_0__11__)
                x_model_10_m_m_0__11_ = stripdims(x_model_10_m_m_0__11__);
            else
                x_model_10_m_m_0__11_ = x_model_10_m_m_0__11__;
            end
            if isdlarray(x_model_10_m_m_0__12__)
                x_model_10_m_m_0__12_ = stripdims(x_model_10_m_m_0__12__);
            else
                x_model_10_m_m_0__12_ = x_model_10_m_m_0__12__;
            end
            if isdlarray(x_model_10_m_m_0__13__)
                x_model_10_m_m_0__13_ = stripdims(x_model_10_m_m_0__13__);
            else
                x_model_10_m_m_0__13_ = x_model_10_m_m_0__13__;
            end
            if isdlarray(x_model_10_m_m_0__16__)
                x_model_10_m_m_0__16_ = stripdims(x_model_10_m_m_0__16__);
            else
                x_model_10_m_m_0__16_ = x_model_10_m_m_0__16__;
            end
            x_model_10_m_m_0__11NumDims = numel(x_model_10_m_m_0__11NumDims__);
            x_model_10_m_m_0__12NumDims = numel(x_model_10_m_m_0__12NumDims__);
            x_model_10_m_m_0__13NumDims = numel(x_model_10_m_m_0__13NumDims__);
            x_model_10_m_m_0__16NumDims = 4;
            x_model_10_m_m_0__11 = best.coder.ops.permuteInputVar(x_model_10_m_m_0__11_, ['as-is'], 0);
            x_model_10_m_m_0__12 = best.coder.ops.permuteInputVar(x_model_10_m_m_0__12_, ['as-is'], 0);
            x_model_10_m_m_0__13 = best.coder.ops.permuteInputVar(x_model_10_m_m_0__13_, ['as-is'], 0);
            x_model_10_m_m_0__16 = best.coder.ops.permuteInputVar(x_model_10_m_m_0__16_, [4 3 1 2], 4);

            [x_model_10_m_m_0_att__, x_model_10_m_m_0_attNumDims__] = Transpose_To_AddGraph1060(this, x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__13, x_model_10_m_m_0__16, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims, x_model_10_m_m_0__16NumDims, false);
            x_model_10_m_m_0_att_ = best.coder.ops.permuteOutputVar(x_model_10_m_m_0_att__, [3 4 2 1], 4);

            x_model_10_m_m_0_att = dlarray(single(x_model_10_m_m_0_att_), 'SSCB');
        end

        function [x_model_10_m_m_0_att, x_model_10_m_m_0_attNumDims1063] = Transpose_To_AddGraph1060(this, x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__13, x_model_10_m_m_0__16, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims, x_model_10_m_m_0__16NumDims, Training)

            % Execute the operators:
            % Transpose:
            [perm1034, x_model_10_m_m_0__15NumDims] = best.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1061, coder.const(x_model_10_m_m_0__11NumDims));
            if isempty(perm1034)
                x_model_10_m_m_0__15 = x_model_10_m_m_0__11;
            else
                x_model_10_m_m_0__15 = permute(best.coder.ops.extractIfDlarray(x_model_10_m_m_0__11), perm1034);
            end

            % MatMul:
            [x_model_10_m_m_0__5, x_model_10_m_m_0__5NumDims] = best.coder.ops.onnxMatMul(x_model_10_m_m_0__15, x_model_10_m_m_0__12, coder.const(x_model_10_m_m_0__15NumDims), coder.const(x_model_10_m_m_0__12NumDims));

            % Mul:
            x_model_10_m_m_0__6 = x_model_10_m_m_0__5 .* this.Vars.x_model_10_m_m_0__1;
            x_model_10_m_m_0__6NumDims = max(coder.const(x_model_10_m_m_0__5NumDims), this.NumDims.x_model_10_m_m_0__1);

            % Softmax:
            [dim11035, dim21036, origSize1037, x_model_10_m_m_0__10NumDims] = best.coder.ops.prepareSoftmaxArgs(x_model_10_m_m_0__6, 3, coder.const(x_model_10_m_m_0__6NumDims));
            Y11038 = reshape(x_model_10_m_m_0__6, dim11035, dim21036);
            Y21039 = softmax(dlarray(single(Y11038)), 'DataFormat', 'CB');
            x_model_10_m_m_0__10 = reshape(best.coder.ops.extractIfDlarray(Y21039), origSize1037);

            % Transpose:
            [perm1040, x_model_10_m_m_0__14NumDims] = best.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1062, coder.const(x_model_10_m_m_0__10NumDims));
            if isempty(perm1040)
                x_model_10_m_m_0__14 = x_model_10_m_m_0__10;
            else
                x_model_10_m_m_0__14 = permute(best.coder.ops.extractIfDlarray(x_model_10_m_m_0__10), perm1040);
            end

            % MatMul:
            [x_model_10_m_m_0__4, x_model_10_m_m_0__4NumDims] = best.coder.ops.onnxMatMul(x_model_10_m_m_0__13, x_model_10_m_m_0__14, coder.const(x_model_10_m_m_0__13NumDims), coder.const(x_model_10_m_m_0__14NumDims));

            % Reshape:
            [shape1041, x_model_10_m_m_0__7NumDims] = best.coder.ops.prepareReshapeArgs(x_model_10_m_m_0__4, this.Vars.x_model_10_m_m_0__2, coder.const(x_model_10_m_m_0__4NumDims), 0);
            x_model_10_m_m_0__7 = reshape(x_model_10_m_m_0__4, shape1041{:});

            % Add:
            x_model_10_m_m_0_att = x_model_10_m_m_0__7 + x_model_10_m_m_0__16;
            x_model_10_m_m_0_attNumDims = max(coder.const(x_model_10_m_m_0__7NumDims), coder.const(x_model_10_m_m_0__16NumDims));

            % Set graph output arguments
            x_model_10_m_m_0_attNumDims1063 = x_model_10_m_m_0_attNumDims;

        end

    end

end