classdef Reshape_To_ReshapeLayer1010 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.

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
        % Specify the path to the class that will be used for codegen
        function name = matlabCodegenRedirect(~)
            name = 'best2.coder.Reshape_To_ReshapeLayer1010';
        end
    end


    methods
        function this = Reshape_To_ReshapeLayer1010(name)
            this.Name = name;
            this.NumOutputs = 7;
            this.OutputNames = {'x_model_22_m_0_m__23', 'x_model_22_m_0_m__24', 'x_model_22_m_0_m__20', 'x_model_22_m_0_m__25', 'x_model_22_m_0_m__23NumDims', 'x_model_22_m_0_m__24NumDims', 'x_model_22_m_0_m__25NumDims'};
        end

        function [x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__20, x_model_22_m_0_m__25, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims] = predict(this, x_model_22_m_0_m__30)
            if isdlarray(x_model_22_m_0_m__30)
                x_model_22_m_0_m__30 = stripdims(x_model_22_m_0_m__30);
            end
            x_model_22_m_0_m__30NumDims = 4;
            x_model_22_m_0_m__30 = best2.ops.permuteInputVar(x_model_22_m_0_m__30, [4 3 1 2], 4);

            [x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__20, x_model_22_m_0_m__25, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__20NumDims, x_model_22_m_0_m__25NumDims] = Reshape_To_ReshapeGraph1044(this, x_model_22_m_0_m__30, x_model_22_m_0_m__30NumDims, false);
            x_model_22_m_0_m__23 = best2.ops.permuteOutputVar(x_model_22_m_0_m__23, ['as-is'], 0);
            x_model_22_m_0_m__24 = best2.ops.permuteOutputVar(x_model_22_m_0_m__24, ['as-is'], 0);
            x_model_22_m_0_m__20 = best2.ops.permuteOutputVar(x_model_22_m_0_m__20, [3 4 2 1], 4);
            x_model_22_m_0_m__25 = best2.ops.permuteOutputVar(x_model_22_m_0_m__25, ['as-is'], 0);

            x_model_22_m_0_m__23 = dlarray(single(x_model_22_m_0_m__23), repmat('U', 1, max(2, x_model_22_m_0_m__23NumDims)));
            x_model_22_m_0_m__24 = dlarray(single(x_model_22_m_0_m__24), repmat('U', 1, max(2, x_model_22_m_0_m__24NumDims)));
            x_model_22_m_0_m__20 = dlarray(single(x_model_22_m_0_m__20), 'SSCB');
            x_model_22_m_0_m__25 = dlarray(single(x_model_22_m_0_m__25), repmat('U', 1, max(2, x_model_22_m_0_m__25NumDims)));
            x_model_22_m_0_m__23NumDims = dlarray(ones(1,x_model_22_m_0_m__23NumDims,'like',x_model_22_m_0_m__23), 'UU');
            x_model_22_m_0_m__24NumDims = dlarray(ones(1,x_model_22_m_0_m__24NumDims,'like',x_model_22_m_0_m__23), 'UU');
            x_model_22_m_0_m__25NumDims = dlarray(ones(1,x_model_22_m_0_m__25NumDims,'like',x_model_22_m_0_m__23), 'UU');
        end

        function [x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__20, x_model_22_m_0_m__25, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims] = forward(this, x_model_22_m_0_m__30)
            if isdlarray(x_model_22_m_0_m__30)
                x_model_22_m_0_m__30 = stripdims(x_model_22_m_0_m__30);
            end
            x_model_22_m_0_m__30NumDims = 4;
            x_model_22_m_0_m__30 = best2.ops.permuteInputVar(x_model_22_m_0_m__30, [4 3 1 2], 4);

            [x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__20, x_model_22_m_0_m__25, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__20NumDims, x_model_22_m_0_m__25NumDims] = Reshape_To_ReshapeGraph1044(this, x_model_22_m_0_m__30, x_model_22_m_0_m__30NumDims, true);
            x_model_22_m_0_m__23 = best2.ops.permuteOutputVar(x_model_22_m_0_m__23, ['as-is'], 0);
            x_model_22_m_0_m__24 = best2.ops.permuteOutputVar(x_model_22_m_0_m__24, ['as-is'], 0);
            x_model_22_m_0_m__20 = best2.ops.permuteOutputVar(x_model_22_m_0_m__20, [3 4 2 1], 4);
            x_model_22_m_0_m__25 = best2.ops.permuteOutputVar(x_model_22_m_0_m__25, ['as-is'], 0);

            x_model_22_m_0_m__23 = dlarray(single(x_model_22_m_0_m__23), repmat('U', 1, max(2, x_model_22_m_0_m__23NumDims)));
            x_model_22_m_0_m__24 = dlarray(single(x_model_22_m_0_m__24), repmat('U', 1, max(2, x_model_22_m_0_m__24NumDims)));
            x_model_22_m_0_m__20 = dlarray(single(x_model_22_m_0_m__20), 'SSCB');
            x_model_22_m_0_m__25 = dlarray(single(x_model_22_m_0_m__25), repmat('U', 1, max(2, x_model_22_m_0_m__25NumDims)));
            x_model_22_m_0_m__23NumDims = dlarray(ones(1,x_model_22_m_0_m__23NumDims,'like',x_model_22_m_0_m__23), 'UU');
            x_model_22_m_0_m__24NumDims = dlarray(ones(1,x_model_22_m_0_m__24NumDims,'like',x_model_22_m_0_m__23), 'UU');
            x_model_22_m_0_m__25NumDims = dlarray(ones(1,x_model_22_m_0_m__25NumDims,'like',x_model_22_m_0_m__23), 'UU');
        end

        function [x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__20, x_model_22_m_0_m__25, x_model_22_m_0_m__23NumDims1046, x_model_22_m_0_m__24NumDims1047, x_model_22_m_0_m__20NumDims1048, x_model_22_m_0_m__25NumDims1049] = Reshape_To_ReshapeGraph1044(this, x_model_22_m_0_m__30, x_model_22_m_0_m__30NumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape, x_model_22_m_0_m__21NumDims] = best2.ops.prepareReshapeArgs(x_model_22_m_0_m__30, this.Vars.x_model_10_m_m_0__3, x_model_22_m_0_m__30NumDims, 0);
            x_model_22_m_0_m__21 = reshape(x_model_22_m_0_m__30, shape{:});

            % Split:
            [x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__25, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims] = best2.ops.onnxSplit(x_model_22_m_0_m__21, 2, this.Vars.SplitSplit1045, 0, x_model_22_m_0_m__21NumDims);

            % Reshape:
            [shape, x_model_22_m_0_m__20NumDims] = best2.ops.prepareReshapeArgs(x_model_22_m_0_m__25, this.Vars.x_model_10_m_m_0__2, x_model_22_m_0_m__25NumDims, 0);
            x_model_22_m_0_m__20 = reshape(x_model_22_m_0_m__25, shape{:});

            % Set graph output arguments
            x_model_22_m_0_m__23NumDims1046 = x_model_22_m_0_m__23NumDims;
            x_model_22_m_0_m__24NumDims1047 = x_model_22_m_0_m__24NumDims;
            x_model_22_m_0_m__20NumDims1048 = x_model_22_m_0_m__20NumDims;
            x_model_22_m_0_m__25NumDims1049 = x_model_22_m_0_m__25NumDims;

        end

    end

end