.class public Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;
.super Ljava/lang/Object;
.source "AutoFlashHdrPlusDecider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decide(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;)Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL_WITH_FLASH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-ne p1, v0, :cond_2

    .line 17
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->flashSupported:Z

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->flashSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne v0, v1, :cond_a

    .line 27
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    if-ne v0, v1, :cond_4

    .line 29
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    .line 93
    :cond_1
    :goto_1
    return-object p1

    .line 18
    :cond_2
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-ne p1, v0, :cond_0

    .line 20
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusAvailable:Z

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    goto :goto_0

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    if-ne v0, v1, :cond_5

    .line 32
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 35
    :cond_5
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-ne p1, v0, :cond_6

    .line 36
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 37
    :cond_6
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-ne p1, v0, :cond_8

    .line 39
    :cond_7
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 41
    :cond_8
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusAvailable:Z

    if-eqz v0, :cond_9

    .line 42
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 44
    :cond_9
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 48
    :cond_a
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->flashSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne v0, v1, :cond_e

    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    if-ne v0, v1, :cond_b

    .line 51
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL_WITH_FLASH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 52
    :cond_b
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    if-ne v0, v1, :cond_c

    .line 54
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 57
    :cond_c
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL_WITH_FLASH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-eq p1, v0, :cond_1

    .line 61
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusAvailable:Z

    if-eqz v0, :cond_d

    .line 62
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 64
    :cond_d
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL_WITH_FLASH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 68
    :cond_e
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->flashSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->AUTO:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne v0, v1, :cond_12

    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    if-ne v0, v1, :cond_10

    .line 72
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->flashSupported:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->halRecommendsFlash:Z

    if-eqz v0, :cond_f

    .line 73
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL_WITH_FLASH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 75
    :cond_f
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_1

    .line 77
    :cond_10
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    if-ne v0, v1, :cond_1

    .line 81
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-eq p1, v0, :cond_1

    .line 85
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    if-ne p1, v0, :cond_11

    .line 86
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto/16 :goto_1

    .line 88
    :cond_11
    sget-object p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto/16 :goto_1

    .line 96
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown flash setting!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static provideAutoFlashHdrPlusDecision(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;)Lcom/google/android/apps/camera/async/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2173
    return-object p0
.end method

.method public static provideAutoFlashHdrPlusNotification()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3079
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static provideAutoFlashHdrPlusNotification(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2212
    return-object p0
.end method

.method public static provideGcamAeResults(Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;)Lcom/google/android/apps/camera/async/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2205
    return-object p0
.end method

.method public static provideGcamAutoHdrPlusRecommendation(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2199
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/AutoHdrPlusGcamRecommendation;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/one/v2/smartmetering/AutoHdrPlusGcamRecommendation;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;)V

    return-object v0
.end method

.method public static provideMeteringData()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3067
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$MeteringData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$MeteringData;-><init>()V

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static provideMeteringData(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2179
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$HdrPlusGcamMeteringModule$1;

    invoke-direct {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$HdrPlusGcamMeteringModule$1;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public shouldAccept(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1025
    if-nez p1, :cond_0

    move v0, v2

    .line 1048
    :goto_0
    return v0

    .line 1028
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1029
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1031
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    .line 1032
    goto :goto_0

    .line 1038
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x5

    .line 1039
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    .line 1040
    goto :goto_0

    .line 1044
    :cond_4
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 1045
    goto :goto_0

    .line 1048
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method
