.class public final Lcom/android/camera/one/v2/OneCameraDebugHelper;
.super Ljava/lang/Object;
.source "OneCameraDebugHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static DEFAULT_GCAM_BACKGROUND_AE_ENABLED:Z

.field private static INSTANCE:Lcom/android/camera/one/v2/OneCameraDebugHelper;

.field private static final INSTANCE_LOCK:Ljava/lang/Object;


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final systemProperties:Lcom/android/camera/util/SystemProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "OneCamDbgHpr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->DEFAULT_GCAM_BACKGROUND_AE_ENABLED:Z

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->INSTANCE:Lcom/android/camera/one/v2/OneCameraDebugHelper;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/util/SystemProperties;Lcom/android/camera/util/ApiHelper;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->systemProperties:Lcom/android/camera/util/SystemProperties;

    .line 115
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 116
    return-void
.end method

.method public static forceAutoHdrPlusConfig()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public static forceHdrPlusConfig()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method private final getBooleanValue(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 219
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->systemProperties:Lcom/android/camera/util/SystemProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/util/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return p2

    .line 224
    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    const/4 p2, 0x0

    goto :goto_0

    .line 226
    :cond_2
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 p2, 0x1

    goto :goto_0
.end method

.method private final getIntValue(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 251
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->systemProperties:Lcom/android/camera/util/SystemProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/util/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return p2

    .line 257
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final getKeyEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 237
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->systemProperties:Lcom/android/camera/util/SystemProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/util/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static instance()Lcom/android/camera/one/v2/OneCameraDebugHelper;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    sget-object v1, Lcom/android/camera/one/v2/OneCameraDebugHelper;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->INSTANCE:Lcom/android/camera/one/v2/OneCameraDebugHelper;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/camera/one/v2/OneCameraDebugHelper;

    invoke-static {}, Lcom/android/camera/util/SystemProperties;->instance()Lcom/android/camera/util/SystemProperties;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/camera/one/v2/OneCameraDebugHelper;-><init>(Lcom/android/camera/util/SystemProperties;Lcom/android/camera/util/ApiHelper;)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->INSTANCE:Lcom/android/camera/one/v2/OneCameraDebugHelper;

    .line 106
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    sget-object v0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->INSTANCE:Lcom/android/camera/one/v2/OneCameraDebugHelper;

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final disableHexagon()Z
    .locals 2

    .prologue
    .line 210
    const-string v0, "persist.gcam.hexagon.disabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final disableRawForTuning()Z
    .locals 2

    .prologue
    .line 189
    const-string v0, "persist.camera.tuning_noraw"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final enableGcamDebugMost()Z
    .locals 2

    .prologue
    .line 119
    const-string v0, "persist.gcam.debug"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final enableGcamSaveBase()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 123
    const-string v1, "persist.gcam.save_base"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    const-string v1, "persist.gcam.debug"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 123
    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final enableGcamSaveFinalOutput()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 147
    const-string v1, "persist.gcam.save_final_output"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6119
    const-string v1, "persist.gcam.debug"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final enableGcamSaveHal3Metadata()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 135
    const-string v1, "persist.gcam.save_hal3_metadata"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4119
    const-string v1, "persist.gcam.debug"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 135
    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final enableGcamSaveIntermediates()Z
    .locals 2

    .prologue
    .line 143
    const-string v0, "persist.gcam.save_intermediates"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final enableGcamSaveMetering()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    const-string v1, "persist.gcam.save_metering"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2119
    const-string v1, "persist.gcam.debug"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 127
    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final enableGcamSavePayload()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    const-string v1, "persist.gcam.save_payload"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3119
    const-string v1, "persist.gcam.debug"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 131
    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final enableGcamSaveText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 139
    const-string v1, "persist.gcam.save_text"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5119
    const-string v1, "persist.gcam.debug"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 139
    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final forceNexus2015TuningConfig()Z
    .locals 2

    .prologue
    .line 193
    const-string v0, "persist.camera.cam_component"

    const-string v1, "nexus2015_tuning"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getKeyEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final forceNexus2016TuningConfig()Z
    .locals 2

    .prologue
    .line 197
    const-string v0, "persist.camera.cam_component"

    const-string v1, "nexus2016_tuning"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getKeyEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final gcamBackgroundAeEnabled()Z
    .locals 2

    .prologue
    .line 180
    const-string v0, "persist.gcam.bgae.enabled"

    sget-boolean v1, Lcom/android/camera/one/v2/OneCameraDebugHelper;->DEFAULT_GCAM_BACKGROUND_AE_ENABLED:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final gcamGetMemoryMB()I
    .locals 2

    .prologue
    .line 185
    const-string v0, "persist.gcam.mem_mb"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final gcamIgnoreAeRegions()Z
    .locals 2

    .prologue
    .line 151
    const-string v0, "persist.gcam.ignore_ae_regions"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final gcamSmartMeteringDutyCycleDenominator()I
    .locals 2

    .prologue
    .line 175
    const-string v0, "persist.gcam.sm.denom"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final gcamSmartMeteringEnabled()Z
    .locals 2

    .prologue
    .line 155
    const-string v1, "persist.gcam.sm.enabled"

    .line 6163
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraDebugHelper;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 155
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 6163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gcamSmartMeteringForce()Z
    .locals 2

    .prologue
    .line 167
    const-string v0, "persist.gcam.sm.force"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final gcamSmartMeteringLogEveryFrame()Z
    .locals 2

    .prologue
    .line 171
    const-string v0, "persist.gcam.sm.log"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
