# JewelFX Studio — Real-Time Virtual Jewellery Try-On

A browser-based Image and Video Processing project for a B.Tech demonstration. It uses a webcam, MediaPipe Face Landmarker, and HTML Canvas to overlay stylised jewellery in real time. No training dataset is required.

## Features
- Live webcam face tracking
- Jhumka earrings, necklace, nose ring and maang tikka overlays
- Gold, silver and rose-gold finishes
- Jewellery toggles, size and tracking-smoothing controls
- Photo capture (PNG) and video recording (WebM, browser support permitting)
- FPS and per-frame processing-time indicators
- Client-side processing; camera frames are not uploaded by this app

## Requirements
- Windows 10/11, macOS, or Linux
- Modern Chrome or Edge recommended
- Internet connection on first run to download MediaPipe's runtime and model
- Webcam and permission to use it

## Quick start on Windows
1. Extract `JewelFX_Studio.zip` to a folder, for example `C:\\Users\\YourName\\Desktop\\JewelFX_Studio`.
2. Install Node.js LTS from https://nodejs.org/ if you don't already have it.
3. Open the extracted folder in VS Code.
4. Open Terminal > New Terminal and run:
   ```powershell
   npx serve .
   ```
   If prompted to install `serve`, approve it. Alternatively use `python -m http.server 8000` if Python is installed.
5. Open the local URL printed in the terminal (for Python, visit `http://localhost:8000`).
6. Click **Start camera** and allow camera permission.

Do not simply double-click `index.html`: browsers often block camera/model features on `file://` URLs. Use `localhost` or HTTPS.

## No-Node alternative
If Python is installed, from this folder run:
```powershell
py -m http.server 8000
```
Then open `http://localhost:8000`.

## Project structure
- `index.html` — interface and controls
- `styles.css` — responsive styling
- `app.js` — camera access, MediaPipe face landmarks, canvas jewellery drawing, capture and recording

## Image/video processing concepts for viva
1. Video acquisition using `navigator.mediaDevices.getUserMedia`.
2. Landmark-based geometric anchoring of virtual accessories.
3. Temporal smoothing to reduce overlay jitter.
4. Canvas drawing and alpha compositing.
5. Real-time performance measurements (FPS and render time).

## Limitations
- This is a visual AR prototype, not a jewellery defect detector or a photorealistic 3D try-on system.
- The necklace uses a simple face-width/chin-based approximation; it is not actual neck segmentation.
- The earrings and nose ring are stylised vector overlays, not physically accurate 3D models.
- Face tracking needs internet access on first launch because the runtime and model are loaded from public CDNs.
- Browser recording support varies. The app exports WebM when supported.
- Test on the target laptop before presenting. Different cameras and lighting can affect tracking quality.

## Privacy
The app requests camera access and processes frames in the browser. The MediaPipe runtime/model are downloaded from external hosting. The app itself does not send camera frames to a server.
