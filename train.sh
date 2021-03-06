export BERT_BASE_DIR=../bert/chinese_L-12_H-768_A-12
export DATA_BASE_DIR=../data/20191029
python bert_cls.py \
  --data_dir=$DATA_BASE_DIR \
  --task_name=simiq \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --train_batch_size=32 \
  --max_seq_length=50 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0 \
  --output_dir=./output_dir \
  --user_tpu=False \
  --do_train=true \
  --do_predict=true
