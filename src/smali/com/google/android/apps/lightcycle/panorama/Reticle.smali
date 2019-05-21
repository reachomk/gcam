.class public final Lcom/google/android/apps/lightcycle/panorama/Reticle;
.super Ljava/lang/Object;
.source "Reticle.java"


# instance fields
.field private finished:Z

.field private initialized:Z

.field private reticleCoord:Landroid/graphics/Point;

.field private reticleSprites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/lightcycle/opengl/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private spriteIndex:I

.field private startTime:J

.field private transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/sensor/SensorReader;II)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->spriteIndex:I

    .line 31
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    .line 32
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->finished:Z

    .line 33
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->initialized:Z

    .line 47
    :try_start_0
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    .line 57
    :cond_0
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 66
    :goto_1
    if-ge v1, v7, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v4}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    aget v4, v3, v1

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v4, v5, v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0

    .line 73
    :cond_1
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->getWidth()I

    move-result v1

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->getHeight()I

    move-result v0

    .line 78
    new-instance v3, Landroid/graphics/Point;

    div-int/lit8 v4, p3, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    div-int/lit8 v4, p4, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    invoke-direct {v3, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleCoord:Landroid/graphics/Point;

    .line 81
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->finished:Z

    .line 82
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->initialized:Z

    .line 84
    return-void

    .line 57
    :array_0
    .array-data 4
        0x7f0200a9
        0x7f0200a6
        0x7f0200a7
        0x7f0200a8
        0x7f0200a9
    .end array-data
.end method


# virtual methods
.method public final countdownFinished()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->finished:Z

    return v0
.end method

.method public final countdownRunning()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    return v0
.end method

.method public final draw([FF)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x303

    const/4 v7, 0x0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const/4 v6, 0x1

    .line 95
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->initialized:Z

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    if-eqz v0, :cond_1

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->startTime:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    .line 1198
    int-to-long v0, v0

    const-wide/16 v2, 0x190

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->spriteIndex:I

    .line 1201
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->spriteIndex:I

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 1202
    iput-boolean v7, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    .line 1203
    iput-boolean v6, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->finished:Z

    .line 1204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->startTime:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    .line 1205
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getNumGyroSamples()I

    move-result v1

    .line 1206
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    move-result-object v2

    .line 1208
    invoke-static {v2, v1, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->endGyroCalibration([FII)[F

    move-result-object v0

    .line 1209
    aget v1, v0, v7

    aget v2, v0, v6

    const/4 v3, 0x2

    aget v3, v0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x38

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Bias : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1210
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setGyroBias([F)V

    .line 1211
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->spriteIndex:I

    .line 105
    :cond_1
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 109
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    if-nez v0, :cond_2

    .line 114
    const/16 v0, 0x302

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->spriteIndex:I

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleCoord:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleCoord:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 122
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotatedCentered([FFFF)V

    goto/16 :goto_0

    .line 117
    :cond_2
    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    goto :goto_1
.end method

.method public final freeGLMemory()V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->reticleSprites:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 184
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->freeGLMemory()V

    .line 192
    :cond_2
    return-void
.end method

.method public final resetCountdown()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    .line 161
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->finished:Z

    .line 162
    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->spriteIndex:I

    .line 163
    return-void
.end method

.method public final startCountdown()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->resetGyroBias()V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->startTime:J

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->startGyroCalibration(F)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->finished:Z

    goto :goto_0
.end method

.method public final stopCountdown()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 145
    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->spriteIndex:I

    .line 146
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getNumGyroSamples()I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    move-result-object v1

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->startTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 152
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->endGyroCalibration([FII)[F

    .line 153
    iput-boolean v6, p0, Lcom/google/android/apps/lightcycle/panorama/Reticle;->running:Z

    goto :goto_0
.end method
