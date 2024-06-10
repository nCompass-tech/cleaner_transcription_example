python -m venv venv-cleaner-transcription
source venv-cleaner-transcription/bin/activate

pip install asyncio websockets wave deepgram-sdk

python cleaner_transcription.py --wav_file ./multiple_speakers.wav \
                                --deepgram_api_key <YOUR_DEEPGRAM_API_KEY>
