.class public Lcom/android/camera/burst/BurstFacadeStub;
.super Ljava/lang/Object;
.source "BurstFacadeStub.java"

# interfaces
.implements Lcom/android/camera/burst/BurstFacade;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideBurstCaptureCommandFactory$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UORFE9IIUHJIC5MMAKR5E9R6ASHR9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F9HKN6T35DPGM4R358PQN8TBICKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F8PP62RB59LGMSOB7CLP28HJIC5MMAGBCDHNM6OBKDTP3MJ3AC5R62BRCC5N6EBQIELN6SOB2DHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BQ2ELP76T26C5HM2P357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6AOJLCSNN8SJ1CDIIUL3IC5HMAEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH1M2S3KELP6AGRFDLMM2RJ48PGM6T3FE9SJM___(Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Ljava/lang/Runnable;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/debug/trace/Trace;)Lcom/android/camera/data/FilmstripDataModule;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/burst/BurstFacade;",
            "Lcom/android/camera/debug/trace/Trace;",
            ")",
            "Lcom/android/camera/data/FilmstripDataModule;"
        }
    .end annotation

    .prologue
    .line 1066
    new-instance v0, Lcom/android/camera/data/FilmstripDataModule;

    .line 1071
    invoke-interface {p5}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v7, 0x8

    const/16 v8, 0xe

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/data/FilmstripDataModule;-><init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Landroid/view/Surface;Ljava/lang/Runnable;IILcom/android/camera/debug/trace/Trace;)V

    .line 1066
    return-object v0
.end method

.method public static provideBurstDeregistrationShutdownTask$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMOQB6CLHNIORCCKNL6Q3LEHI6UTREAHGN6QPR(Lcom/android/camera/burst/BurstFacade;)Lcom/android/camera/behavior/Behavior;
    .locals 1

    .prologue
    .line 1136
    new-instance v0, Lcom/android/camera/burst/BurstModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/burst/BurstModule$2;-><init>(Lcom/android/camera/burst/BurstFacade;)V

    return-object v0
.end method

.method public static provideBurstProcessingParameters$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UORFDLMM2RJ45T1M2RB5E9GK6RRDDLGMSP25F1IM6TBKDTP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BQ2ELP76T23C5O78TBICL1MURBDC5N68HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BR2ELP76T1F95MM2PR589GM6QR5DPI44OBJCLI44TBIEDQ50SJFCDIN6SRFE8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM4TBIEDQ2UHJIC5MMAKR1EPIN4HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TIN4SJFE8NKCOBKC5M4ASJIDTP4GOBECHM6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR(Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/data/FilmstripDataModule;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Lcom/android/camera/memory/MemoryModule;Lcom/android/camera/error/FatalErrorHandler;)Lcom/android/camera/hdrplus/HdrPlusModule;
    .locals 6

    .prologue
    .line 1130
    new-instance v0, Lcom/android/camera/hdrplus/HdrPlusModule;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/hdrplus/HdrPlusModule;-><init>(Lcom/android/camera/data/FilmstripDataModule;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/memory/MemoryModule;Lcom/android/camera/error/FatalErrorHandler;)V

    return-object v0
.end method

.method public static provideBurstRegistrationStartTask$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR2ELP76T1F89QN4SRK8PGM6OB4CKI44TBIEDQ50SJFCDIN6SR9DPJL0OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TM6IPJ5CDSM6R355T9N8OBIEHA62SRB7C______(Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/hdrplus/HdrPlusModule;)Lcom/android/camera/one/v2/lifecycle/StartTask;
    .locals 1

    .prologue
    .line 1114
    new-instance v0, Lcom/android/camera/burst/BurstModule$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/burst/BurstModule$1;-><init>(Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/hdrplus/HdrPlusModule;)V

    invoke-static {v0}, Lcom/android/camera/one/v2/lifecycle/StartTasks;->forRunnable(Ljava/lang/Runnable;)Lcom/android/camera/one/v2/lifecycle/StartTask;

    move-result-object v0

    return-object v0
.end method

.method public static provideCaptureSessionSurface$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUJRECL1M2RB5E9GK6Q31E9GM6T35E9KN6T39CDPJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUORFDPJ6IPPF8TPMASJMD5HMASQ8CLM70PBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UTBKD5M2UK39CDQ7ASJ58DNMSPJ9CTQN4OBKD5NMSEP99HL62TJ15TQN8QBC5T9MAT1R(Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/one/v2/util/PictureConfiguration;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/BurstFacade;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1085
    invoke-virtual {p2}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isSmartBurstEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    const/16 v0, 0x23

    .line 1087
    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v0

    .line 1088
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-interface {p0, v1, v0, p3}, Lcom/android/camera/burst/BurstFacade;->initialize(Landroid/graphics/SurfaceTexture;Ljava/util/List;Lcom/android/camera/one/v2/util/PictureConfiguration;)V

    .line 1089
    invoke-interface {p0}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    invoke-interface {p0}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1093
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static provideFrameSaverFactory$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQJD5N6ER3595MM2PR5ADGNCPBI7D66KOBMC4NNAT39DGNK6RRCDHIM6T39DTN3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR2ELP76T1F8PP62RB5ADGNCPBI8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;)Lcom/android/camera/memory/MemoryModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;)",
            "Lcom/android/camera/memory/MemoryModule;"
        }
    .end annotation

    .prologue
    .line 1108
    new-instance v0, Lcom/android/camera/memory/MemoryModule;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/memory/MemoryModule;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static provideReprocessingParameters()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1099
    new-instance v0, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1100
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1099
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public final initialize(Landroid/graphics/SurfaceTexture;Ljava/util/List;Lcom/android/camera/one/v2/util/PictureConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/SurfaceTexture;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 51
    :cond_0
    return-void
.end method

.method public final isIdle()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final setBurstProcessingParameters$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR55B0____(Lcom/android/camera/hdrplus/HdrPlusModule;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public final startBurst$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A92JDTQN4OR57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMS92JEHGM6QR1C9M6AGR1E1Q7ASJ5ADIN6SR9DTN46SJ5C5Q6USHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTKIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BQ2ELP76T2CD5R6AK3ICLR6IPBN8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5AIA3DTN78SJFDHM6ASHR55666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/burst/BurstFacade$Source;Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/BurstFacade$Source;",
            "Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "I",
            "Lcom/android/camera/burst/BurstLivePreviewController;",
            "Lcom/android/camera/hdrplus/HdrPlusSessionModule;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final stopBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/BurstFacade$Source;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
