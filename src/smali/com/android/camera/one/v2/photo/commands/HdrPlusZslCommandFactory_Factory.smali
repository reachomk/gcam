.class public final Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;
.super Ljava/lang/Object;
.source "HdrPlusZslCommandFactory_Factory.java"

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
.field private final captureThresholdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Ints;",
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

.field private final frameAllocatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
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

.field private final hdrPlusSessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final logFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCharacteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
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


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Ints;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->frameAllocatorProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->captureThresholdProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->oneCharacteristicsProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->hdrPlusSessionProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->flashModeProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    .line 65
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Ints;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 17
    .line 1069
    new-instance v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/Logger$Factory;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1071
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/trace/Trace;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1072
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->frameAllocatorProvider:Ljavax/inject/Provider;

    .line 1073
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    iget-object v5, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->captureThresholdProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/primitives/Ints;

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->oneCharacteristicsProvider:Ljavax/inject/Provider;

    .line 1075
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v7, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->hdrPlusSessionProvider:Ljavax/inject/Provider;

    .line 1076
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/hdrplus/HdrPlusSession;

    iget-object v8, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->flashModeProvider:Ljavax/inject/Provider;

    .line 1077
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/camera/async/Observable;

    iget-object v9, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory_Factory;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    .line 1078
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/stats/GcamUsageStatistics;

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/google/common/primitives/Ints;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusSession;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/stats/GcamUsageStatistics;)V

    .line 17
    return-object v0
.end method
