.class public final Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;
.super Ljava/lang/Object;
.source "BurstModule_ProvideBurstCaptureCommandFactoryFactory.java"

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
.field private final burstFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final flashSettingObservableProvider:Ljavax/inject/Provider;
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

.field private final previewUpdaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final requestTemplateProvider:Ljavax/inject/Provider;
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
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacade;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->frameServerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p2, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->requestTemplateProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->flashSettingObservableProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->frameAllocatorProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p5, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->previewUpdaterProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->burstFacadeProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->traceProvider:Ljavax/inject/Provider;

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
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacade;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 15
    .line 1058
    iget-object v0, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->frameServerProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v1, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->requestTemplateProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->flashSettingObservableProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/Observable;

    iget-object v3, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->frameAllocatorProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    iget-object v4, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->previewUpdaterProvider:Ljavax/inject/Provider;

    .line 1064
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->burstFacadeProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/burst/BurstFacade;

    iget-object v6, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->traceProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/debug/trace/Trace;

    .line 1059
    invoke-static/range {v0 .. v6}, Lcom/android/camera/burst/BurstFacadeStub;->provideBurstCaptureCommandFactory$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UORFE9IIUHJIC5MMAKR5E9R6ASHR9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F9HKN6T35DPGM4R358PQN8TBICKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F8PP62RB59LGMSOB7CLP28HJIC5MMAGBCDHNM6OBKDTP3MJ3AC5R62BRCC5N6EBQIELN6SOB2DHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BQ2ELP76T26C5HM2P357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6AOJLCSNN8SJ1CDIIUL3IC5HMAEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH1M2S3KELP6AGRFDLMM2RJ48PGM6T3FE9SJM___(Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Ljava/lang/Runnable;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/debug/trace/Trace;)Lcom/android/camera/data/FilmstripDataModule;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1058
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripDataModule;

    .line 15
    return-object v0
.end method
