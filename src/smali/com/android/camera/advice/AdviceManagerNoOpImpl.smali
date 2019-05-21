.class public Lcom/android/camera/advice/AdviceManagerNoOpImpl;
.super Ljava/lang/Object;
.source "AdviceManagerNoOpImpl.java"

# interfaces
.implements Lcom/android/camera/advice/AdviceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideAdviceManager(Ljavax/inject/Provider;Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/advice/AdviceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/DirtyLensPlugin;",
            ">;",
            "Lcom/android/camera/util/flags/Flags;",
            ")",
            "Lcom/android/camera/advice/AdviceManager;"
        }
    .end annotation

    .prologue
    .line 1066
    new-instance v0, Lcom/android/camera/advice/AdviceManagerNoOpImpl;

    invoke-direct {v0}, Lcom/android/camera/advice/AdviceManagerNoOpImpl;-><init>()V

    return-object v0
.end method

.method public static provideImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IK6RRDDLGMSP1R(Lcom/google/common/primitives/Floats;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 0

    .prologue
    .line 1351
    return-object p0
.end method

.method public static provideImageCaptureStateTracker$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IL6T31EHIL8SJ1CDLMASHR(Lcom/google/common/primitives/Floats;)Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;
    .locals 0

    .prologue
    .line 1358
    return-object p0
.end method

.method public static provideStateTrackingImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK4GP3IA1M7ASQ9DLGMEPA3C5O78TBICL1MURBDC5N68HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKR9DPJMOPA6DHGN6Q23DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T9MIRJ7DHIKSRQ6DHGN6Q23DTMMQOBECH362ORKDTP7IEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUORFDLMM2RJ4ECNL6T31EHIL8SJ1CDLMIRJ795MM2PR58DGN0T3LE9IK6RRDDLGMSP1R(Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;)Lcom/google/common/primitives/Floats;
    .locals 3

    .prologue
    .line 1367
    new-instance v0, Lcom/google/common/primitives/Floats;

    .line 1368
    invoke-virtual {p1}, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;->create()Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v1

    .line 2072
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->noOp()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->create(Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v2

    .line 1368
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;->create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/Floats;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    .line 1367
    return-object v0
.end method


# virtual methods
.method public final getCurrentSamplingFrequency()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public final hasActivePreviewAdvice()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public final onCameraChanged(Lcom/google/android/apps/camera/device/CameraId;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public final onFrameCapture(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public final onFramePreview(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public final setUiController(Lcom/google/android/apps/camera/advice/AdviceUiController;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
