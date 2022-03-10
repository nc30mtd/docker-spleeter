from spleeter.separator import Separator

input_audio = ''

separator_2stem = Separator('spleeter:2stems')
separator_2stem.separate_to_file(input_audio, "./output/2stems")