.class public final Lcom/android/camera/app/DaggerCameraAppComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerCameraAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private androidAppExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;

.field private appLifecycleModule:Lcom/android/camera/util/lifecycle/AppLifecycleModule;

.field private applicationModule:Lcom/google/android/apps/camera/inject/app/ApplicationModule;

.field private debugModule:Lcom/android/camera/debug/DebugModule;

.field private dirtyLensHistoryModule:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;

.field private globalMemoryTicketPoolModule:Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;

.field private gservicesModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED6MUP3LDHIJM___:Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;

.field private metricBuilderModule:Lcom/android/camera/debug/performance/MetricBuilderModule;

.field private traceModule:Lcom/android/camera/debug/trace/TraceModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 2305
    invoke-direct {p0}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/google/android/apps/camera/inject/app/ApplicationModule;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->applicationModule:Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/debug/DebugModule;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->debugModule:Lcom/android/camera/debug/DebugModule;

    return-object v0
.end method

.method static synthetic access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8HGMEPR5E91M2RB5E9GK2S3G8DNMQS3FDPIMST1489QMIR34CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1EDSMSOPF8LS6AORLEHNN4JBFCHQMOPBJ4H0MSP3IDTKM8GBGE12NGPB3ELQ6USJJ9LNM8TBCCKTG____(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/behavior/Behaviors;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->androidAppExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/debug/trace/TraceModule;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->traceModule:Lcom/android/camera/debug/trace/TraceModule;

    return-object v0
.end method

.method static synthetic access$500$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8HGMEPR5E91M2RB5E9GK2S3G8DNMQS3FDPIMST1489QMIR34CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3DTN6CQB75T3N6PBIEPKM6PBJ9LNM8TBCCKTG____(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->gservicesModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED6MUP3LDHIJM___:Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/util/lifecycle/AppLifecycleModule;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->appLifecycleModule:Lcom/android/camera/util/lifecycle/AppLifecycleModule;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/debug/performance/MetricBuilderModule;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->metricBuilderModule:Lcom/android/camera/debug/performance/MetricBuilderModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->dirtyLensHistoryModule:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->globalMemoryTicketPoolModule:Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;

    return-object v0
.end method


# virtual methods
.method public final appLifecycleModule(Lcom/android/camera/util/lifecycle/AppLifecycleModule;)Lcom/android/camera/app/DaggerCameraAppComponent$Builder;
    .locals 1

    .prologue
    .line 2412
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/lifecycle/AppLifecycleModule;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->appLifecycleModule:Lcom/android/camera/util/lifecycle/AppLifecycleModule;

    .line 2413
    return-object p0
.end method

.method public final applicationModule(Lcom/google/android/apps/camera/inject/app/ApplicationModule;)Lcom/android/camera/app/DaggerCameraAppComponent$Builder;
    .locals 1

    .prologue
    .line 2407
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->applicationModule:Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    .line 2408
    return-object p0
.end method

.method public final build$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;
    .locals 3

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->applicationModule:Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    if-nez v0, :cond_0

    .line 2328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-class v1, Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    .line 2329
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2331
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->debugModule:Lcom/android/camera/debug/DebugModule;

    if-nez v0, :cond_1

    .line 2332
    new-instance v0, Lcom/android/camera/debug/DebugModule;

    invoke-direct {v0}, Lcom/android/camera/debug/DebugModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->debugModule:Lcom/android/camera/debug/DebugModule;

    .line 2334
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->androidAppExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;

    if-nez v0, :cond_2

    .line 2335
    new-instance v0, Lcom/android/camera/behavior/Behaviors;

    invoke-direct {v0}, Lcom/android/camera/behavior/Behaviors;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->androidAppExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;

    .line 2337
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->traceModule:Lcom/android/camera/debug/trace/TraceModule;

    if-nez v0, :cond_3

    .line 2338
    new-instance v0, Lcom/android/camera/debug/trace/TraceModule;

    invoke-direct {v0}, Lcom/android/camera/debug/trace/TraceModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->traceModule:Lcom/android/camera/debug/trace/TraceModule;

    .line 2340
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->gservicesModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED6MUP3LDHIJM___:Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;

    if-nez v0, :cond_4

    .line 2341
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->gservicesModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED6MUP3LDHIJM___:Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;

    .line 2343
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->appLifecycleModule:Lcom/android/camera/util/lifecycle/AppLifecycleModule;

    if-nez v0, :cond_5

    .line 2344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-class v1, Lcom/android/camera/util/lifecycle/AppLifecycleModule;

    .line 2345
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2347
    :cond_5
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->metricBuilderModule:Lcom/android/camera/debug/performance/MetricBuilderModule;

    if-nez v0, :cond_6

    .line 2348
    new-instance v0, Lcom/android/camera/debug/performance/MetricBuilderModule;

    invoke-direct {v0}, Lcom/android/camera/debug/performance/MetricBuilderModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->metricBuilderModule:Lcom/android/camera/debug/performance/MetricBuilderModule;

    .line 2350
    :cond_6
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->dirtyLensHistoryModule:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;

    if-nez v0, :cond_7

    .line 2351
    new-instance v0, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;

    invoke-direct {v0}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->dirtyLensHistoryModule:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;

    .line 2353
    :cond_7
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->globalMemoryTicketPoolModule:Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;

    if-nez v0, :cond_8

    .line 2354
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->globalMemoryTicketPoolModule:Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;

    .line 2356
    :cond_8
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/app/DaggerCameraAppComponent;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$Builder;B)V

    return-object v0
.end method
