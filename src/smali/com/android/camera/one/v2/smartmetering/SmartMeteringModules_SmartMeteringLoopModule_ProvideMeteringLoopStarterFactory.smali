.class public final Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;
.super Ljava/lang/Object;
.source "SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final cameraCommandExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final captureResultFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;",
            ">;"
        }
    .end annotation
.end field

.field private final commonRequestTemplateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock;",
            ">;"
        }
    .end annotation
.end field

.field private final frameServerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;"
        }
    .end annotation
.end field

.field private final logCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

.field private final rawImageReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->module:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    .line 46
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->rawImageReaderProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->frameServerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->commonRequestTemplateProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->captureResultFilterProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p6, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->frameClockProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->logCreatorProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p8, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->cameraCommandExecutorProvider:Ljavax/inject/Provider;

    .line 59
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;-><init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 15
    .line 1063
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->module:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->rawImageReaderProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->frameServerProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->commonRequestTemplateProvider:Ljavax/inject/Provider;

    .line 1067
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->captureResultFilterProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    iget-object v5, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->frameClockProvider:Ljavax/inject/Provider;

    .line 1069
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/common/FrameClock;

    iget-object v6, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->logCreatorProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/debug/Logger$Factory;

    iget-object v7, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->cameraCommandExecutorProvider:Ljavax/inject/Provider;

    .line 1071
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    .line 1064
    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;->provideMeteringLoopStarter$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR9DLGMEPBICLGM8PBI5T6M2RJ1CTIM8IBDC5JMAKJ5C5I6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM6RRICKNKCSJ1DLIL6PBIEPIN4EQCCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNK6OBGEHQN4PAICLPNAR3K8PKMOT35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR3DTMMQRRE5T374OBDCL1MORR3DCTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8PB2ELJIUJ3FCTJMASH48PGM6T3FE9SJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMQRB1DPI2UGR1DLIN4OA3DTMMQOBECH2NGPB3ELQ6USHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79HNMUS2JEHGN4T35E8TG____(Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;Lcom/android/camera/one/v2/common/FrameClock;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1063
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    .line 15
    return-object v0
.end method
