.class final Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent;
.source "AndroidCameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static final sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;


# instance fields
.field private final mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

.field private final mCameraHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

.field private mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

.field private mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

.field private final mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

.field private mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamAgntImp"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 59
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent;-><init>()V

    .line 78
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    .line 82
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    .line 84
    new-instance v0, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 85
    new-instance v0, Lcom/android/ex/camera2/portability/CameraStateHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;-><init>(B)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    .line 86
    new-instance v0, Lcom/android/ex/camera2/portability/DispatchThread;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    .line 87
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/DispatchThread;->start()V

    .line 88
    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method


# virtual methods
.method public final getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method protected final getCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    return-object v0
.end method

.method protected final getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method protected final getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method

.method public final recycle()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->closeCamera$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78923C5MMASJ1A1P6UU3P7DD2ILG_(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/DispatchThread;->end()V

    .line 94
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->invalidate()V

    .line 95
    return-void
.end method

.method public final setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 0

    .prologue
    .line 125
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 126
    return-void

    .line 125
    :cond_0
    sget-object p1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    goto :goto_0
.end method
