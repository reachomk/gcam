.class final Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "AutoFlashHdrPlusGcamMeteringProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private filter:Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/smartmetering/HysteresisFilter",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation
.end field

.field private final flashSupported:Z

.field private final lock:Ljava/lang/Object;

.field private final logEveryFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "AHDRSmrtMtrProc"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/OneCameraDebugHelper;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;",
            "Lcom/android/camera/one/v2/OneCameraDebugHelper;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    .line 63
    new-array v0, v3, [Lcom/google/android/apps/camera/async/Observable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    const/4 v1, 0x6

    .line 71
    invoke-virtual {p9}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getEvCompProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->allAsList([Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 72
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->flashSupported:Z

    .line 73
    invoke-virtual {p8}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->gcamSmartMeteringLogEveryFrame()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->logEveryFrame:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->lock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;

    invoke-direct {v0, v3}, Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->filter:Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;

    .line 79
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->filter:Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;

    .line 81
    invoke-interface {p3}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    .line 82
    invoke-interface {p5}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 83
    invoke-interface {p2}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    iget-boolean v4, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->flashSupported:Z

    .line 1161
    sget-object v5, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne v1, v5, :cond_1

    if-eqz v4, :cond_1

    .line 1162
    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    if-ne v0, v1, :cond_0

    if-eqz v3, :cond_0

    .line 1163
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    .line 79
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;->addInput(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void

    .line 1165
    :cond_0
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL_WITH_FLASH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_0

    .line 1168
    :cond_1
    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    if-ne v0, v1, :cond_2

    if-eqz v3, :cond_2

    .line 1169
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_0

    .line 1171
    :cond_2
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_0
.end method

.method private transform(Ljava/util/List;)Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v10, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 95
    const/4 v1, 0x4

    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    move-object v8, v0

    .line 97
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    .line 98
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/googlex/gcam/AeResults;

    move-object v9, v0

    .line 99
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 100
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    :goto_0
    new-instance v1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;

    iget-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->flashSupported:Z

    const/4 v4, 0x1

    .line 106
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    const/4 v6, 0x3

    .line 108
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;-><init>(ZLcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;ZZZ)V

    .line 114
    invoke-virtual {v9}, Lcom/google/googlex/gcam/AeResults;->getValid()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    iget-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->logEveryFrame:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->flashSupported:Z

    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    .line 117
    sget-object v2, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Camera doesn\'t have flash but HAL recommended flash."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    :cond_0
    sget-object v2, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-eq v8, v2, :cond_1

    sget-object v2, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-ne v8, v2, :cond_2

    .line 1191
    :cond_1
    iget-boolean v2, v1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusAvailable:Z

    if-nez v2, :cond_2

    .line 1194
    iget-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->flashSupported:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->halRecommendsFlash:Z

    if-eqz v2, :cond_5

    .line 1195
    sget-object v8, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL_WITH_FLASH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    .line 124
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->filter:Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;

    invoke-static {v1, v8}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;->decide(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;)Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;->addInput(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_2
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->filter:Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;->getCurrentOutput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    .line 139
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-boolean v2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->logEveryFrame:Z

    if-eqz v2, :cond_3

    .line 142
    sget-object v2, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Hysteresis filtered recommendation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_3
    return-object v1

    :cond_4
    move v7, v2

    .line 100
    goto/16 :goto_0

    .line 1197
    :cond_5
    :try_start_1
    sget-object v8, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 128
    :cond_6
    sget-object v2, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    .line 129
    sget-object v4, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->flashSupported:Z

    if-eqz v3, :cond_7

    .line 130
    sget-object v2, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL_WITH_FLASH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    .line 134
    :cond_7
    iget-object v3, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->filter:Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;->decide(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;)Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/camera/one/v2/smartmetering/HysteresisFilter;->addInput(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;->transform(Ljava/util/List;)Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    move-result-object v0

    return-object v0
.end method
