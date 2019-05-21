.class public final Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

.field private aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

.field private autoFocusOnPitchChange:Z

.field private final calibrator:Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

.field private cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

.field private captureStarted:Z

.field private completedSessionCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentFocusPitchDegrees:D

.field private currentPhoto:I

.field private didFocusSucceed:Z

.field private enableTouchEvents:Z

.field private fileHandlerThread:Landroid/os/HandlerThread;

.field private final focusRetrySemaphore:Ljava/util/concurrent/Semaphore;

.field private focusTrials:I

.field private final handler:Landroid/os/Handler;

.field private horizontalViewAngle:F

.field private final imageAbsoluteFilenameQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final imageFileWriteHandler:Landroid/os/Handler;

.field private lastFocusPitchDegrees:D

.field private lastPhotoUndone:Z

.field private localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

.field private final locationProvider:Lcom/android/camera/location/LocationProvider;

.field private onPhotoTakenCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private orientationWriter:Ljava/io/FileWriter;

.field private final photosTaken:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private pictureCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

.field private previewActive:Z

.field private final previewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

.field private previewDrawer:Lcom/android/camera/gl/SurfaceTextureRenderer;

.field private renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

.field private final rotationQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private shutterCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

.field private takeNewPhoto:Z

.field private takingPhoto:Z

.field private testCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

.field private final thumbnailTextureIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private unsupportedCaptureSessionCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private zoomCurrentDistance:F

.field private zoomStartingDistance:F

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "LightCycleCtrlr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Lcom/android/camera/location/LocationProvider;Lcom/google/android/apps/camera/inject/activity/ActivityServices;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takeNewPhoto:Z

    .line 107
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->focusRetrySemaphore:Ljava/util/concurrent/Semaphore;

    .line 110
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->thumbnailTextureIds:Ljava/util/Vector;

    .line 111
    iput v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    .line 112
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->orientationWriter:Ljava/io/FileWriter;

    .line 117
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takingPhoto:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->enableTouchEvents:Z

    .line 119
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    .line 121
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->captureStarted:Z

    .line 122
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->autoFocusOnPitchChange:Z

    .line 123
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->completedSessionCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 124
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->unsupportedCaptureSessionCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->rotationQueue:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->imageAbsoluteFilenameQueue:Ljava/util/List;

    .line 141
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->calibrator:Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    .line 142
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->lastPhotoUndone:Z

    .line 647
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .line 681
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->testCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 687
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->shutterCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    .line 696
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->pictureCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 209
    iput-object p8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    .line 210
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->context:Landroid/content/Context;

    .line 211
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 212
    iput-object p4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .line 213
    iput-object p5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    .line 214
    iput-object p7, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->locationProvider:Lcom/android/camera/location/LocationProvider;

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->handler:Landroid/os/Handler;

    .line 1186
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->orientationWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->fileHandlerThread:Landroid/os/HandlerThread;

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->fileHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->fileHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->imageFileWriteHandler:Landroid/os/Handler;

    .line 226
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    if-nez v0, :cond_1

    .line 228
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    const-string v1, "Error creating CameraPreview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_1
    return-void

    .line 1188
    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    const-string v2, "Could not create file writer for : "

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 232
    :cond_1
    iput-object p6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setSensorReader$51662RJ4E9NMIP1FEPKMATPF8HKN6S3CC5SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRJCLN76RRI5T9MARJJDTP54PB1CHIN4EP9AO______(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setSensorVelocityCallback$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->calibrator:Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isHammerhead()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->setRateLimit(Z)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->context:Landroid/content/Context;

    .line 252
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera:requires_focus_on_pitch_change"

    .line 251
    invoke-static {v0, v1, v4}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->autoFocusOnPitchChange:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->calibrator:Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/android/camera/gl/SurfaceTextureRenderer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewDrawer:Lcom/android/camera/gl/SurfaceTextureRenderer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->lastPhotoUndone:Z

    return v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->didFocusSucceed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->didFocusSucceed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->focusTrials:I

    return v0
.end method

.method static synthetic access$1302(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;I)I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->focusTrials:I

    return v0
.end method

.method static synthetic access$1304(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->focusTrials:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->focusTrials:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->focusRetrySemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->callTakePicture(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takingPhoto:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takingPhoto:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takeNewPhoto:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takeNewPhoto:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/inject/activity/ActivityServices;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->activityServices:Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[F)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->writeOrientationString([F)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[B)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->writePictureToFileAsync([B)V

    return-void
.end method

.method static synthetic access$2400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL1MURJKE9NMOR35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/util/Callback;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->unsupportedCaptureSessionCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    return-object v0
.end method

.method static synthetic access$2500$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL1MURJKE9NMOR35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/util/Callback;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->completedSessionCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    return-object v0
.end method

.method static synthetic access$2600$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL1MURJKE9NMOR35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/camera/util/Callback;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->onPhotoTakenCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->imageAbsoluteFilenameQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->thumbnailTextureIds:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->rotationQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    return-object v0
.end method

.method static synthetic access$3200(Ljava/io/File;)D
    .locals 2

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->readExposureFromFile(Ljava/io/File;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentFocusPitchDegrees:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;D)D
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentFocusPitchDegrees:D

    return-wide p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    return v0
.end method

.method static synthetic access$704(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->lastFocusPitchDegrees:D

    return-wide v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;D)D
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->lastFocusPitchDegrees:D

    return-wide p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->autoFocusOnPitchChange:Z

    return v0
.end method

.method private final callTakePicture(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 481
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->shutterCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->testCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->pictureCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    new-instance v1, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->locationProvider:Lcom/android/camera/location/LocationProvider;

    .line 491
    invoke-interface {v5}, Lcom/android/camera/location/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 492
    invoke-virtual {v6}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAzimuthInDeg()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;-><init>(JLjava/lang/String;Landroid/location/Location;I)V

    .line 487
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->lastPhotoUndone:Z

    .line 494
    return-void
.end method

.method private static getPinchDistance(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 769
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 770
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 771
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static readExposureFromFile(Ljava/io/File;)D
    .locals 3

    .prologue
    .line 962
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 966
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "ExposureTime"

    invoke-virtual {v1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 967
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 968
    if-eqz v2, :cond_0

    .line 970
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 977
    :cond_0
    :goto_0
    return-wide v0

    .line 972
    :catch_0
    move-exception v0

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    goto :goto_0

    .line 977
    :catch_1
    move-exception v0

    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    goto :goto_0
.end method

.method private final writeOrientationString([F)V
    .locals 6

    .prologue
    .line 604
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 605
    const/4 v1, 0x0

    .line 607
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    .line 608
    aget v3, p1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    aget v3, p1, v0

    add-float/2addr v1, v3

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->orientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->orientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_1
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private final writePictureToFileAsync([B)V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->imageFileWriteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    return-void
.end method


# virtual methods
.method public final getCameraSetupAgent()Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    return-object v0
.end method

.method public final getCurrentPhotoIndex()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    return v0
.end method

.method public final getFieldOfViewDegrees()F
    .locals 4

    .prologue
    const/16 v3, 0x28

    .line 409
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getFieldOfViewDegreesNoFallback()F

    move-result v0

    .line 410
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 411
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field of view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " degrees."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return v0

    .line 416
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->horizontalViewAngle:F

    .line 419
    const/high16 v1, 0x42960000    # 75.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 420
    const/high16 v0, 0x425c0000    # 55.0f

    .line 422
    :cond_1
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field of view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " degrees."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getFieldOfViewDegreesNoFallback()F
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use stopped controller"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->context:Landroid/content/Context;

    .line 445
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera:field_of_view_millidegrees"

    const/4 v2, -0x1

    .line 444
    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 448
    if-lez v0, :cond_1

    .line 449
    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 456
    :goto_0
    return v0

    .line 452
    :cond_1
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isDeviceSupported()Z

    .line 455
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->horizontalViewAngle:F

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getCameraFieldOfViewDegrees(F)F

    move-result v0

    goto :goto_0
.end method

.method public final getPreviewCallback()Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    return-object v0
.end method

.method public final isPreviewActive()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    return v0
.end method

.method public final isProcessingAlignment()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isProcessingImages()Z

    move-result v0

    return v0
.end method

.method public final isTakingPhoto()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takingPhoto:Z

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 775
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->enableTouchEvents:Z

    if-nez v2, :cond_0

    .line 812
    :goto_0
    return v1

    .line 780
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :cond_1
    :goto_1
    :pswitch_1
    move v1, v0

    .line 812
    goto :goto_0

    .line 787
    :pswitch_2
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getPinchDistance(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zoomStartingDistance:F

    .line 788
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zooming:Z

    goto :goto_1

    .line 794
    :pswitch_3
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zooming:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 795
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getPinchDistance(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zoomCurrentDistance:F

    .line 796
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zoomCurrentDistance:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zoomStartingDistance:F

    div-float/2addr v1, v2

    .line 797
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->pinchZoom(F)V

    goto :goto_1

    .line 803
    :pswitch_4
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zooming:Z

    .line 805
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zoomCurrentDistance:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zoomStartingDistance:F

    div-float/2addr v1, v2

    .line 806
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->endPinchZoom(F)V

    goto :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final requestPhoto([FIILjava/lang/String;)V
    .locals 3

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takingPhoto:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->imageAbsoluteFilenameQueue:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takingPhoto:Z

    .line 2503
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2599
    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 636
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->rotationQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->thumbnailTextureIds:Ljava/util/Vector;

    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->thumbnailTextureIds:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 638
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->thumbnailTextureIds:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final resetCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    .line 329
    add-int/lit8 v1, p1, -0x1

    packed-switch v1, :pswitch_data_0

    .line 346
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getFieldOfViewDegrees()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->resetForPhotoSphereCapture(Ljava/lang/String;F)V

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->resetTargets()V

    .line 350
    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->CALIBRATION$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne p1, v0, :cond_1

    .line 353
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 354
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 355
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initTargets([F)V

    .line 357
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->captureStarted:Z

    .line 358
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    .line 359
    return-void

    .line 331
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getFieldOfViewDegrees()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->resetForPhotoSphereCapture(Ljava/lang/String;F)V

    goto :goto_0

    .line 334
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getFieldOfViewDegrees()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->resetForHorizontalCapture(Ljava/lang/String;F)V

    goto :goto_0

    .line 337
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getFieldOfViewDegrees()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->resetForVerticalCapture(Ljava/lang/String;F)V

    goto :goto_0

    .line 340
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getFieldOfViewDegrees()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->resetForWideCapture(Ljava/lang/String;F)V

    goto :goto_0

    .line 343
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getFieldOfViewDegrees()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->resetForFisheyeCapture(Ljava/lang/String;F)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final resetVelocityLimit()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->calibrator:Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->reset()V

    .line 194
    return-void
.end method

.method public final resizeFrameDisplay()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 365
    invoke-static {v2, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->getFrameGeometry(II)[F

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->createFrameDisplay([FII)V

    .line 369
    return-void
.end method

.method public final setCompletedSessionCallback$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->completedSessionCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 175
    return-void
.end method

.method public final setFrameDimensions(II)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setFrameDimensions(II)V

    .line 270
    return-void
.end method

.method public final setLiveImageDisplay(Z)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setLiveImageDisplay(Z)V

    .line 163
    return-void
.end method

.method public final setOnPhotoTakenCallback$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 952
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->onPhotoTakenCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 953
    return-void
.end method

.method public final setPreviewActive()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    .line 393
    return-void
.end method

.method public final setPreviewDrawer(Lcom/android/camera/gl/SurfaceTextureRenderer;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewDrawer:Lcom/android/camera/gl/SurfaceTextureRenderer;

    .line 644
    return-void
.end method

.method public final setUnsupportedCaptureSessionCallback$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->unsupportedCaptureSessionCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 179
    return-void
.end method

.method public final setupCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRCD5JMGT33F5HMOP9FCDGMQPBIC4NL4PBJDTM7AT39DTN3MAAQ(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getFieldOfViewDegreesNoFallback()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 286
    sget p1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->CALIBRATION$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    .line 291
    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq p1, v1, :cond_2

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->CALIBRATION$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq p1, v1, :cond_2

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->FISHEYE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne p1, v1, :cond_4

    .line 297
    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getPreviewAndPictureSizes$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GR1E1GM4QBCD5Q6IPBJ7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNM6OBDCLP62BQICLPMUR3LEHKMURHR55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNM6OBDCLP62BQ3C5MMASJ1ADKNKPALEHKMOQBKF4I50SJ5EPKMATQ1DPI50QB3EHQN4PAJD5T6ASPR(Lcom/android/ex/camera2/portability/CameraCapabilities;I)Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;

    move-result-object v0

    .line 304
    :goto_1
    iget-object v0, v0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;->picture:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resetCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V

    .line 1744
    const/4 v0, 0x0

    .line 1746
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1750
    :goto_2
    if-eqz v0, :cond_3

    .line 1751
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1752
    const-string v1, "Setting version to "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1753
    :goto_3
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->setAppVersion(Ljava/lang/String;)V

    .line 316
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resizeFrameDisplay()V

    .line 318
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :cond_4
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getMaxPreviewAndPictureSizes(Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PreviewAndPictureSizes;

    move-result-object v0

    goto :goto_1

    .line 1752
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public final shutDown()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->fileHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 278
    return-void
.end method

.method public final startFirstCapture()Z
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v0, :cond_0

    .line 829
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->zooming:Z

    if-nez v0, :cond_0

    .line 833
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->captureStarted:Z

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initTargetsWithSensor()V

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->captureStarted:Z

    .line 839
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->captureStarted:Z

    return v0
.end method

.method public final declared-synchronized stopCamera()V
    .locals 2

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    if-nez v0, :cond_1

    .line 374
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    const-string v1, "camera is already stopped"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 377
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setRenderingStopped(Z)V

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->releaseCamera()V

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->writeMetadataFile(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->orientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized undoAddImage()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 902
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 934
    :goto_0
    monitor-exit p0

    return v0

    .line 906
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    .line 907
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->orientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 914
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    :goto_1
    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    if-ge v0, v3, :cond_1

    .line 918
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 921
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 923
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->orientationWriter:Ljava/io/FileWriter;

    .line 924
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->orientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->orientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 930
    :goto_2
    :try_start_3
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    if-nez v0, :cond_2

    .line 931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->captureStarted:Z

    .line 933
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->lastPhotoUndone:Z

    .line 934
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->currentPhoto:I

    goto :goto_0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    const-string v2, "undo image exception:"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateHorizontalViewAngle()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->cameraSetupAgent:Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->getReportedHorizontalFovDegrees()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->horizontalViewAngle:F

    .line 266
    return-void
.end method
