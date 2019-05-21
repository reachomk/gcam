.class final Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
.super Lcom/android/ex/camera2/portability/HistoryHandler;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Camera2Handler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;
    }
.end annotation


# instance fields
.field private mActiveArray:Landroid/graphics/Rect;

.field private mCamera:Landroid/hardware/camera2/CameraDevice;

.field private mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraId:Ljava/lang/String;

.field private mCameraIndex:I

.field private mCameraPreviewStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

.field private mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

.field private mCancelAfPending:I

.field private mCaptureReader:Landroid/media/ImageReader;

.field private mCurrentAeState:I

.field private mLegacyDevice:Z

.field private mOneshotAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

.field private mOneshotCaptureCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

.field private mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

.field private mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field private mPassiveAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

.field private mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

.field private mPhotoSize:Lcom/android/ex/camera2/portability/Size;

.field private mPreviewSize:Lcom/android/ex/camera2/portability/Size;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviewTexture:Landroid/graphics/SurfaceTexture;

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Landroid/os/Looper;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 217
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 218
    invoke-direct {p0, p2}, Lcom/android/ex/camera2/portability/HistoryHandler;-><init>(Landroid/os/Looper;)V

    .line 183
    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    .line 215
    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    .line 776
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 820
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraPreviewStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 851
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    .line 219
    return-void
.end method

.method static synthetic access$1000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Z)Z
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mLegacyDevice:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;I)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPassiveAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;I)I
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/media/ImageReader;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotCaptureCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotCaptureCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method private final changeState(I)V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 768
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    .line 770
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;->resetState()V

    .line 773
    :cond_0
    return-void
.end method

.method private final closePreviewSession()V
    .locals 3

    .prologue
    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 763
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Failed to close existing camera capture session"

    invoke-static {v1, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final buildSettings$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK2RJ4E9NMIP23C5MMASJ1691M2S31C9KMOQBKD5IN6EP99HHMUR9FC5N68SJFD5I2UPBO5THM2RB5E9GJ4BRGDTP78OB2D5M6IT3P5T1M2RB5E9GL6PBKEHKMSPRJ7C______()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 6

    .prologue
    .line 672
    :try_start_0
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;-><init>(Landroid/hardware/camera2/CameraDevice;ILandroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    return-object v0

    .line 675
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Unable to query camera device to build settings representation"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 676
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v4, 0x10

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 223
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/HistoryHandler;->handleMessage(Landroid/os/Message;)V

    .line 224
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage - action = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget v1, p1, Landroid/os/Message;->what:I

    .line 227
    sparse-switch v1, :sswitch_data_0

    .line 640
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unimplemented CameraProxy message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    if-eq v1, v10, :cond_1a

    :try_start_1
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_1a

    .line 646
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 647
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 660
    :cond_0
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 661
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    .line 662
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v3

    check-cast v0, Ljava/lang/RuntimeException;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v4

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :cond_1
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    .line 667
    :goto_0
    return-void

    .line 230
    :sswitch_0
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 231
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 233
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v3

    if-le v3, v9, :cond_3

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 666
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto :goto_0

    .line 239
    :cond_3
    :try_start_3
    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 240
    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    .line 241
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    .line 242
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v3, "Opening camera index %d (id %s) with camera2 API"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 666
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    throw v0

    .line 249
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, v2, v3, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 255
    :sswitch_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    if-ne v0, v9, :cond_5

    .line 256
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Ignoring release at inappropriate time"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_6

    .line 261
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->closePreviewSession()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_7

    .line 265
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 268
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    .line 271
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_8

    .line 272
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    .line 275
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 276
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_9

    .line 277
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    .line 280
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 297
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 1717
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_a

    .line 1718
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Ignoring texture setting at inappropriate time"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1723
    :cond_a
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    if-ne v0, v2, :cond_b

    .line 1724
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Optimizing out redundant preview texture setting"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1728
    :cond_b
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_c

    .line 1729
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->closePreviewSession()V

    .line 1732
    :cond_c
    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 1733
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1735
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_d

    .line 1736
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 1738
    :cond_d
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    .line 1740
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_e

    .line 1741
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 1743
    :cond_e
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v2

    const/16 v3, 0x100

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1747
    :try_start_5
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraPreviewStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, v2, v3, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1750
    :catch_1
    move-exception v0

    .line 1751
    :try_start_6
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Failed to create camera capture session"

    invoke-static {v2, v3, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 302
    :sswitch_3
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_f

    .line 305
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Refusing to start preview at inappropriate time"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 309
    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .line 310
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 312
    :try_start_7
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    invoke-virtual {v0, v2, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 316
    :catch_2
    move-exception v0

    .line 317
    :try_start_8
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Unable to start preview"

    invoke-static {v2, v3, v0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 328
    :sswitch_4
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    if-ge v0, v4, :cond_10

    .line 330
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Refusing to stop preview at inappropriate time"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 334
    :cond_10
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 335
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 372
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    .line 2692
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getRequestSettings()Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->union(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)Z

    .line 2693
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 2694
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 2696
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-lt v0, v4, :cond_11

    .line 2699
    :try_start_9
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    invoke-virtual {v0, v2, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 2703
    :catch_3
    move-exception v0

    .line 2704
    :try_start_a
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Failed to apply updated request settings"

    invoke-static {v2, v3, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2706
    :cond_11
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 2708
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 378
    :sswitch_6
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    if-lez v0, :cond_12

    .line 379
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage - Ignored AUTO_FOCUS because there was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pending CANCEL_AUTO_FOCUS messages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 391
    :cond_12
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    if-ge v0, v4, :cond_13

    .line 393
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Ignoring attempt to autofocus without preview"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 401
    :cond_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .line 402
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 442
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 443
    new-instance v0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v0, v3}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V

    .line 445
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 448
    :try_start_b
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/view/Surface;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v3, v0, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 452
    :catch_4
    move-exception v0

    .line 453
    :try_start_c
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Unable to lock autofocus"

    invoke-static {v2, v3, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 462
    :sswitch_7
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    .line 464
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    if-ge v0, v4, :cond_14

    .line 466
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Ignoring attempt to release focus lock without preview"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 471
    :cond_14
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 472
    new-instance v0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v0, v2}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V

    .line 474
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 477
    :try_start_d
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 481
    :catch_5
    move-exception v0

    .line 482
    :try_start_e
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Unable to cancel autofocus"

    invoke-static {v2, v3, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 491
    :sswitch_8
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    goto/16 :goto_1

    .line 496
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPassiveAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    goto/16 :goto_1

    .line 528
    :sswitch_a
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_15

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3108
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getRelativeImageOrientation(IZ)I

    move-result v0

    .line 528
    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 534
    :sswitch_b
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 539
    :sswitch_c
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    if-ge v0, v4, :cond_16

    .line 541
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Photos may only be taken when a preview is active"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 544
    :cond_16
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_17

    .line 546
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Taking a (likely blurry) photo without the lens locked"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 549
    :cond_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    .line 551
    iget-boolean v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mLegacyDevice:Z

    if-nez v2, :cond_18

    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    if-ne v2, v10, :cond_19

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->matches(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->matches(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 565
    :cond_18
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Skipping pre-capture autoexposure convergence"

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    invoke-virtual {v2, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 568
    :try_start_f
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x2

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/view/Surface;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 573
    :catch_6
    move-exception v0

    .line 574
    :try_start_10
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Unable to initiate immediate capture"

    invoke-static {v2, v3, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 580
    :cond_19
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Forcing pre-capture autoexposure convergence"

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)V

    .line 622
    new-instance v0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v0, v3}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V

    .line 624
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 627
    :try_start_11
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/view/Surface;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v3, v0, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_11
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_1

    .line 631
    :catch_7
    move-exception v0

    .line 632
    :try_start_12
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Unable to run autoexposure and perform capture"

    invoke-static {v2, v3, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 648
    :cond_1a
    :try_start_13
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-nez v2, :cond_0

    .line 649
    if-ne v1, v9, :cond_1c

    .line 650
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_1b

    .line 651
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    iget v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    invoke-virtual {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 666
    :cond_1b
    :goto_2
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 655
    :cond_1c
    :try_start_14
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot handle message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCamera is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_2

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0xcc -> :sswitch_5
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x12f -> :sswitch_9
        0x131 -> :sswitch_8
        0x1f6 -> :sswitch_a
        0x1f7 -> :sswitch_b
        0x259 -> :sswitch_c
    .end sparse-switch
.end method
