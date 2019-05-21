.class public Lcom/android/camera/stats/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# static fields
.field private static INSTANCE:Lcom/android/camera/stats/Instrumentation;


# instance fields
.field private final burstStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/BurstSession;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraActivitySession;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraCaptureSessionStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraChangeStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraChangeSession;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraDeviceStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraDeviceInstrumentationSession;",
            ">;"
        }
    .end annotation
.end field

.field private final jankStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/ViewfinderJankSession;",
            ">;"
        }
    .end annotation
.end field

.field private final modeSwitchStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/ModeSwitchSession;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/OneCameraSession;",
            ">;"
        }
    .end annotation
.end field

.field private final viewfinderStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/ViewfinderSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraActivitySession;",
            ">;",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraDeviceInstrumentationSession;",
            ">;",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;",
            ">;",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraChangeSession;",
            ">;",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/ModeSwitchSession;",
            ">;",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/ViewfinderJankSession;",
            ">;",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/ViewfinderSession;",
            ">;",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/OneCameraSession;",
            ">;",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/BurstSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p8}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/android/camera/stats/Instrumentation;->cameraActivityStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 66
    iput-object p2, p0, Lcom/android/camera/stats/Instrumentation;->cameraDeviceStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 67
    iput-object p3, p0, Lcom/android/camera/stats/Instrumentation;->cameraCaptureSessionStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 68
    iput-object p4, p0, Lcom/android/camera/stats/Instrumentation;->cameraChangeStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 70
    iput-object p5, p0, Lcom/android/camera/stats/Instrumentation;->modeSwitchStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 71
    iput-object p6, p0, Lcom/android/camera/stats/Instrumentation;->jankStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 72
    iput-object p7, p0, Lcom/android/camera/stats/Instrumentation;->viewfinderStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 73
    iput-object p8, p0, Lcom/android/camera/stats/Instrumentation;->oneCameraStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 74
    iput-object p9, p0, Lcom/android/camera/stats/Instrumentation;->burstStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 75
    return-void
.end method

.method public static instance()Lcom/android/camera/stats/Instrumentation;
    .locals 11

    .prologue
    .line 16
    sget-object v0, Lcom/android/camera/stats/Instrumentation;->INSTANCE:Lcom/android/camera/stats/Instrumentation;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/android/camera/stats/Instrumentation;

    new-instance v1, Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 19
    invoke-static {}, Lcom/android/camera/stats/CameraActivitySession;->provider()Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/stats/InstrumentationSessionRecorder;-><init>(Ljavax/inject/Provider;)V

    new-instance v2, Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 20
    invoke-static {}, Lcom/android/camera/stats/CameraDeviceInstrumentationSession;->provider()Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/stats/InstrumentationSessionRecorder;-><init>(Ljavax/inject/Provider;)V

    new-instance v3, Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 22
    invoke-static {}, Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;->provider()Ljavax/inject/Provider;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/stats/InstrumentationSessionRecorder;-><init>(Ljavax/inject/Provider;)V

    new-instance v4, Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 23
    invoke-static {}, Lcom/android/camera/stats/CameraChangeSession;->provider()Ljavax/inject/Provider;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/stats/InstrumentationSessionRecorder;-><init>(Ljavax/inject/Provider;)V

    new-instance v5, Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 24
    invoke-static {}, Lcom/android/camera/stats/ModeSwitchSession;->provider()Ljavax/inject/Provider;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/stats/InstrumentationSessionRecorder;-><init>(Ljavax/inject/Provider;)V

    new-instance v6, Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 25
    invoke-static {}, Lcom/android/camera/stats/ViewfinderJankSession;->provider()Ljavax/inject/Provider;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/camera/stats/InstrumentationSessionRecorder;-><init>(Ljavax/inject/Provider;)V

    new-instance v7, Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 26
    invoke-static {}, Lcom/android/camera/stats/ViewfinderSession;->provider()Ljavax/inject/Provider;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/camera/stats/InstrumentationSessionRecorder;-><init>(Ljavax/inject/Provider;)V

    new-instance v8, Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 27
    invoke-static {}, Lcom/android/camera/stats/OneCameraSession;->provider()Ljavax/inject/Provider;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/camera/stats/InstrumentationSessionRecorder;-><init>(Ljavax/inject/Provider;)V

    new-instance v9, Lcom/android/camera/stats/InstrumentationSessionRecorder;

    .line 28
    invoke-static {}, Lcom/android/camera/stats/BurstSession;->provider()Ljavax/inject/Provider;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/camera/stats/InstrumentationSessionRecorder;-><init>(Ljavax/inject/Provider;)V

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/stats/Instrumentation;-><init>(Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;Lcom/android/camera/stats/InstrumentationSessionRecorder;)V

    sput-object v0, Lcom/android/camera/stats/Instrumentation;->INSTANCE:Lcom/android/camera/stats/Instrumentation;

    .line 30
    :cond_0
    sget-object v0, Lcom/android/camera/stats/Instrumentation;->INSTANCE:Lcom/android/camera/stats/Instrumentation;

    return-object v0
.end method


# virtual methods
.method public burstStats()Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/BurstSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/stats/Instrumentation;->burstStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    return-object v0
.end method

.method public cameraActivity()Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraActivitySession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/stats/Instrumentation;->cameraActivityStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    return-object v0
.end method

.method public cameraChange()Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraChangeSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/stats/Instrumentation;->cameraChangeStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    return-object v0
.end method

.method public cameraDevice()Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraDeviceInstrumentationSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/stats/Instrumentation;->cameraDeviceStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    return-object v0
.end method

.method public captureSession()Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/CameraCaptureSessionInstrumentationSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/stats/Instrumentation;->cameraCaptureSessionStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    return-object v0
.end method

.method public jankStats()Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/ViewfinderJankSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/stats/Instrumentation;->jankStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    return-object v0
.end method

.method public modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/ModeSwitchSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/stats/Instrumentation;->modeSwitchStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    return-object v0
.end method

.method public oneCamera()Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/OneCameraSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/stats/Instrumentation;->oneCameraStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    return-object v0
.end method

.method public viewfinder()Lcom/android/camera/stats/InstrumentationSessionRecorder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/stats/InstrumentationSessionRecorder",
            "<",
            "Lcom/android/camera/stats/ViewfinderSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/stats/Instrumentation;->viewfinderStats:Lcom/android/camera/stats/InstrumentationSessionRecorder;

    return-object v0
.end method
