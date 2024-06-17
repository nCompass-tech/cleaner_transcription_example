DG_API_KEY=<YOUR_DEEPGRAM_API_KEY>
NC_API_KEY=<YOUR_NCOMPASS_API_KEY>

IN_FILE_TYPE=pcm # wav files are type pcm, if not mp3
OUT_FILE_TYPE=pcm # wav files are type pcm, if not mp3
CHUNK_SIZE_MS=10000 # chunk size for denoising, max is 10000ms can be as low as 70ms if on-prem
OUT_FRAME_RATE=8000 # out frame rate is the sampling freq of the returned deonised audio

INPUT_FILE=./multiple_speakers.wav # input file

python cleaner_transcription.py --wav_file         ${INPUT_FILE} \
                                --deepgram_api_key ${DG_API_KEY} \
                                --ncompass_api_key ${NC_API_KEY} \
                                --in_file_type     ${IN_FILE_TYPE} \
                                --out_file_type    ${OUT_FILE_TYPE} \
                                --chunk_size_ms    ${CHUNK_SIZE_MS} \
                                --out_frame_rate   ${OUT_FRAME_RATE}
