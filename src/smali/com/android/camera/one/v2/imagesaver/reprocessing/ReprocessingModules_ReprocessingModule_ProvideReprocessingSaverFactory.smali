.class public final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;
.super Ljava/lang/Object;
.source "ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory.java"

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
.field private final featureConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final jpegOutputProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
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

.field private final outputReadExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final reprocessingImageWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final reprocessingSessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final submitExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->featureConfigProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->reprocessingSessionProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->reprocessingImageWriterProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->jpegOutputProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->submitExecutorProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->outputReadExecutorProvider:Ljavax/inject/Provider;

    .line 54
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 15
    .line 1058
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->featureConfigProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->reprocessingSessionProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->reprocessingImageWriterProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->jpegOutputProvider:Ljavax/inject/Provider;

    .line 1064
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->submitExecutorProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->outputReadExecutorProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 1059
    invoke-static/range {v0 .. v6}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules$ReprocessingConfigModule;->provideReprocessingSaver(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1058
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    .line 15
    return-object v0
.end method
