.class public final Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;
.super Ljava/lang/Object;
.source "HdrPlusImageCaptureCommand_Factory.java"

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
.field private final characteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
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

.field private final convergence3AProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/Convergence3A;",
            ">;"
        }
    .end annotation
.end field

.field private final flashModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;>;"
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

.field private final gcamUsageStatisticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private final gcamWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusAvailabilityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final hdrPlusBurstTakerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryManager;",
            ">;"
        }
    .end annotation
.end field

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

.field private final smartMeteringControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;",
            ">;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final viewfinderMetadataSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;",
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
            "Lcom/android/camera/one/v2/autofocus/Convergence3A;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->rawImageReaderProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->smartMeteringControllerProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->frameServerProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->commonRequestTemplateProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->convergence3AProvider:Ljavax/inject/Provider;

    .line 88
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->gcamWrapperProvider:Ljavax/inject/Provider;

    .line 90
    iput-object p10, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->hdrPlusBurstTakerProvider:Ljavax/inject/Provider;

    .line 92
    iput-object p11, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->memoryManagerProvider:Ljavax/inject/Provider;

    .line 94
    iput-object p12, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->viewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    .line 96
    iput-object p13, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->flashModeProvider:Ljavax/inject/Provider;

    .line 98
    iput-object p14, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->hdrPlusAvailabilityProvider:Ljavax/inject/Provider;

    .line 100
    iput-object p15, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    .line 101
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;",
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
            "Lcom/android/camera/one/v2/autofocus/Convergence3A;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 17

    .prologue
    .line 22
    .line 1105
    new-instance v1, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1106
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 1107
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/debug/Logger$Factory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 1108
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->rawImageReaderProvider:Ljavax/inject/Provider;

    .line 1109
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->smartMeteringControllerProvider:Ljavax/inject/Provider;

    .line 1110
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->frameServerProvider:Ljavax/inject/Provider;

    .line 1111
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/one/v2/core/FrameServer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->commonRequestTemplateProvider:Ljavax/inject/Provider;

    .line 1112
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/util/concurrent/ListenableFuture;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->convergence3AProvider:Ljavax/inject/Provider;

    .line 1113
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/one/v2/autofocus/Convergence3A;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->gcamWrapperProvider:Ljavax/inject/Provider;

    .line 1114
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/hdrplus/HdrPlusSession;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->hdrPlusBurstTakerProvider:Ljavax/inject/Provider;

    .line 1115
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->memoryManagerProvider:Ljavax/inject/Provider;

    .line 1116
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/memory/MemoryManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->viewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    .line 1117
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->flashModeProvider:Ljavax/inject/Provider;

    .line 1118
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->hdrPlusAvailabilityProvider:Ljavax/inject/Provider;

    .line 1119
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 1120
    invoke-interface/range {v16 .. v16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/stats/GcamUsageStatistics;

    invoke-direct/range {v1 .. v16}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;-><init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/autofocus/Convergence3A;Lcom/android/camera/hdrplus/HdrPlusSession;Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/stats/GcamUsageStatistics;)V

    .line 22
    return-object v1
.end method
