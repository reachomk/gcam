.class public final Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;
.super Ljava/lang/Object;
.source "SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory.java"

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

.field private final flashSettingProvider:Ljavax/inject/Provider;
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

.field private final halRecommendsFlashProvider:Ljavax/inject/Provider;
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

.field private final hdrPlusSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
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
            "Lcom/android/camera/one/OneCameraCharacteristics;",
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
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->flashSettingProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->halRecommendsFlashProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->hdrPlusAvailabilityProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 52
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
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
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 12
    .line 1056
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 1058
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->flashSettingProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/async/Observable;

    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/async/Observable;

    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->halRecommendsFlashProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/async/Observable;

    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->hdrPlusAvailabilityProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/async/Observable;

    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;

    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1064
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 1236
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusSimpleMeteringProcessor;

    .line 1237
    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v1

    const/4 v2, 0x1

    .line 1243
    invoke-virtual {v7}, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->getBrightnessObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v7

    .line 1244
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getEvCompProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusSimpleMeteringProcessor;-><init>(ZZLcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)V

    .line 1057
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1056
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 12
    return-object v0
.end method
