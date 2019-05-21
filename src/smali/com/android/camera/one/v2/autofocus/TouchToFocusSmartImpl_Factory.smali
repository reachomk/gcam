.class public final Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;
.super Ljava/lang/Object;
.source "TouchToFocusSmartImpl_Factory.java"

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
.field private final aeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private final afModeStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final afResetExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraCharacteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

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

.field private final meteringParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sceneChangeMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final settings3AProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/internal/zzxg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final smartAFScanCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;",
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
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/internal/zzxg$zza;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->afModeStateProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->afResetExecutorProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->cameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->cameraCommandExecutorProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->meteringParametersProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p6, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->settings3AProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->smartAFScanCommandFactoryProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p8, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->sceneChangeMonitorProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p9, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 61
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/internal/zzxg$zza;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 13
    .line 1065
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->afModeStateProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->afResetExecutorProvider:Ljavax/inject/Provider;

    .line 1067
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->cameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->cameraCommandExecutorProvider:Ljavax/inject/Provider;

    .line 1069
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v5, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->meteringParametersProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v6, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->settings3AProvider:Ljavax/inject/Provider;

    .line 1071
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzxg$zza;

    iget-object v7, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->smartAFScanCommandFactoryProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->sceneChangeMonitorProvider:Ljavax/inject/Provider;

    .line 1073
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;

    iget-object v9, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;-><init>(Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/gms/internal/zzxg$zza;Ljavax/inject/Provider;Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V

    .line 13
    return-object v0
.end method
