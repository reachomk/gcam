.class final Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AndroidCamera2ProxyImpl"
.end annotation


# instance fields
.field private final mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

.field private final mCameraIndex:I

.field private final mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

.field private final mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

.field private mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private mShutterSoundEnabled:Z

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;ILandroid/hardware/camera2/CameraDevice;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;-><init>()V

    .line 990
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 991
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraIndex:I

    .line 993
    iput-object p5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 994
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    invoke-direct {v0, p6}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    .line 995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mShutterSoundEnabled:Z

    .line 997
    return-void
.end method

.method static synthetic access$2600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;)Z
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mShutterSoundEnabled:Z

    return v0
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 0

    .prologue
    .line 1060
    return-void
.end method

.method public final applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1217
    if-nez p1, :cond_1

    .line 1218
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "null parameters in applySettings()"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1231
    :cond_0
    :goto_0
    return v0

    .line 1221
    :cond_1
    instance-of v1, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    if-nez v1, :cond_2

    .line 1222
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Provided settings not compatible with the backing framework API"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :cond_2
    const/4 v1, -0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->applySettingsHelper(Lcom/android/ex/camera2/portability/CameraSettings;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1228
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1229
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
    .locals 2

    .prologue
    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public final enableShutterSound(Z)V
    .locals 0

    .prologue
    .line 1236
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mShutterSoundEnabled:Z

    .line 1237
    return-void
.end method

.method public final getAgent()Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    return-object v0
.end method

.method public final getCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final getCameraId()I
    .locals 1

    .prologue
    .line 1005
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraIndex:I

    return v0
.end method

.method public final getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    return-object v0
.end method

.method public final getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    return-object v0
.end method

.method public final getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object v0
.end method

.method public final getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    return-object v0
.end method

.method public final getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 1205
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSettings()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->buildSettings$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK2RJ4E9NMIP23C5MMASJ1691M2S31C9KMOQBKD5IN6EP99HHMUR9FC5N68SJFD5I2UPBO5THM2RB5E9GJ4BRGDTP78OB2D5M6IT3P5T1M2RB5E9GL6PBKEHKMSPRJ7C______()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object v0
.end method

.method public final setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1099
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public final setPreviewDataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method public final setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 0

    .prologue
    .line 1057
    return-void
.end method

.method public final setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 2166
    iput-boolean v1, v0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    .line 1033
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1034
    return-void
.end method

.method public final setPreviewTextureSync(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 3166
    iput-boolean v1, v0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    .line 1043
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1044
    return-void
.end method

.method public final takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
    .locals 3

    .prologue
    .line 1134
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    invoke-direct {v0, p0, p2, p1, p5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :goto_0
    return-void

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
