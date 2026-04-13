classdef Reshape_To_ConcatLayer1007 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = best.coder.Reshape_To_ConcatLayer1007(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = best.Reshape_To_ConcatLayer1007(cgInstance.Name);
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
        function this = Reshape_To_ConcatLayer1007(mlInstance)
            this.Name = mlInstance.Name;
            this.NumInputs = 6;
            this.OutputNames = {'output0'};
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

        function [output0] = predict(this, x_model_23_one2o_6__, x_model_23_one2o_33__, x_model_23_one2o_13__, x_model_23_one2o_46__, x_model_23_one2o_20__, x_model_23_one2o_59__)
            if isdlarray(x_model_23_one2o_6__)
                x_model_23_one2o_6_ = stripdims(x_model_23_one2o_6__);
            else
                x_model_23_one2o_6_ = x_model_23_one2o_6__;
            end
            if isdlarray(x_model_23_one2o_33__)
                x_model_23_one2o_33_ = stripdims(x_model_23_one2o_33__);
            else
                x_model_23_one2o_33_ = x_model_23_one2o_33__;
            end
            if isdlarray(x_model_23_one2o_13__)
                x_model_23_one2o_13_ = stripdims(x_model_23_one2o_13__);
            else
                x_model_23_one2o_13_ = x_model_23_one2o_13__;
            end
            if isdlarray(x_model_23_one2o_46__)
                x_model_23_one2o_46_ = stripdims(x_model_23_one2o_46__);
            else
                x_model_23_one2o_46_ = x_model_23_one2o_46__;
            end
            if isdlarray(x_model_23_one2o_20__)
                x_model_23_one2o_20_ = stripdims(x_model_23_one2o_20__);
            else
                x_model_23_one2o_20_ = x_model_23_one2o_20__;
            end
            if isdlarray(x_model_23_one2o_59__)
                x_model_23_one2o_59_ = stripdims(x_model_23_one2o_59__);
            else
                x_model_23_one2o_59_ = x_model_23_one2o_59__;
            end
            x_model_23_one2o_6NumDims = 4;
            x_model_23_one2o_33NumDims = 4;
            x_model_23_one2o_13NumDims = 4;
            x_model_23_one2o_46NumDims = 4;
            x_model_23_one2o_20NumDims = 4;
            x_model_23_one2o_59NumDims = 4;
            x_model_23_one2o_6 = best.coder.ops.permuteInputVar(x_model_23_one2o_6_, [4 3 1 2], 4);
            x_model_23_one2o_33 = best.coder.ops.permuteInputVar(x_model_23_one2o_33_, [4 3 1 2], 4);
            x_model_23_one2o_13 = best.coder.ops.permuteInputVar(x_model_23_one2o_13_, [4 3 1 2], 4);
            x_model_23_one2o_46 = best.coder.ops.permuteInputVar(x_model_23_one2o_46_, [4 3 1 2], 4);
            x_model_23_one2o_20 = best.coder.ops.permuteInputVar(x_model_23_one2o_20_, [4 3 1 2], 4);
            x_model_23_one2o_59 = best.coder.ops.permuteInputVar(x_model_23_one2o_59_, [4 3 1 2], 4);

            [output0__, output0NumDims__] = Reshape_To_ConcatGraph1028(this, x_model_23_one2o_6, x_model_23_one2o_33, x_model_23_one2o_13, x_model_23_one2o_46, x_model_23_one2o_20, x_model_23_one2o_59, x_model_23_one2o_6NumDims, x_model_23_one2o_33NumDims, x_model_23_one2o_13NumDims, x_model_23_one2o_46NumDims, x_model_23_one2o_20NumDims, x_model_23_one2o_59NumDims, false);
            output0_ = best.coder.ops.permuteOutputVar(output0__, ['as-is'], 3);

            output0 = dlarray(single(output0_), repmat('U', 1, max(2, coder.const(output0NumDims__))));
        end

        function [output0, output0NumDims1035] = Reshape_To_ConcatGraph1028(this, x_model_23_one2o_6, x_model_23_one2o_33, x_model_23_one2o_13, x_model_23_one2o_46, x_model_23_one2o_20, x_model_23_one2o_59, x_model_23_one2o_6NumDims, x_model_23_one2o_33NumDims, x_model_23_one2o_13NumDims, x_model_23_one2o_46NumDims, x_model_23_one2o_20NumDims, x_model_23_one2o_59NumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape1000, x_model_23_Reshape_oNumDims] = best.coder.ops.prepareReshapeArgs(x_model_23_one2o_6, this.Vars.x_model_23_Constan_9, coder.const(x_model_23_one2o_6NumDims), 0);
            x_model_23_Reshape_o = reshape(x_model_23_one2o_6, shape1000{:});

            % Reshape:
            [shape1001, x_model_23_Reshape_3NumDims] = best.coder.ops.prepareReshapeArgs(x_model_23_one2o_33, this.Vars.x_model_23_Constan_6, coder.const(x_model_23_one2o_33NumDims), 0);
            x_model_23_Reshape_3 = reshape(x_model_23_one2o_33, shape1001{:});

            % Reshape:
            [shape1002, x_model_23_Reshape_1NumDims] = best.coder.ops.prepareReshapeArgs(x_model_23_one2o_13, this.Vars.x_model_23_Constan_9, coder.const(x_model_23_one2o_13NumDims), 0);
            x_model_23_Reshape_1 = reshape(x_model_23_one2o_13, shape1002{:});

            % Reshape:
            [shape1003, x_model_23_Reshape_4NumDims] = best.coder.ops.prepareReshapeArgs(x_model_23_one2o_46, this.Vars.x_model_23_Constan_6, coder.const(x_model_23_one2o_46NumDims), 0);
            x_model_23_Reshape_4 = reshape(x_model_23_one2o_46, shape1003{:});

            % Reshape:
            [shape1004, x_model_23_Reshape_2NumDims] = best.coder.ops.prepareReshapeArgs(x_model_23_one2o_20, this.Vars.x_model_23_Constan_9, coder.const(x_model_23_one2o_20NumDims), 0);
            x_model_23_Reshape_2 = reshape(x_model_23_one2o_20, shape1004{:});

            % Concat:
            [x_model_23_Concat_ou, x_model_23_Concat_ouNumDims] = best.coder.ops.onnxConcat(-1, {x_model_23_Reshape_o, x_model_23_Reshape_1, x_model_23_Reshape_2}, [coder.const(x_model_23_Reshape_oNumDims), coder.const(x_model_23_Reshape_1NumDims), coder.const(x_model_23_Reshape_2NumDims)]);

            % Slice:
            [indices1005, x_model_23_Slice_outNumDims] = best.coder.ops.prepareSliceArgs(x_model_23_Concat_ou, this.Vars.x_model_23_Constan_8, this.Vars.x_model_23_Mul_outpu, this.Vars.x_model_23_Constan_7, '', coder.const(x_model_23_Concat_ouNumDims));
            x_model_23_Slice_out = x_model_23_Concat_ou(indices1005{:});

            % Slice:
            [indices1006, x_model_23_Slice_1_oNumDims] = best.coder.ops.prepareSliceArgs(x_model_23_Concat_ou, this.Vars.x_model_23_Mul_outpu, this.Vars.x_model_23_Mul_1_out, this.Vars.x_model_23_Constan_7, '', coder.const(x_model_23_Concat_ouNumDims));
            x_model_23_Slice_1_o = x_model_23_Concat_ou(indices1006{:});

            % Sub:
            x_model_23_Sub_outpu = this.Vars.x_model_23_Constant_ - x_model_23_Slice_out;
            x_model_23_Sub_outpuNumDims = max(this.NumDims.x_model_23_Constant_, coder.const(x_model_23_Slice_outNumDims));

            % Add:
            x_model_23_Add_1_out = this.Vars.x_model_23_Constan_1 + x_model_23_Slice_1_o;
            x_model_23_Add_1_outNumDims = max(this.NumDims.x_model_23_Constan_1, coder.const(x_model_23_Slice_1_oNumDims));

            % Concat:
            [x_model_23_Concat_2_, x_model_23_Concat_2_NumDims] = best.coder.ops.onnxConcat(1, {x_model_23_Sub_outpu, x_model_23_Add_1_out}, [coder.const(x_model_23_Sub_outpuNumDims), coder.const(x_model_23_Add_1_outNumDims)]);

            % Mul:
            x_model_23_Mul_2_out = x_model_23_Concat_2_ .* this.Vars.x_model_23_Constan_2;
            x_model_23_Mul_2_outNumDims = max(coder.const(x_model_23_Concat_2_NumDims), this.NumDims.x_model_23_Constan_2);

            % Reshape:
            [shape1007, x_model_23_Reshape_5NumDims] = best.coder.ops.prepareReshapeArgs(x_model_23_one2o_59, this.Vars.x_model_23_Constan_6, coder.const(x_model_23_one2o_59NumDims), 0);
            x_model_23_Reshape_5 = reshape(x_model_23_one2o_59, shape1007{:});

            % Concat:
            [x_model_23_Concat_1_, x_model_23_Concat_1_NumDims] = best.coder.ops.onnxConcat(-1, {x_model_23_Reshape_3, x_model_23_Reshape_4, x_model_23_Reshape_5}, [coder.const(x_model_23_Reshape_3NumDims), coder.const(x_model_23_Reshape_4NumDims), coder.const(x_model_23_Reshape_5NumDims)]);

            % Sigmoid:
            X1008 = dlarray(best.coder.ops.extractIfDlarray(x_model_23_Concat_1_));
            Y1009 = sigmoid(X1008);
            x_model_23_Sigmoid_o = best.coder.ops.extractIfDlarray(Y1009);
            x_model_23_Sigmoid_oNumDims = coder.const(x_model_23_Concat_1_NumDims);

            % Concat:
            [x_model_23_Concat_3_, x_model_23_Concat_3_NumDims] = best.coder.ops.onnxConcat(1, {x_model_23_Mul_2_out, x_model_23_Sigmoid_o}, [coder.const(x_model_23_Mul_2_outNumDims), coder.const(x_model_23_Sigmoid_oNumDims)]);

            % Transpose:
            [perm1010, x_model_23_TransposeNumDims] = best.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1029, coder.const(x_model_23_Concat_3_NumDims));
            if isempty(perm1010)
                x_model_23_Transpose = x_model_23_Concat_3_;
            else
                x_model_23_Transpose = permute(best.coder.ops.extractIfDlarray(x_model_23_Concat_3_), perm1010);
            end

            % Split:
            [x_model_23_Split_out, x_model_23_Split_o_1, x_model_23_Split_outNumDims, x_model_23_Split_o_1NumDims] = best.coder.ops.onnxSplit(x_model_23_Transpose, -1, this.Vars.SplitSplit1030, 0, coder.const(x_model_23_TransposeNumDims));

            % ReduceMax:
            dims1011 = best.coder.ops.prepareReduceArgs(this.Vars.ReduceMaxAxes1031, coder.const(x_model_23_Split_o_1NumDims));
            xReduced1012 = max(x_model_23_Split_o_1, [], dims1011);
            [x_model_23_ReduceMax, x_model_23_ReduceMaxNumDims] = best.coder.ops.onnxSqueeze(xReduced1012, this.Vars.ReduceMaxAxes1031, coder.const(x_model_23_Split_o_1NumDims));

            % TopK:
            [x_model_23_TopK_outp, x_model_23_TopK_ou_1, x_model_23_TopK_outpNumDims, x_model_23_TopK_ou_1NumDims] = best.coder.ops.onnxTopK11(x_model_23_ReduceMax, this.Vars.x_model_23_Constan_3, -1, 1, 1, coder.const(x_model_23_ReduceMaxNumDims));

            % Unsqueeze:
            [shape1013, x_model_23_Expand_ouNumDims] = best.coder.ops.prepareUnsqueezeArgs(x_model_23_TopK_ou_1, this.Vars.UnsqueezeAxes1032, coder.const(x_model_23_TopK_ou_1NumDims));
            x_model_23_Expand_ou = reshape(x_model_23_TopK_ou_1, shape1013);

            % Flatten:
            [dim11014, dim21015, x_model_23_Flatten_1NumDims] = best.coder.ops.prepareFlattenArgs(x_model_23_Expand_ou, 2, coder.const(x_model_23_Expand_ouNumDims));
            x_model_23_Flatten_1 = reshape(x_model_23_Expand_ou, dim11014, dim21015);

            % Tile:
            [sz1016, x_model_23_Tile_outpNumDims] = best.coder.ops.prepareTileArgs(this.Vars.x_model_23_Constan_4);
            x_model_23_Tile_outp = repmat(x_model_23_Expand_ou, sz1016);

            % GatherElements:
            [x_model_23_GatherE_1, x_model_23_GatherE_1NumDims] = best.coder.ops.onnxGatherElements(x_model_23_Split_o_1, x_model_23_Tile_outp, 1, coder.const(x_model_23_Split_o_1NumDims), coder.const(x_model_23_Tile_outpNumDims));

            % Flatten:
            [dim11017, dim21018, x_model_23_Flatten_oNumDims] = best.coder.ops.prepareFlattenArgs(x_model_23_GatherE_1, 1, coder.const(x_model_23_GatherE_1NumDims));
            x_model_23_Flatten_o = reshape(x_model_23_GatherE_1, dim11017, dim21018);

            % TopK:
            [x_model_23_TopK_1_ou, x_model_23_TopK_1__1, x_model_23_TopK_1_ouNumDims, x_model_23_TopK_1__1NumDims] = best.coder.ops.onnxTopK11(x_model_23_Flatten_o, this.Vars.x_model_23_Constan_3, -1, 1, 1, coder.const(x_model_23_Flatten_oNumDims));

            % Div:
            x_model_23_Add_2_out = fix(x_model_23_TopK_1__1 ./ this.Vars.x_model_23_Constan_5);
            x_model_23_Add_2_outNumDims = max(coder.const(x_model_23_TopK_1__1NumDims), this.NumDims.x_model_23_Constan_5);

            % Unsqueeze:
            [shape1019, x_model_23_UnsqueezeNumDims] = best.coder.ops.prepareUnsqueezeArgs(x_model_23_TopK_1_ou, this.Vars.UnsqueezeAxes1033, coder.const(x_model_23_TopK_1_ouNumDims));
            x_model_23_Unsqueeze = reshape(x_model_23_TopK_1_ou, shape1019);

            % Mod:
            [x_model_23_Mod_outpu, x_model_23_Mod_outpuNumDims] = best.coder.ops.onnxMod(x_model_23_TopK_1__1, this.Vars.x_model_23_Constan_5, 0, coder.const(x_model_23_TopK_1__1NumDims));

            % Unsqueeze:
            [shape1020, x_model_23_Unsquee_1NumDims] = best.coder.ops.prepareUnsqueezeArgs(x_model_23_Mod_outpu, this.Vars.UnsqueezeAxes1034, coder.const(x_model_23_Mod_outpuNumDims));
            x_model_23_Unsquee_1 = reshape(x_model_23_Mod_outpu, shape1020);

            % Gather:
            [x_model_23_Expand_1_, x_model_23_Expand_1_NumDims] = best.coder.ops.onnxGather(x_model_23_Flatten_1, x_model_23_Add_2_out, 0, coder.const(x_model_23_Flatten_1NumDims), coder.const(x_model_23_Add_2_outNumDims));

            % Cast:
            x_model_23_Cast_2_ou = single(x_model_23_Unsquee_1);
            x_model_23_Cast_2_ouNumDims = coder.const(x_model_23_Unsquee_1NumDims);

            % Tile:
            [sz1021, x_model_23_Tile_1_ouNumDims] = best.coder.ops.prepareTileArgs(this.Vars.onnx__Tile_732);
            x_model_23_Tile_1_ou = repmat(x_model_23_Expand_1_, sz1021);

            % GatherElements:
            [x_model_23_GatherEle, x_model_23_GatherEleNumDims] = best.coder.ops.onnxGatherElements(x_model_23_Split_out, x_model_23_Tile_1_ou, 1, coder.const(x_model_23_Split_outNumDims), coder.const(x_model_23_Tile_1_ouNumDims));

            % Concat:
            [output0, output0NumDims] = best.coder.ops.onnxConcat(-1, {x_model_23_GatherEle, x_model_23_Unsqueeze, x_model_23_Cast_2_ou}, [coder.const(x_model_23_GatherEleNumDims), coder.const(x_model_23_UnsqueezeNumDims), coder.const(x_model_23_Cast_2_ouNumDims)]);

            % Set graph output arguments
            output0NumDims1035 = output0NumDims;

        end

    end

end