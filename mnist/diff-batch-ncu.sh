$batch_set="16 32 64 128 256"
for $batch in ${batch_set} 
do
    (ncu --profile-from-start off \
         --metrics smsp__sass_thread_inst_executed_op_fadd_pred_on, \
         smsp__sass_thread_inst_executed_op_fmul_pred_on, \
         smsp__sass_thread_inst_executed_op_ffma_pred_on --target-processes all \
         python3 main_ncu.py --dry-run --batch-size $batch --epochs 2 2>&1 | tee ../log/$batch.out)
done