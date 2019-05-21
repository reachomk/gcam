.class public final Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;
.super Ljava/lang/Object;
.source "TouchToFocusImpl_Factory.java"

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

.field private final afModeProvider:Ljavax/inject/Provider;
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

.field private final afScanCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

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

.field private final commandExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final evScrollingStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
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


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
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
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
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
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->cameraLifetimeProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->meteringParametersProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->settings3AProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->afScanCommandFactoryProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p6, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->commandExecutorProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p7, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->afModeProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p8, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->afResetExecutorProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p9, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p10, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->evScrollingStateProvider:Ljavax/inject/Provider;

    .line 68
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
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
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
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
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 15
    .line 1072
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->cameraLifetimeProvider:Ljavax/inject/Provider;

    .line 1073
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->meteringParametersProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 1075
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->settings3AProvider:Ljavax/inject/Provider;

    .line 1076
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzxg$zza;

    iget-object v5, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->afScanCommandFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->commandExecutorProvider:Ljavax/inject/Provider;

    .line 1078
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v7, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->afModeProvider:Ljavax/inject/Provider;

    .line 1079
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v8, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->afResetExecutorProvider:Ljavax/inject/Provider;

    .line 1080
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    iget-object v9, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1081
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    iget-object v10, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->evScrollingStateProvider:Ljavax/inject/Provider;

    .line 1082
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/async/Observable;

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;-><init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/gms/internal/zzxg$zza;Ljavax/inject/Provider;Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;)V

    .line 15
    return-object v0
.end method
