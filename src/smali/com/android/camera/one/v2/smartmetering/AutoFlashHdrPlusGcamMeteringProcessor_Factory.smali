.class public final Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;
.super Ljava/lang/Object;
.source "AutoFlashHdrPlusGcamMeteringProcessor_Factory.java"

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

.field private final autoFlashHdrPlusGcamMeteringProcessorMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final bgaeRecommendationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;>;"
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

.field private final oneCameraDebugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraDebugHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final smartMeteringProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;",
            ">;",
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
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraDebugHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->autoFlashHdrPlusGcamMeteringProcessorMembersInjector:Ldagger/MembersInjector;

    .line 55
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->flashSettingProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p4, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->halRecommendsFlashProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p6, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->hdrPlusAvailabilityProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p7, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->bgaeRecommendationProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p8, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->smartMeteringProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p9, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->oneCameraDebugHelperProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p10, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 72
    return-void
.end method

.method public static create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;",
            ">;",
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
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraDebugHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;

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

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 15
    .line 1076
    iget-object v10, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->autoFlashHdrPlusGcamMeteringProcessorMembersInjector:Ldagger/MembersInjector;

    new-instance v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;

    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 1079
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->flashSettingProvider:Ljavax/inject/Provider;

    .line 1080
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/Observable;

    iget-object v3, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 1081
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/async/Observable;

    iget-object v4, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->halRecommendsFlashProvider:Ljavax/inject/Provider;

    .line 1082
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/async/Observable;

    iget-object v5, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->hdrPlusAvailabilityProvider:Ljavax/inject/Provider;

    .line 1083
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/async/Observable;

    iget-object v6, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->bgaeRecommendationProvider:Ljavax/inject/Provider;

    .line 1084
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/async/Observable;

    iget-object v7, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->smartMeteringProvider:Ljavax/inject/Provider;

    .line 1085
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/camera/async/Observable;

    iget-object v8, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->oneCameraDebugHelperProvider:Ljavax/inject/Provider;

    .line 1086
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/one/v2/OneCameraDebugHelper;

    iget-object v9, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1087
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/OneCameraDebugHelper;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V

    .line 1076
    invoke-static {v10, v0}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;

    .line 15
    return-object v0
.end method
