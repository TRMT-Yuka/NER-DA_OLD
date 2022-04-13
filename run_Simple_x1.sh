
export MAX_LENGTH=128
export BERT_MODEL=bert-base-uncased
# python3 token-classification-legacy/scripts/preprocess.py data_augment/SimpleDA_BI/x5/temp/train.txt $BERT_MODEL $MAX_LENGTH > data_augment/SimpleDA_BI/x5/train.txt
# python3 token-classification-legacy/scripts/preprocess.py data_augment/SimpleDA_BI/x5/temp/dev.txt $BERT_MODEL $MAX_LENGTH > data_augment/SimpleDA_BI/x5/dev.txt
# python3 token-classification-legacy/scripts/preprocess.py data_augment/SimpleDA_BI/x5/temp/test.txt $BERT_MODEL $MAX_LENGTH > data_augment/SimpleDA_BI/x5/test.txt
# cat data_augment/SimpleDA_BI/x5/train.txt data_augment/SimpleDA_BI/x5/dev.txt data_augment/SimpleDA_BI/x5/test.txt | cut -d " " -f 2 | grep -v "^$"| sort | uniq > labels.txt
export OUTPUT_DIR=model_output/SimpleDA_BI/x1
export BATCH_SIZE=32
export NUM_EPOCHS=3
export SAVE_STEPS=750
export SEED=1


python3 token-classification-legacy/run_ner_gpu0.py \
--task_type NER \
--data_dir data_original/ \
--labels labels.txt \
--model_name_or_path $BERT_MODEL \
--output_dir $OUTPUT_DIR \
--max_seq_length  $MAX_LENGTH \
--num_train_epochs $NUM_EPOCHS \
--per_gpu_train_batch_size $BATCH_SIZE \
--save_steps $SAVE_STEPS \
--seed $SEED \
--do_train \
--do_eval \
--do_predict \
--overwrite_output_dir 
