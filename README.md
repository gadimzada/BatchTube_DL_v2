# BatchTube_DL_v2
BatchTube DL v2 New Features and Key Capabilities

Multi-language Support: English, Turkish, and Azerbaijani language support was added using dynamic environment variables to avoid code duplication.

Dynamic Browser Selection: The requirement to use Chrome specifically for retrieving cookies was removed; a selection menu supporting Chrome, Edge, Firefox, Brave, and Opera was implemented.

Cookie-free Operation Mode: A "No Cookies" option was added to bypass the Windows locking error ("Could not copy cookie database") that occurs when browsers are running in the background.

Built-in Updater: An update option that directly executes the `yt-dlp.exe -U` command was added to the main menu to quickly resolve HTTP 403 Forbidden errors caused by changes to YouTube's infrastructure.

Stability and Error Handling

Dependency Checks: Startup diagnostics were incorporated into the code to verify the presence of `yt-dlp.exe` and `ffmpeg.exe` on the system or in the folder before the process begins.

Strict Process Verification: Instead of assuming a download completed successfully, an `%ERRORLEVEL%` check (success/fail) was integrated to ensure a "Success" message is displayed only when the operation has genuinely finished.

Format Flexibility and Error Prevention: The video download argument was updated to `bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best`. This prevents the script from crashing if FFmpeg is missing from the system and provides the flexibility to fall back to the best single-file MP4 format. Character Encoding: UTF-8 encoding (`chcp 65001`) was added to the beginning of the script to permanently prevent local characters (such as ş, ı, ə, x) from appearing garbled in the command line.

User Experience (UX) and Process Flow

Maximum Audio Quality: The `--audio-quality 0` parameter was added to prevent quality loss during MP3 extraction and to ensure the highest possible bitrate.

FFMPEG and FFPROBE are provided as separate links. Make sure all files are in separate folders. FFMPEG, FFPROBE, BATCH, and YT-DLP must be in the same folder. FFMPEG and FFPROBE download link: https://drive.google.com/file/d/1BpcBlu0rnJG24lvNX-RcTpGjjbV0m5ra/view?usp=sharing

Navigation and Loop Improvements: The post-process menu was enhanced to allow users to return to the Browser/Cookie Selection screen with a single keypress—eliminating the need to close and restart the script—if a cookie error occurs.

Contextual Guidance: Safety warnings advising users to fully close the selected browser to prevent cookie errors, along with instructions on steps to take if a download fails, were added to the menus.
