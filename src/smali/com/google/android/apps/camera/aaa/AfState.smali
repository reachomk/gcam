.class public final Lcom/google/android/apps/camera/aaa/AfState;
.super Ljava/lang/Object;
.source "AfState.java"


# instance fields
.field public final controlAfMode:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

.field public final controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

.field public final isSceneChangeDetected:Z

.field public final lensFocusDistance:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;FZ)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfMode:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 30
    iput-object p2, p0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    .line 31
    iput p3, p0, Lcom/google/android/apps/camera/aaa/AfState;->lensFocusDistance:F

    .line 32
    iput-boolean p4, p0, Lcom/google/android/apps/camera/aaa/AfState;->isSceneChangeDetected:Z

    .line 33
    return-void
.end method

.method public static inactiveState()Lcom/google/android/apps/camera/aaa/AfState;
    .locals 5

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/apps/camera/aaa/AfState;

    sget-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->OFF:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    sget-object v2, Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;->INACTIVE:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/camera/aaa/AfState;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;FZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p1, p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/google/android/apps/camera/aaa/AfState;

    if-nez v2, :cond_2

    move v0, v1

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    check-cast p1, Lcom/google/android/apps/camera/aaa/AfState;

    .line 67
    iget-object v2, p0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfMode:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    iget-object v3, p1, Lcom/google/android/apps/camera/aaa/AfState;->controlAfMode:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    iget-object v3, p1, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/apps/camera/aaa/AfState;->lensFocusDistance:F

    iget v3, p1, Lcom/google/android/apps/camera/aaa/AfState;->lensFocusDistance:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/apps/camera/aaa/AfState;->isSceneChangeDetected:Z

    iget-boolean v3, p1, Lcom/google/android/apps/camera/aaa/AfState;->isSceneChangeDetected:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfMode:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->getMetadataValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;->getMetadataValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/apps/camera/aaa/AfState;->lensFocusDistance:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/apps/camera/aaa/AfState;->isSceneChangeDetected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 80
    return v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfMode:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/camera/aaa/AfState;->lensFocusDistance:F

    iget-boolean v3, p0, Lcom/google/android/apps/camera/aaa/AfState;->isSceneChangeDetected:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x61

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "{controlAfMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", controlAfState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lensFocusDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSceneChangeDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
